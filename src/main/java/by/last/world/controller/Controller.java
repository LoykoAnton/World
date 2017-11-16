package by.last.world.controller;

import by.last.world.dao.CityDAO;
import by.last.world.dao.CountryDAO;
import by.last.world.dao.CountryLanguageDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@org.springframework.stereotype.Controller()
public class Controller {

    private final CityDAO cityDAO;

    private final CountryDAO countryDAO;

    private final CountryLanguageDAO countryLanguageDAO;


    @Autowired
    public Controller(CityDAO cityDAO, CountryDAO countryDAO, CountryLanguageDAO countryLanguageDAO) {
        this.cityDAO = cityDAO;
        this.countryDAO = countryDAO;
        this.countryLanguageDAO = countryLanguageDAO;
    }

    @RequestMapping(value = "/")
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/city")
    public String city(ModelMap model, HttpServletRequest request) {
        model.addAttribute("cities", cityDAO.getAll());
        return "city";
    }

    @RequestMapping(value = "/country")
    public String country(ModelMap model, HttpServletRequest request) {
        model.addAttribute("countries", countryDAO.getAll());
        return "country";
    }

    @RequestMapping(value = "/countrylanguage")
    public String countryLanguage(ModelMap model, HttpServletRequest request) {
        model.addAttribute("countrylanguagies", countryLanguageDAO.getAll());
        return "countrylanguage";
    }
}