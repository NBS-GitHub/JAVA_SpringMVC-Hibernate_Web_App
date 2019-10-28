package com.frontepic.jurassic;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/form")
public class FormController {

	@RequestMapping("/show")
	public String showForm(Model model) {
		model.addAttribute("trip", new Trip());
		return "form";
	}
	
	@RequestMapping("/process")
	public String showFormResult(
			@Valid @ModelAttribute("trip") Trip trip, 
			BindingResult bindingResult
			) {
		if(bindingResult.hasErrors())
			return "form";
		return"form-result";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
}
