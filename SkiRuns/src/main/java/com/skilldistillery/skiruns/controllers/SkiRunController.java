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
		model.addAttribute("message", " ski run found " + skiRunId);
		return "skiRun/show";
	}
		
	@RequestMapping(path = "addSkiRun.do", method = RequestMethod.POST)
	public String addSkiRun(Model model, SkiRun skiRun) {
	    // Reject if name is missing
	    if (skiRun.getName() == null || skiRun.getName().trim().isEmpty()) {
	        model.addAttribute("message", "Ski Run must have a name.");
	        model.addAttribute("skiRunList", skiRunDao.findAll());
	        return "home";
	    }

	    SkiRun added = skiRunDao.addSkiRun(skiRun);
	    model.addAttribute("message", "Ski Run added successfully!");
	    model.addAttribute("skiRunList", skiRunDao.findAll());
	    return "home";
	}


	@RequestMapping(path = "deleteSkiRun.do", method = RequestMethod.POST)
	public String deleteSkiRun(@RequestParam("skiRunId") int skiRunId, Model model) {
	    skiRunDao.deleteSkiRun(skiRunId);
	    model.addAttribute("message", "Ski Run deleted successfully!");
	    model.addAttribute("skiRunList", skiRunDao.findAll());
	    return "home";
	}
	
	@RequestMapping(path = "updateSkiRun.do", method = RequestMethod.POST)
	public String updateSkiRun(Model model, SkiRun skiRun) {
	    SkiRun updated = skiRunDao.updateSkiRun(skiRun.getId(), skiRun);
	    model.addAttribute("skiRun", updated);
	    model.addAttribute("message", "Ski Run updated successfully!");
	    return "skiRun/show";
	}

	@RequestMapping(path = "getSkiRunKeyword.do", method = RequestMethod.GET)
	public String searchByKeyword(@RequestParam("skiRunKeyword") String keyword, Model model) {
	    List<SkiRun> results = skiRunDao.findByKeyword(keyword);
	    model.addAttribute("skiRunList", results);
	    model.addAttribute("message", "Found " + results.size() + " results for keyword: " + keyword);
	    return "home";
	}

}

