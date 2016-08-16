package pro.niit.petshop.model;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.springframework.web.multipart.MultipartFile;

public class FileUpload {
	
	public static void upload( MultipartFile multipartFile, String name) {

		if (!multipartFile.isEmpty()) {			
				BufferedOutputStream stream;
				try {
					byte[] bytes = multipartFile.getBytes();
					String path="F:/assets/images/";

					File dir = new File(path + File.separator + "products");
					if (!dir.exists()){
						dir.mkdirs();}

					// Create the file on server
					File file = new File(dir.getAbsolutePath() + File.separator + name);
					stream = new BufferedOutputStream(new FileOutputStream(file));
					stream.write(bytes);
					stream.close();
					String fileLocation = file.getAbsolutePath();
					System.out.println(fileLocation);	
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			}
	


}