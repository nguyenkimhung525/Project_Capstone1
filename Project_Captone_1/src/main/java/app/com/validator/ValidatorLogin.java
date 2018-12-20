package app.com.validator;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import app.com.entities.Login;

public class ValidatorLogin implements Validator {
	private static final String LOGIN="^[a-zA-Z0-9]+$";

	public boolean CHECK_LOGIN(String name) {
		return Pattern.matches(LOGIN, name);
	}
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Login.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Login login=(Login)target;
		String use=login.getUsername();
		String pass=login.getPassword();
		ValidationUtils.rejectIfEmpty(errors, "username", "Username.required");
		ValidationUtils.rejectIfEmpty(errors, "password", "Password.required");

		if(use.trim().length()!=0 || !use.equals("") || pass.trim().length()!=0 || !pass.equals("")) {
			if(!this.CHECK_LOGIN(use) || !this.CHECK_LOGIN(pass))errors.rejectValue("username","Username.Required");
		}
		
	}

}
