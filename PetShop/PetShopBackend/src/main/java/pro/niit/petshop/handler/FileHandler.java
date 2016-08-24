package pro.niit.petshop.handler;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.springframework.web.multipart.MultipartFile;


public class FileHandler {

	
	public static void upload(String path,MultipartFile multipartFile,String name ) {
		if (!multipartFile.isEmpty()) {
			InputStream inputStream=null;
			OutputStream outputStream= null;
			if(multipartFile.getSize()>0){
				try{
				inputStream=multipartFile.getInputStream();
				outputStream= new FileOutputStream(path+name);
				int bytes=0;
				byte[] buffer=new byte[1024];
				while((bytes=inputStream.read(buffer,0,1024))!= -1) {
					outputStream.write(buffer, 0, bytes);
				}
				}
				
			catch (Exception e) {
				e.printStackTrace();
			}finally {
				
				try {
					outputStream.close();
					inputStream.close();
					
				}catch (IOException e){
					e.printStackTrace();
				}
			}
		}
	}
		
	}
	
	
		}

	

