package com.bam.auth;

import com.github.scribejava.core.builder.api.DefaultApi20;

import lombok.Data;

@Data
public class SnsValue implements SnsUrl{
	private String service;
	private String clientId;
	private String clientSecret;
	private String redirectUrl;
	private DefaultApi20 api20Instance;
	private String profileUrl;
	
	private boolean isNaver;
	
	public SnsValue(String service) {
		this.service = service;
		//this.clientId = "[클라이언트 아이디]";
		//this.clientSecret = "[시크릿 키]";
		//this.redirectUrl = "https://3.35.93.88:8443/login/naver/callback";
		this.clientId = "dJm1Vk_5EICTBvv2wmMN";
		this.clientSecret = "EPA15VyeXa";
		this.redirectUrl = "http://localhost:8080/login/naver/callback";
		if(service.equals("naver")) this.isNaver = true;
		if(isNaver) {
			this.api20Instance = NaverApi20.instance();
			this.profileUrl = NAVER_PROFILE_URL;			
		}
	}
}
