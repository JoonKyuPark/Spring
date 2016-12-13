package com.jobis.mem.resume.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.jobis.mem.login.domain.Mem_LoginVO;
import com.jobis.mem.resume.domain.Mem_Resume_fileDTO;
import com.jobis.mem.resume.domain.Mem_Resume_fileVO;
import com.jobis.mem.resume.service.Mem_ResumeService;
import com.jobis.mem.util.MediaUtils;
import com.jobis.mem.util.UploadFileUtils;

@Controller
@RequestMapping("/resume/file")
public class UploadController {
   
   @Inject
   Mem_ResumeService resume_Service;

   
   @Resource(name = "uploadPath") // 서블릿 컨텍스트에 써있는 이름을 가진 value를 가져옴 (컨테이너)
   private String uploadPath;

   @RequestMapping(value = "/upload", method = RequestMethod.GET)
   public String upload() {
      return "/resume/upload";
   }

   @ResponseBody
   @RequestMapping(value = "/upload", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
   public void upload(MultipartFile file, @RequestParam("p_no") String p_no,   HttpSession session) throws Exception {
      ResponseEntity<String> uploadFile = new ResponseEntity<String>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.CREATED);
      Mem_Resume_fileDTO fileDTO = new Mem_Resume_fileDTO();
      String fileFullName = file.getOriginalFilename();
      String file_extension = fileFullName.substring(fileFullName.lastIndexOf(".")+1);
      String file_name = fileFullName.substring(0,fileFullName.lastIndexOf("."));
      String parent_no =  p_no;
      
      if (parent_no == null) parent_no = "0";
      System.out.println(session.getAttribute("member_infor"));
      Mem_LoginVO vo = (Mem_LoginVO) session.getAttribute("member_infor");
      fileDTO.setMember_no(vo.getMember_no());
      fileDTO.setFile_parent(parent_no);
      fileDTO.setFile_route(uploadFile.getBody());
      fileDTO.setFile_name(file_name);
      fileDTO.setFile_extension(file_extension);
      
      resume_Service.mem_Resume_file_create(fileDTO);
   }

   // 파일 다운로드

   @ResponseBody
   @RequestMapping("/displayFile")
   public ResponseEntity<byte[]> displayFile(@RequestParam("fileName") String fileName) throws Exception {
      InputStream in = null;
      ResponseEntity<byte[]> entity = null;

      try {

         String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);
         MediaType mType = MediaUtils.getMediaType(formatName);
         HttpHeaders headers = new HttpHeaders();
         in = new FileInputStream(uploadPath + fileName);

         if (mType != null) {
            headers.setContentType(mType);
         } else {

            fileName = fileName.substring(fileName.indexOf("_") + 1);
            headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
            headers.add("Content-Disposition", "attachment; filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");
         }

         entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
      } catch (Exception e) {
         e.printStackTrace();
         entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
      } finally {
         in.close();
      }
      return entity;
   }
   
   
   
   
   
   @ResponseBody
   @RequestMapping(value="list", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
   public List<Mem_Resume_fileVO> fileVOList(@RequestParam String file_no,  HttpSession session){
      
      List<Mem_Resume_fileVO> fileList = null;
      Mem_Resume_fileVO fileVO = new Mem_Resume_fileVO();
      
      
      fileVO.setFile_parent(file_no);
      Mem_LoginVO vo = (Mem_LoginVO) session.getAttribute("member_infor");
      fileVO.setMember_no(vo.getMember_no());
      fileList = resume_Service.mem_Resume_file_list(fileVO);
      return fileList;
   }
   
   
   @ResponseBody
   @RequestMapping(value="fileParent", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
   public int sendFileParent(@RequestParam("file_no") String file_no){
      int f_no = Integer.parseInt(file_no);
      return resume_Service.mem_Resume_fileparent_select(f_no);
   }
   
   
   @ResponseBody
   @RequestMapping(value="folderCreate", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
   public void folderCreate(Mem_Resume_fileDTO fileDTO,HttpSession session){
      
      Mem_LoginVO vo = (Mem_LoginVO) session.getAttribute("member_infor");
      fileDTO.setMember_no(vo.getMember_no());
      String parent_no =  fileDTO.getFile_parent();
      if (parent_no == null) parent_no = "0";
      fileDTO.setFile_parent(parent_no);
      resume_Service.mem_Resume_file_create(fileDTO);
   }
   
   
   
   @ResponseBody
   @RequestMapping(value="deleteFile", method=RequestMethod.POST,  produces="application/json;charset=UTF-8")
   public void fileDelete(@RequestParam("file_no") String file_no,HttpSession session){
      Mem_Resume_fileDTO fileDTO = new Mem_Resume_fileDTO();
      int f_no = Integer.parseInt(file_no);
      fileDTO.setFile_no(f_no);
      Mem_LoginVO vo = (Mem_LoginVO) session.getAttribute("member_infor");
      fileDTO.setMember_no(vo.getMember_no());
      resume_Service.mem_Resume_file_delete(fileDTO);
   }
   }