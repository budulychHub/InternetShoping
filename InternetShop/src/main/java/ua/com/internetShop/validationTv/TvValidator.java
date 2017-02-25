package ua.com.internetShop.validationTv;

import org.springframework.stereotype.Component;

import ua.com.internetShop.entity.Tv;

@Component("tvValidator")
public class TvValidator implements ValidatorTv {

	public void validate (Object object) throws Exception{
		Tv tv = (Tv) object;
		
		if(tv.getBrand().isEmpty()){
			throw new TvValidationException(ValidatorMessegeTv.EMPTY_BRAND_FIELD);
		}
		if(tv.getDisplay()==0){
			throw new TvValidationException(ValidatorMessegeTv.EMPTY_DISPLAY_FIELD);
		}
		if(tv.getPrice()==0){
			throw new TvValidationException(ValidatorMessegeTv.EMPTY_PRICE_FIELD);
		}
		if(tv.getProviders().isEmpty()){
			throw new TvValidationException(ValidatorMessegeTv.EMPTY_PROVIDERR_FIELD);
		}
	}
}
