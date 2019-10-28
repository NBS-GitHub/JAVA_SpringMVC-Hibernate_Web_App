package com.frontepic.jurassic.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class FirearmExperienceConstraintValidator implements ConstraintValidator<FirearmExperience, String> {

	private String experience;
	
	@Override
	public void initialize(FirearmExperience firearmExperience) {
		experience = firearmExperience.value();
	}
	
	@Override
	public boolean isValid(String experience, ConstraintValidatorContext constraintValidatorContext) {
		boolean result;
		
		if(experience != null) {
			result = experience.equals("YES") || experience.equals("NO");
		} else {
			result = true;
		}
		
		return result;
	}

}
