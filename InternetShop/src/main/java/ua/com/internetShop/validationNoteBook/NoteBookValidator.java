package ua.com.internetShop.validationNoteBook;

import org.springframework.stereotype.Component;

import ua.com.internetShop.entity.NoteBook;

@Component("noteBookValidator")
public class NoteBookValidator implements ValidatorNoteBook{

	
	public void validate(Object object) throws Exception{
		NoteBook noteBook = (NoteBook) object;
		
		if(noteBook.getBrand().isEmpty()){
			throw new NoteBookValidationException(ValidatorMessegeNoteBook.EMPTY_BRAND_FIELD);
		}
		if(noteBook.getDisplay()==0){
			throw new NoteBookValidationException(ValidatorMessegeNoteBook.EMPTY_DISPLAY_FIELD);
		}
		if(noteBook.getPrice()==0){
			throw new NoteBookValidationException(ValidatorMessegeNoteBook.EMPTY_PRICE_FIELD);
		}
		if(noteBook.getProviders().isEmpty()){
			throw new NoteBookValidationException(ValidatorMessegeNoteBook.EMPTY_PROVIDER_FIELD);
		}
	}
}
