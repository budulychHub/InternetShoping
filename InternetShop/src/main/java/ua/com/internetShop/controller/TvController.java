package ua.com.internetShop.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import ua.com.internetShop.dto.DtoUtilMapper;
import ua.com.internetShop.editor.ProviderEditor;
import ua.com.internetShop.entity.Provider;
import ua.com.internetShop.entity.Tv;
import ua.com.internetShop.service.ProviderService;
import ua.com.internetShop.service.TvService;

@Controller
public class TvController {

	@Autowired
	private TvService tvService;
		
	@Autowired
	private ProviderService providerService;
	
	@InitBinder
	public void InitBinder(WebDataBinder binder){
		binder.registerCustomEditor(Provider.class, new ProviderEditor(providerService));
	}
	
	@RequestMapping(value="/addTv", method=RequestMethod.GET)
	public String newTv(Model model){
		model.addAttribute("tvs", new Tv());
		model.addAttribute("providers", providerService.findAll());
		return "views-base-addTv";
	}
	
	@RequestMapping(value="/addTv", method=RequestMethod.POST)
	public String addTv(@ModelAttribute Tv tv, Model model){
		try {
			tvService.save(tv);
		} catch (Exception e) {
			model.addAttribute("exception", e.getMessage()+" !!!! ");
			return "views-base-addTv";
		}
		return "redirect:/addTv";
	}
	
	
	@RequestMapping(value="/shopTv", method=RequestMethod.GET)
	public String shopTv(Model model){
		model.addAttribute("tvs", 
				DtoUtilMapper.TvToTvDtos(tvService.findAll()));
		return "views-shop-shopTv";
	}
	
	
	@RequestMapping(value="/showTv", method=RequestMethod.GET)
	public String showTv(Model model){
		model.addAttribute("tvs", 
				tvService.findTvWithProvider());
		return "views-base-showTv";
	}
	
	
	@RequestMapping(value="deleteTv/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable int id){
		tvService.delete(id);
		return "redirect:/showTv";
	}
	
	@GetMapping("saveImgTv/{id}")
	public String saveImgTv(@PathVariable String idTv, @RequestParam MultipartFile multipartFile){
		
		tvService.saveImg(Integer.parseInt(idTv), multipartFile);
		
		return "redirect:/showTv";
	}	
}