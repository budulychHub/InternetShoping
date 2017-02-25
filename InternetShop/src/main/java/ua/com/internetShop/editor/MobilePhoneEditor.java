package ua.com.internetShop.editor;

import java.beans.PropertyEditorSupport;


import ua.com.internetShop.service.MobilePhoneService;

public class MobilePhoneEditor extends PropertyEditorSupport {

	
	private final MobilePhoneService mobilePhoneService;

	public MobilePhoneEditor(MobilePhoneService mobilePhoneService) {
		super();
		this.mobilePhoneService = mobilePhoneService;
	}
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		setValue(mobilePhoneService.findOne(Integer.parseInt(text)));
	}
}
