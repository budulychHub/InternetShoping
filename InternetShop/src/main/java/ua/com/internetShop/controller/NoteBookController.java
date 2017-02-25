package ua.com.internetShop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.com.internetShop.editor.ProviderEditor;
import ua.com.internetShop.entity.NoteBook;
import ua.com.internetShop.entity.Provider;
import ua.com.internetShop.service.NoteBookService;
import ua.com.internetShop.service.ProviderService;

@Controller
public class NoteBookController {

	@Autowired
	private NoteBookService noteBookService;

	@Autowired
	private ProviderService providerService;
	
	@InitBinder
	public void InitBinder(WebDataBinder binder){
		binder.registerCustomEditor(Provider.class, new ProviderEditor(providerService));
	}
	
	@RequestMapping(value="/addNoteBook", method=RequestMethod.GET)
	public String newNoteBook(Model model){
		model.addAttribute("noteBooks", noteBookService.findAll());
		model.addAttribute("noteBooks", new NoteBook());
		model.addAttribute("providers", providerService.findAll());
		return "views-base-addNoteBook";
	}
	
	@RequestMapping(value="/addNoteBook", method=RequestMethod.POST)
	public String addNoteBook (
			@ModelAttribute NoteBook noteBook, Model model){
		
		try {
			noteBookService.save(noteBook);
		} catch (Exception e) {
			model.addAttribute("exception", e.getMessage()+" !!!! ");
			return "views-base-addNoteBook";
		}
		return "redirect:/addNoteBook";
	}
	
	@RequestMapping(value="/shopNoteBook", method=RequestMethod.GET)
	public String shop(Model model){
        model.addAttribute("noteBooks", noteBookService.findAll());
		return "views-shop-shopNoteBook";
	}
	
	@RequestMapping(value="/showNoteBook", method=RequestMethod.GET)
	public String showNoteBook(Model model){
		model.addAttribute("noteBooks", 
				noteBookService.findNoteBookWithProvider());
		return "views-base-showNoteBook";
	}
	
	@RequestMapping(value="deleteNoteBook/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable int id){
		noteBookService.delete(id);
		return "redirect:/showNoteBook";
	}	
}