package service;

public interface MailService {
	
	public boolean send(String subject, String text, String to);

}
