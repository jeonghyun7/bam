package com.bam.service.index;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Service;

@Service
public class InstaServiceImpl implements InstaService{
	
	private static final String url = "https://graph.instagram.com/me/media?media-id=799509468041182&fields=media_url,%20permalink,%20timestamp,%20caption&access_token=IGQVJVOXpjT2tEclZANRkJiZAU1zWDBpX2ljLU9jTlhxd0tHRjA3QjlHQWtaX2F2NW11OV9pTWQ3NzVJTTJETk10aWdyQ1NsY2JWVGZAwNnRabWJ5V3ptUWpJN1VTaXUzcW9oU2xVQVFITm9MZAXhzUlBkXwZDZD";
	//private static final String url = "https://graph.instagram.com/me/media?media-id=[아이디]&fields=media_url,%20permalink,%20timestamp,%20caption&access_token=[토큰]";
	
	public String getHttpHTML_GET() {
		try {
			URL object = new URL(url);
			HttpURLConnection con = (HttpURLConnection)object.openConnection();
			con.setRequestMethod("GET");
			con.setConnectTimeout(3000); // 연결 타임아웃 3초
			con.setReadTimeout(3000); // 읽기 타임아웃 3초
			
			System.out.println("$$메서드"+con.getRequestMethod());
			System.out.println("$$타입"+con.getContentType());
			System.out.println("$$코드"+con.getResponseCode());
			System.out.println("$$응답메시지"+con.getResponseMessage());
			
			try {
				InputStream is = con.getInputStream();

				ByteArrayOutputStream baos = new ByteArrayOutputStream();
				
				byte[] buf = new byte[1024*8];
				int length = 0;
				while((length = is.read(buf)) != -1) {
					baos.write(buf, 0, length);
				}
				//System.out.println(new String(baos.toByteArray(), "UTF-8"));
				
				System.out.println("$$baos : "+baos);
				String jsonArray = baos.toString("UTF-8");
				jsonArray = jsonArray.replaceAll("\\\\/", "/");
				System.out.println("$$test : "+jsonArray);
				return jsonArray;
			}catch(Exception e) {
				e.printStackTrace();
			}
			con.disconnect();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}



}
