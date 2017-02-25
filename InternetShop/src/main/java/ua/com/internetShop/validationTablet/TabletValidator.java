package ua.com.internetShop.validationTablet;

import org.springframework.stereotype.Component;

import ua.com.internetShop.entity.Tablet;

@Component("tabletValidator")
public class TabletValidator implements ValidatorTablet{

	@Override
	public void validate(Object object) throws Exception {
		Tablet tablet = (Tablet) object;
		
		if(tablet.getBrand().isEmpty()){
			throw new TabletValidationException(ValidatorMessegeTablet.EMPTY_BRAND_FIELD);
		}
		if(tablet.getDisplay()==0){
			throw new TabletValidationException(ValidatorMessegeTablet.EMPTY_DISPLAY_FIELD);
		}
		if(tablet.getPrice()==0){
			throw new TabletValidationException(ValidatorMessegeTablet.EMPTY_PRICE_FIELD);
		}
		if(tablet.getProviders().isEmpty()){
			throw new TabletValidationException(ValidatorMessegeTablet.EMPTY_PROVIDERR_FIELD);
		}
	}

	
}
