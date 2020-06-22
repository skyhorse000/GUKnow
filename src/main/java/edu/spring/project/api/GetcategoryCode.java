package edu.spring.project.api;

import java.io.ByteArrayOutputStream;

import java.io.InputStream;
import java.net.URL;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class GetcategoryCode {
	private static final Logger logger =			
			LoggerFactory.getLogger(GetcategoryCode.class);
	
	@RequestMapping(value = "/getcategoryCode", method = RequestMethod.POST, produces = "application/text;charset=UTF-8")
	public String getcatagoryCode() throws Exception {
		
		
		
		String addr = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/categoryCode?ServiceKey=";
		String ServiceKey = "%2BcJjcuh7almtPUj9FTeoxMigwvD6%2BV4XxokSyfl3P4YRy4J5H9MCI9%2FODbi9cqJJWoDm2sAYnlqBK8yG5JJVZg%3D%3D";
		String parameter ="";
		
		
		parameter = parameter + "&" + "MobileOS=ETC"; 
		parameter = parameter + "&" + "MobileApp=testApp";
		parameter = parameter + "&" + "numOfRows=100";
		parameter = parameter + "&" + "_type=json";
		
		addr = addr + ServiceKey + parameter;
		
		
		URL url = new URL(addr);
			
		logger.info(addr);
		
		InputStream in = url.openStream();
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
	    IOUtils.copy(in, bos);
	    in.close();
	    bos.close();
	    
	    String mbos = bos.toString("UTF-8");
	    logger.info("mbos"+mbos);
	    
	    byte[] b = mbos.getBytes();
	    String s = new String(b);
	    
	    JSONObject json = new JSONObject();	    
	    json.put("data", s);
		
	    logger.info("s"+s);
	    
	    return s;
	    	
	}
	
	
	
}
