package com.anotherclass.bitcamp.controller.fileupload;

import java.io.File;
import java.io.InputStream;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

@Controller
public class FileController {
		
	@PostMapping(value="creator/imageUploadUrl" , produces="application/json")
	@ResponseBody
	public JsonObject uploadFileUpload(@RequestParam("file") MultipartFile mulitpartFile) {
		
		JsonObject jsonOb = new JsonObject();
		String path ="D:\\image\\test\\"; // 경로설정	
		String originFileName = mulitpartFile.getOriginalFilename(); //파일이름
		String extension = originFileName.substring(originFileName.lastIndexOf(".")); 
		String saveFileName = UUID.randomUUID() + extension; // 저장되는 파일명  랜덤 + 파일명
		File targetFile = new File(path+saveFileName);
		System.out.println(targetFile);
		try {
			InputStream fileStream = mulitpartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);
			jsonOb.addProperty("url", "/testing/"+saveFileName);
			jsonOb.addProperty("responseCode", "success");
			System.out.println("파일업로드 작동중");
		}catch(Exception e){
			FileUtils.deleteQuietly(targetFile);
			System.out.println("파일업로드 실패");
			jsonOb.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		
		return jsonOb;
	}
}
