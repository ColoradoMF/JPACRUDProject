package com.skilldistillery.skiruns.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.skiruns.data.SkiRunDAO;

@Controller
public class SkiRunController {
	
	@Autowired
	private SkiRunDAO skiRunDao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("skiRunList", skiRunDao.findAll());
		return "home";
	}
}
