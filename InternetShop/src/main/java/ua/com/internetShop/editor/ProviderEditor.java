package ua.com.internetShop.editor;

import java.beans.PropertyEditorSupport;

import ua.com.internetShop.service.ProviderService;

public class ProviderEditor extends PropertyEditorSupport{

	
	private final ProviderService providerService;

	public ProviderEditor(ProviderService providerService) {
		super();
		this.providerService = providerService;
	}
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException{
		setValue(providerService.findOne(Integer.parseInt(text)));
	}
}
