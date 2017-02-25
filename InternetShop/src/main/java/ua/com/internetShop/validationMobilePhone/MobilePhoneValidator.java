package ua.com.internetShop.validationMobilePhone;

import org.springframework.stereotype.Component;

import ua.com.internetShop.entity.MobilePhone;

@Component("mobilePhoneValidator")
public class MobilePhoneValidator implements ValidatorMobilePhone{

	public void validate(Object object) throws Exception{
		MobilePhone mobilePhone = (MobilePhone) object;
		
		if(mobilePhone.getBrand().isEmpty()){
			throw new MobilePhoneValidationException(ValidatorMessegeMobilePhone.EMPTY_BRAND_FIELD);
		}
		if(mobilePhone.getDisplay()==0){
			throw new MobilePhoneValidationException(ValidatorMessegeMobilePhone.EMPTY_DISPLAY_FIELD);
		}
		if(mobilePhone.getPrice()==0){
			throw new MobilePhoneValidationException(ValidatorMessegeMobilePhone.EMPTY_PRICEE_FIELD);
		}
		if(mobilePhone.getProviders().isEmpty()){
			throw new MobilePhoneValidationException(ValidatorMessegeMobilePhone.EMPTY_PROVIDERR_FIELD);
		}
	}
}
