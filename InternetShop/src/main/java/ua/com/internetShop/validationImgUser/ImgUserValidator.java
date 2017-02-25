package ua.com.internetShop.validationImgUser;

import org.springframework.stereotype.Component;

import ua.com.internetShop.entity.User;

@Component("imgUserValidator")
public class ImgUserValidator implements ValidatorImgUser{

	@Override
	public void validate(Object object) throws Exception {
		User user = (User) object;
		
		if(user.getPathImage().isEmpty()){
			throw new ImgUserValidationeException(ValidatorMessegeImgUser.EMPTY_IMG_FIELD);
		}
	}	
}
