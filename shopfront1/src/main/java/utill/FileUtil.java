package utill;




import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;



public class FileUtil {
	private static final String ABS_PATH = "C:\\Users\\ajay\\eclipse-workspace\\shopfront1\\src\\main\\webapp\\resources\\images\\";
	private static String REAL_PATH = null;
	private static final Logger logger = LoggerFactory.getLogger(FileUtil.class);
	
	public static void uploadFile(HttpServletRequest request, MultipartFile file, String code) 
	{				
		
		REAL_PATH = request.getSession().getServletContext().getRealPath("/assets/images/");
		logger.info(REAL_PATH);
		
		if(!new File(ABS_PATH).exists()) {
			new File(ABS_PATH).mkdirs();
		}
		
		if(!new File(REAL_PATH).exists()) {
			new File(REAL_PATH).mkdirs();
		}
		
		try {
			file.transferTo(new File(REAL_PATH + code + ".jpg"));
			file.transferTo(new File(ABS_PATH + code + ".jpg"));
			
		} catch (IOException e) {
			System.out.println(e);
			System.out.println("error occured");
		}
}
}