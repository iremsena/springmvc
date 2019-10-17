package com.iremsena.bayiform;


import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iremsena.entity.Kullanicilar;
import com.iremsena.service.KullanicilarService;

@Controller
public class HomeController {
	
	@Autowired 
	private KullanicilarService kullanicilarService;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {

		Kullanicilar kullanici = new Kullanicilar();
		kullanici.setName("Deneme");
		kullanici.setBirth_day(new Date());
		kullanici.setAdress("123");
		
		kullanicilarService.createKullanicilar(kullanici, null);
		
		return "maiin";
	}
	


	@RequestMapping(value = "/error_404", method = RequestMethod.GET)
	public String error(Model model) {

		return "error_404";
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String form(Model model) {
      /*  for(Kullanicilar kullanicilar : kullanicilarService.getAll())
        	System.out.println(kullanicilar.getName()); */
		return "formpage";
	}
	
	
	@RequestMapping(value="/formpage", method=RequestMethod.POST)
	public ResponseEntity<String> formpage(  @RequestBody Kullanicilar kullanicilar,  HttpServletRequest request) {
		
		//System.out.println(kullanicilar.toString());
		//veritabanýna yazma
		System.out.println(kullanicilar.toString());
		kullanicilarService.createKullanicilar(kullanicilar, request);
		
		return new ResponseEntity<> ("kaydýnýz alýndý", HttpStatus.CREATED);
		
	}
	
	
	
}
