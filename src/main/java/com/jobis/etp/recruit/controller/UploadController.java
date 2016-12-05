package com.jobis.etp.recruit.controller;

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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.jobis.etp.recruit.domain.Etp_RecruitVO;
import com.jobis.etp.recruit.domain.Etp_mem_uploadDTO;
import com.jobis.etp.recruit.domain.Etp_mem_uploadVO;
import com.jobis.etp.recruit.service.Etp_RecuritService;
import com.jobis.etp.recruit.util.UploadFileUtils.MediaUtils;
import com.jobis.etp.recruit.util.UploadFileUtils.UploadFileUtils;

@Controller
@RequestMapping("/etp/etp_log")
public class UploadController {

	@Inject
	private Etp_RecuritService service;

	@Resource(name = "uploadPath")
	private String uploadPath;

	private String mem_id = "god31225";

	@RequestMapping(value = "/uploadAjax", method = RequestMethod.GET)
	public void uploadAjax() {

	}

	@ResponseBody
	@RequestMapping(value = "/uploadAjax", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file) throws Exception {

		return new ResponseEntity<String>(
				UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()),
				HttpStatus.CREATED);
	}

	// 파일 다운로드

	@ResponseBody
	@RequestMapping("/displayFile")
	public ResponseEntity<byte[]> displayFile(String fileName) throws Exception {

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
				headers.add("Content-Disposition",
						"attachment; filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");

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

	@RequestMapping("/filebox")
	public void FileTree() {

	}

	// , HttpSession session
	@ResponseBody
	@RequestMapping(value = "/subDataInput", method = RequestMethod.GET)
	public ResponseEntity<String> insertUploadFile(Etp_mem_uploadDTO dto) throws Exception {
	

		// 세션
		/*
		 * Mem_LoginVO mem = (Mem_LoginVO)session.getAttribute("member_no"); int
		 * member_no= mem.getMember_no(); member_no =1;
		 * System.out.println("세션후");
		 */
		// 회원번호

		dto.setMember_no(1);
		// 현재자신이 가지고 있는 부모값
		System.out.println("부모값"+dto.getFile_parent());
		System.out.println("부모값"+dto.getFile_extension());
		System.out.println("부모값"+dto.getFile_name());
		System.out.println("부모값"+dto.getFile_route());
		
		
		ResponseEntity<String> entity = null;

		try {
			service.InsertMem_Upload(dto);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>("FAIL : " + e.getMessage(), HttpStatus.BAD_REQUEST);
		}

		return entity;

	}
	
	
	

	@ResponseBody
	@RequestMapping(value = "/AlluploadData", method = RequestMethod.GET)
	public List<Etp_mem_uploadVO> list(Etp_mem_uploadDTO dto) throws Exception {

		List<Etp_mem_uploadVO> entity = null;

		
		
		int bno = 1;
		dto.setMember_no(1);

		entity = service.UploadList(dto);

		System.out.println(entity);

		return entity;

	}
	
	@ResponseBody
	@RequestMapping(value = "/subUploadData", method = RequestMethod.GET)
	public List<Etp_mem_uploadVO> sublist(Etp_mem_uploadDTO dto) throws Exception {

		

		
		List<Etp_mem_uploadVO> entity = null;

		int bno = 1;
		dto.setMember_no(1);

		entity = service.UploadList(dto);
		
		System.out.println();
		
		return entity;

	}
	
	
	@ResponseBody
	@RequestMapping(value = "/gobackUpload", method = RequestMethod.GET)
	public int gobackList(Etp_mem_uploadDTO dto) throws Exception {



		int bno = 1;
		dto.setMember_no(1);

		int b2 = service.gobackList(dto);
		
		System.out.println("백 넘버"+b2);
		
		
		return  b2;

	}
	
	
	

}