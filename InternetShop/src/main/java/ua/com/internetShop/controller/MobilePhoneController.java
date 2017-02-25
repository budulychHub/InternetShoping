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
import ua.com.internetShop.entity.MobilePhone;
import ua.com.internetShop.entity.Provider;
import ua.com.internetShop.service.MobilePhoneService;
import ua.com.internetShop.service.ProviderService;

@Controller
public class MobilePhoneController {

	@Autowired
	private MobilePhoneService mobilePhoneService;
	
	@Autowired
	private ProviderService providerService;
	
	@InitBinder
	public void InitBinder(WebDataBinder binder){
		binder.registerCustomEditor(Provider.class, new ProviderEditor(providerService));
	}
	
	
	@RequestMapping(value="/addMobilePhone", method=RequestMethod.GET)
	public String newMobilePhone(Model model){
		model.addAttribute("mobilePhones", new MobilePhone());
		model.addAttribute("providers", providerService.findAll());
		return "views-base-addMobilePhone";
	}
	
	@RequestMapping(value="/addMobilePhone", method=RequestMethod.POST)
	public String addMobilePhone(
			@ModelAttribute MobilePhone mobilephone, Model model){
		
		try {
			mobilePhoneService.save(mobilephone);
		} catch (Exception e) {
			model.addAttribute("exception", e.getMessage()+" !!!! ");
			return "views-base-addMobilePhone";
		}
		return "redirect:/addMobilePhone";
	}
	
	
	
	@RequestMapping(value="/shopMobilePhone", method=RequestMethod.GET)
	public String shopMobilePhone(Model model){
		model.addAttribute("mobilePhones", 
				DtoUtilMapper.MobilePhoneToMobilePhoneDtos(mobilePhoneService.findAll()));
		return "views-shop-shopMobilePhone";
	}
	
	
	@RequestMapping(value="/showMobilePhone", method=RequestMethod.GET)
	public String showMobilePhone(Model model){
		model.addAttribute("mobilePhones", 
				mobilePhoneService.findMobilePhoneWithProvider());
		return "views-base-showMobilePhone";
	}
	
	@RequestMapping(value="deleteMobilePhone/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable int id){
		mobilePhoneService.delete(id);
		return "redirect:/showMobilePhone";
	}
}
