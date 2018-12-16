package app.com.validator;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import app.com.entities.Customer;
import app.com.entities.DetailTourForm;

public class ProcessValidator implements Validator{

	private static final String NAME="^\\s*[a-zA-Z,\\s]+\\s*$";
	private static final String EMAIL="^((([!#$%&'*+\\-/=?^_`{|}~\\w])|([!#$%&'*+\\-/=?^_`{|}~\\w][!#$%&'*+\\-/=?^_`{|}~\\.\\w]{0,}[!#$%&'*+\\-/=?^_`{|}~\\w]))[@]\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*)$";

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Customer.class.isAssignableFrom(clazz);
	}
	public boolean CHECK_NAME(String name) {
		return Pattern.matches(NAME, name);
	}
	public boolean CHECK_Email(String email) {
		return Pattern.matches(EMAIL, email);
	}
	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Customer customer=(Customer)target;
		ValidationUtils.rejectIfEmpty(errors, "name", "CustomerName.required");
		ValidationUtils.rejectIfEmpty(errors, "email", "CustomerEmail.required");
		ValidationUtils.rejectIfEmpty(errors, "address", "CustomerAddress.required");
		String name=customer.getName();
		String email=customer.getEmail();
		if(name.trim().length()!=0 || !name.equals("")) {
			if(!this.CHECK_NAME(name))errors.rejectValue("name","Invalid.name");
		}
		if(email.trim().length()!=0 || !email.equals("")) {
			if(!this.CHECK_Email(email))errors.rejectValue("email","Invalid.email");
		}
	}
		
}
