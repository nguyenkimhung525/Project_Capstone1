package app.com.business;

import java.util.regex.Pattern;

public class Validator {
	private Pattern pattern;    

	private static final String NAME="^\\s*[a-zA-Z,\\s]+\\s*$";
	private static final String PHONE_PATTERN="^\\s*[a-zA-Z,\\s]+\\s*$";
	public Validator() {
		// TODO Auto-generated constructor stub
		pattern =Pattern.compile(NAME);
	}
	public boolean validate(String name) {
		return Pattern.matches(NAME, name);
	}
	public static void main(String[] args) {
		Validator validator = new Validator();
		System.out.println(validator.validate("nguyen kim hung"));
	}
}
