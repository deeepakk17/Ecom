package org.niit.dbconnect.model;

import org.springframework.web.multipart.MultipartFile;

public class FileUpload {

	MultipartFile multipartFile;

	public MultipartFile getMultipartFile() {
		return multipartFile;
	}

	public void setMultipartFile(MultipartFile multipartFile) {
		this.multipartFile = multipartFile;
	}
	
	
}
