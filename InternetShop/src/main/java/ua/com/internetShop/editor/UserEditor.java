package ua.com.internetShop.editor;

import java.beans.PropertyEditorSupport;

import ua.com.internetShop.service.UserService;

public class UserEditor extends PropertyEditorSupport{

	private final UserService userService;

	public UserEditor(UserService userService) {
		super();
		this.userService = userService;
	}
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		setValue(userService.findOne(Integer.parseInt(text)));
	}
	
}
