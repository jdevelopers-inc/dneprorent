package inc.jdevelopers.domain.util;

import inc.jdevelopers.domain.*;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class RentPromoValidator implements Validator {

	public boolean supports(Class<?> arg0) {
		return false;
	}

	public void validate(Object obj, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.street", "required.not-empty", "Обязательно к заполнению!");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.index", "required.not-empty", "Обязательно к заполнению!");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.buildingNumb", "required.not-empty", "Обязательно к заполнению!");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.roomNumb", "required.not-empty", "Обязательно к заполнению!");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phones[0]", "required.not-empty", "Обязательно к заполнению!");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "roomsAmount", "required.not-empty", "Обязательно к заполнению!");
		
		RentPromo rentPromo = (RentPromo)obj;
		System.out.println("[rentType] = "+rentPromo.getRentType());
		
		if(Integer.toString(rentPromo.getAddress().getIndex()).length()!=5)
			errors.reject("address.index","Индекс должен состоять из 5 символов!");
		
		if( rentPromo.getRentType().equals("-") )
			errors.reject("rentType","Выберите тип аренды!");
	}

}
