package com.jobis.etp.join.controller;




import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.etp.join.service.Etp_JoinServiceImpl;

@Controller
@RequestMapping("/mypage/etp/*")
public class Etp_JoinController {
	
	@Inject
	private Etp_JoinServiceImpl JoinService;
	@Resource(name="uploadPath")
	private String uploadPath;

	@RequestMapping(value = "/join/etp", method = RequestMethod.POST)
	public String etp_Etp_JoinController_login(Etp_JoinVO joinVo, Model model) {
		  JoinService.Etp_joinService_create(joinVo);
		return "login";

	}
	
	//////////////////////
	@RequestMapping(value="/Etp_Info_ReadForm", method = RequestMethod.GET)
	public void etp_info_read(@RequestParam int etp_no,Model model)throws Exception{
		model.addAttribute("Etp_JoinVO", JoinService.etp_info_read(etp_no));
	}
	
	@RequestMapping(value="/Etp_Info_UpdateForm", method = RequestMethod.GET)
	public String etp_info_updatePOST(@RequestParam Integer etp_no,Model model)throws Exception{
		Etp_JoinVO vo = JoinService.etp_info_read(etp_no);

		//System.out.println(vo.toString());
		
		model.addAttribute("Etp_JoinVO", vo);
		
		return "/mypage/etp/Etp_Info_UpdateForm";
	}
	
	@RequestMapping(value="/Etp_Info_UpdateForm", method = RequestMethod.POST)
	public String etp_info_updatePOST(Etp_JoinVO vo)throws Exception{
		//vo.setEtp_no(3);
		JoinService.etp_info_update(vo);
		System.out.println("1");
		return "redirect:/mypage/etp/Etp_Info_UpdateForm";
	}
	
	@RequestMapping(value="/Etp_Info_Logo", method = RequestMethod.GET)
	public void Etp_Info_logoGET(){
		
	}
	
	@ResponseBody
    @RequestMapping("/displayFile")
	public ResponseEntity<byte[]> displayFile(@RequestParam("fileName") String fileName, HttpServletRequest request)
			throws Exception {
		ResponseEntity<byte[]> entity = null;
		InputStream in = null;
		System.out.println("1");
		try {
			HttpHeaders headers = new HttpHeaders();
			in = new FileInputStream(uploadPath + "\\" + fileName);

			headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			headers.add("Content-Disposition",
					"attachment; filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");

			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
		System.out.println("2");
		return entity;
	}
	
	@RequestMapping(value="/Etp_RecruitList", method = RequestMethod.GET)
	public void etp_recruitListGET()throws Exception{
		
	}
	

	
	/*
	 @ResponseBody
	   @RequestMapping(value="/Etp_Info_Logo", method=RequestMethod.POST, produces="text/plain;charset=UTF-8")
	   public ResponseEntity<String> uploadAjax(MultipartFile file)throws Exception{
	      System.out.println("orginalName:"+file.getOriginalFilename());
	      System.out.println("size:"+file.getSize());
	      System.out.println("contentType:"+file.getContentType());
	      
	      //return new ResponseEntity<String>(file.getOriginalFilename(), HttpStatus.CREATED);
	      return new ResponseEntity<String>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.CREATED);
	   }*/
	
			
	/*
	@RequestMapping(value="/Etp_Info_Logo", method = RequestMethod.GET)
	public void uploadAjax(){
		
	}
	
	@RequestMapping(value="/Etp_Info_Logo", method=RequestMethod.POST, produces="text/plain;charset=UTF-8")
	 public ResponseEntity<String> uploadAjax(MultipartFile file)throws Exception{
	      System.out.println("orginalName:"+file.getOriginalFilename());
	      System.out.println("size:"+file.getSize());
	      System.out.println("contentType:"+file.getContentType());
	      
	      //return new ResponseEntity<String>(file.getOriginalFilename(), HttpStatus.CREATED);
	      return new ResponseEntity<String>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.CREATED);
	   }*/
	
	
}