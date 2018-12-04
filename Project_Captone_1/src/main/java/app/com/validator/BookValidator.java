package app.com.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import app.com.entities.Customer;
import app.com.entities.DetailTourForm;

public class BookValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return BookValidator.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Customer form=(Customer)target;
		ValidationUtils.rejectIfEmpty(errors, "lastname", "lastname.required");
		ValidationUtils.rejectIfEmpty(errors, "firstname", "firstname.required");
		ValidationUtils.rejectIfEmpty(errors, "gender", "gender.required");
		ValidationUtils.rejectIfEmpty(errors, "address", "address.required");
		ValidationUtils.rejectIfEmpty(errors, "phone", "phone.required");
	}
		
}
