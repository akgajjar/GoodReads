package com.goodreads.serviceImpl;

import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.goodreads.bin.ForgotPassword;
import com.goodreads.bin.user_master;
import com.goodreads.dao.User_masterDao;
import com.goodreads.service.User_masterService;

public class User_masterServiceImpl implements User_masterService {

	User_masterDao udao;

	@Override
	public void setUdao(User_masterDao udao) {
		this.udao = udao;
	}

	@Override
	public void saveUser(user_master u) {
		udao.saveUser(u);
	}

	@Override
	public void updateUser(user_master u) {
		udao.updateUser(u);
	}

	@Override
	public void deleteUser(user_master u) {
		udao.deleteUser(u);
	}

	@Override
	public user_master getByU_Id(int U_Id) {
		return udao.getByU_Id(U_Id);
	}

	@Override
	public List<user_master> getUsers() {
		return udao.getUsers();
	}

	@Override
	public user_master Check_Login(String U_Email, String U_Password) {
		return udao.Check_Login(U_Email, U_Password);
	}

	@Override
	public void Update_Block_Status(int U_Id, boolean status) {
		udao.Update_Block_Status(U_Id, status);
	}
	@Override
	public String sendotp(String email) {
		ForgotPassword fpass = fetchEmailData(email);
		if (fpass != null) {

			final String Senderid = "goodreads.daiict@gmail.com";
			final String password = "goodreads1234";

			Properties props = new Properties();
			props.put("mail.smtp.auth", "true");

			props.put("mail.smtp.starttls.enable", "true");

			props.put("mail.smtp.host", "smtp.gmail.com");

			props.put("mail.smtp.port", "587");

			Session session = Session.getInstance(props, new Authenticator() {

				protected PasswordAuthentication getPasswordAuthentication() {

					return new PasswordAuthentication(Senderid, password);

				}

			});

			try {

				Random rand = new Random();

				int otp = rand.nextInt(900000) + 100000;
				Message message = new MimeMessage(session);

				message.setFrom(new InternetAddress(Senderid));

				message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(fpass.getEmail())); // mail
				message.setSubject("OTP Request");

				String msg1 = "<!DOCTYPE html><html><head></head><body><center><div style='background-color:#f1f1f1; width:500px; height:200px'><div style='background-color:#1db1fa; width:500px; height:50px'><h3 style='color:white; padding-top:10px;'>Goodreads </h3></div><p style='color:gray; margin-left:-300px;'>Dear "

						+ fpass.getName() + ",</p><br><p style='color:gray; margin-top:-10px;'>" + otp

						+ "  is your One Time Password.Do NOT share this code with anyone for security reasons.this is valid for 10 minutes.</p><div></center></body></html>";

				message.setContent(msg1, "text/html; charset=utf-8");

				Transport.send(message);

				return String.valueOf(otp);

			} catch (Exception e) {
				e.printStackTrace();
				return "Otp Not Send";
			}

		} else {
			return "Email Address Not Valid";
		}
	}
	@Override
	public ForgotPassword fetchEmailData(String email) {
		return udao.fetchEmailData(email);
	}

	@Override
	public user_master getByEmailId(String email) {
		return udao.getByEmailId(email);
	}
	
	@Override
	public void UpdatePassword(String email,String password) {
		user_master u = getByEmailId(email);
		u.setU_Password(password);
		udao.updateUser(u);
	}
	
}
