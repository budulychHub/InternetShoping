package ua.com.internetShop.service;

public interface MailSenderService {

	
	void sendMail(String content, String mailBody, String email);
	
}
