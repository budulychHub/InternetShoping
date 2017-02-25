package ua.com.internetShop.editor;

import java.beans.PropertyEditorSupport;

import ua.com.internetShop.service.NoteBookService;

public class NoteBookEditor extends PropertyEditorSupport{

	private final NoteBookService noteBookService;

	public NoteBookEditor(NoteBookService noteBookService) {
		super();
		this.noteBookService = noteBookService;
	}
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		setValue(noteBookService.findOne(Integer.parseInt(text)));
	}
}
