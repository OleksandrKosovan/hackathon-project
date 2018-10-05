package ua.com.young_dream.project.service;

public interface MailSenderService {

	void sendMail(String content, String mailBody, String email);
}
