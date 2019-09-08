package com.skilldistillery.venue.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.venue.data.VenueDAO;
import com.skilldistillery.venue.data.VenueDAOImpl;
import com.skilldistillery.venue.entities.Venue;

@Controller
public class VenueController {
	@Autowired
	private VenueDAO dao;

	@RequestMapping(path = { "/", "home.do" }, method = RequestMethod.GET)
	public String index(Model model) {
		List<Venue> allVenues = dao.findAll();
		model.addAttribute("allVenues", allVenues);
		return "index";
	}

	@RequestMapping(path = "showAll.do", method = RequestMethod.GET)
	public String showAll(Model model) {
		List<Venue> allVenues = dao.findAll();
		model.addAttribute("allVenues", allVenues);
		return "venue/showAll";
	}

	@RequestMapping(path = "getVenue.do")
	public String getVenue(@RequestParam("id") Integer id, Model model) {
		Venue venue = dao.findById(id);
		if (venue == null) {
			return "venue/notFound";
		}
		model.addAttribute("venue", venue);
		return "venue/show";
	}

	@RequestMapping(path = "editLink.do", method = RequestMethod.GET)
	public String editLink(@RequestParam("id") Integer id, Model model) {
		model.addAttribute("venue", dao.findById(id));
		return "venue/edit";
	}

	@RequestMapping(path = "edit.do", method = RequestMethod.POST)
	public String edit(Integer id, Venue venue, Model model) {
		Venue editVenue = dao.update(id, venue);
		return "venue/show";
	}

	@RequestMapping(path = "addVenueFormLink.do", method = RequestMethod.GET)
	public String addLink(Model mode) {
		return "venue/addVenue";
	}

	@RequestMapping(path = "addVenueForm.do", method = RequestMethod.POST)
	public String addVenue(Venue venue, Model model) {
		Venue newVenue;
		newVenue = dao.create(venue);
		model.addAttribute("newVenue", newVenue);
		return "venue/show";
	}

	@RequestMapping(path = "delete.do", method = RequestMethod.POST)
	public String delete(@RequestParam("id") Integer id, Model model) {
		boolean deleteVenue = dao.destroy(id);
		if (deleteVenue) {
			List<Venue> allVenues = dao.findAll();
			model.addAttribute("allVenues", allVenues);
			return "index";
		} else {
			return "venu/error";
		}
	}

}
