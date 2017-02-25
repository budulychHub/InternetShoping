package ua.com.internetShop.editor;

import java.beans.PropertyEditorSupport;

import ua.com.internetShop.service.TvService;

public class TvEditor extends PropertyEditorSupport{

	private final TvService tvService;

	public TvEditor(TvService tvService) {
		super();
		this.tvService = tvService;
	}
	
	@Override
	public void setAsText (String text) throws IllegalArgumentException{
		setValue(tvService.findOne(Integer.parseInt(text)));
	}
}
