package com.javaclass.controller.user;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("admin")
@Controller
public class FileController {
	 @RequestMapping(value = "fileDownload.do")
	    public void fileDownload4(HttpServletRequest request,HttpServletResponse response) throws Exception {
	        //String path =  request.getSession().getServletContext().getRealPath("저장경로");
	        
		 
		 	request.setCharacterEncoding("UTF-8");
	        String filename =request.getParameter("fileName");
	        String realFilename="";
	        System.out.println(filename);

	        realFilename = "C:\\Users\\kimja\\Git\\semiProject\\src\\main\\webapp\\resources\\upload\\" + filename;
	        System.out.println("realFilename>"+realFilename);
	        File file1 = new File(realFilename);
	        if (!file1.exists()) {
	            return ;
	        }
	         
	        // 파일명 지정        
	        response.setContentType("application/octer-stream");
	        response.setHeader("Content-Transfer-Encoding", "binary;");
	        response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
	        try {
	            OutputStream os = response.getOutputStream();
	            FileInputStream fis = new FileInputStream(realFilename);
	 
	            int ncount = 0;
	            byte[] bytes = new byte[512];
	 
	            while ((ncount = fis.read(bytes)) != -1 ) {
	                os.write(bytes, 0, ncount);
	            }
	       
	            fis.close();
	            os.close();
	        } catch (Exception e) {
	            System.out.println("FileNotFoundException : " + e);
	        }
	  }
}
