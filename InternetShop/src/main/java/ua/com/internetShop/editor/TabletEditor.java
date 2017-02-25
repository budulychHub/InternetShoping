package ua.com.internetShop.editor;

import java.beans.PropertyEditorSupport;

import ua.com.internetShop.service.TabletService;

public class TabletEditor extends PropertyEditorSupport{

	
	private final TabletService tabletService;

	public TabletEditor(TabletService tabletService) {
		super();
		this.tabletService = tabletService;
	}
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		setValue(tabletService.findOne(Integer.parseInt(text)));
	}
}
