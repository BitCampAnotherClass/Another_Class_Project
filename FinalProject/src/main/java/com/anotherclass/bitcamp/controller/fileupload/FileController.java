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
		
	@PostMapping(value="/uploadImageFile" , produces="application/json")
	@ResponseBody
	public JsonObject uploadFileUpload(@RequestParam("file") MultipartFile mulitpartFile) {
		
		JsonObject jsonOb = new JsonObject();
		String path ="C:\\imgimg\\test\\";
		//String path = "https://sung3moon.synology.me:49583/";
		String originFileName = mulitpartFile.getOriginalFilename();
		String extension = originFileName.substring(originFileName.lastIndexOf("."));
		String saveFileName = UUID.randomUUID() + extension;
		File targetFile = new File(path+saveFileName);
		try {
			InputStream fileStream = mulitpartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);
			jsonOb.addProperty("url", "/testing/"+saveFileName);
			jsonOb.addProperty("responseCode", "success");
		}catch(Exception e){
			FileUtils.deleteQuietly(targetFile);
			jsonOb.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		
		return jsonOb;
	}
}
