package view;

import java.io.Serializable;

public class ViewLogin implements Serializable{
	private static final long serialVersionUID = -399317143370090884L;
	
	private String username;
	private String password;
	
	private String errorMessage;

	public ViewLogin() {
		
	}

	public ViewLogin(String username, String password, String errorMessage) {
		this.username = username;
		this.password = password;
		this.errorMessage = errorMessage;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	
	
	

}
