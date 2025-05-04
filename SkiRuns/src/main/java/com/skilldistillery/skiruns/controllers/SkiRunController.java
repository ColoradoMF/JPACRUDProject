package com.skilldistillery.skiruns.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.skiruns.data.SkiRunDAO;
import com.skilldistillery.skiruns.entities.SkiRun;

@Controller
public class SkiRunController {

	@Autowired
	private SkiRunDAO skiRunDao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		List<SkiRun> allSkiRuns = skiRunDao.findAll();
		model.addAttribute("skiRunList", skiRunDao.findAll());
		return "home";
	}

	@RequestMapping(path = "getSkiRun.do", method = RequestMethod.GET)
	public String showSkiRun(Model model, @RequestParam("skiRunId") int skiRunId) {
		SkiRun foundSkiRun = skiRunDao.findById(skiRunId);
		System.out.println(foundSkiRun);
		model.addAttribute("skiRun", foundSkiRun);
		return "skiRun/show";
		
	// TODO add path for addSkiRun.
	// TODO add path for deleteSkiRun.
	// TODO add path for findSkiRunSearch.

	}
}
