package com.flow.services.captcha;

import org.springframework.stereotype.Service;

import com.octo.captcha.service.image.DefaultManageableImageCaptchaService;
import com.octo.captcha.service.image.ImageCaptchaService;

@Service
public class CaptchaServiceSingleton {
	
	private static ImageCaptchaService instance = new DefaultManageableImageCaptchaService();
	 
    public static ImageCaptchaService getInstance(){
        return instance;
    }
}
