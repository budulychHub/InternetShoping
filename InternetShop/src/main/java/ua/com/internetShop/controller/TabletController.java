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

import ua.com.internetShop.dto.DtoUtilMapper;
import ua.com.internetShop.editor.ProviderEditor;
import ua.com.internetShop.entity.Provider;
import ua.com.internetShop.entity.Tablet;
import ua.com.internetShop.service.ProviderService;
import ua.com.internetShop.service.TabletService;

@Controller
public class TabletController {

	@Autowired
	private TabletService tabletService;
	
	@Autowired
	private ProviderService providerService;
	
	@InitBinder
	public void InitBinder(WebDataBinder binder){
		binder.registerCustomEditor(Provider.class, new ProviderEditor(providerService));
	}
	
	@RequestMapping(value="/addTablet", method=RequestMethod.GET)
	public String newTablet(Model model){
		model.addAttribute("tablets", new Tablet());
		model.addAttribute("providers", providerService.findAll());
		return "views-base-addTablet";
	}
	
	@RequestMapping(value="/addTablet", method=RequestMethod.POST)
	public String addTablet(@ModelAttribute Tablet tablet, Model model){
		try {
			tabletService.save(tablet);
		} catch (Exception e) {
			model.addAttribute("exception", e.getMessage()+" !!!! ");
			return "views-base-addTablet";
		}
		return "redirect:/addTablet";
	}
	
	
	
	@RequestMapping(value="/shopTablet", method=RequestMethod.GET)
	public String shopTablet(Model model){
		model.addAttribute("tablets", 
				DtoUtilMapper.TabletToTabletDtos(tabletService.findAll()));
		return "views-shop-shopTablet";
	}
	
	@RequestMapping(value="/showTablet", method=RequestMethod.GET)
	public String showTablet(Model model){
		model.addAttribute("tablets",tabletService.findTabletWithProvider());
		return "views-base-showTablet";
	}
	
	@RequestMapping(value="/deleteTablet/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable int id){
		tabletService.delete(id);
		return "redirect:/showTablet";
	}
}
