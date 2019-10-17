package com.iremsena.endpoint;

import org.springframework.web.bind.annotation.RestController;

import com.iremsena.service.KullanicilarService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
@RestController
@RequestMapping(value="/rest")
public class KullanicilarEndPoint {

	
	  @SuppressWarnings("unused")
	@Autowired
	  private KullanicilarService kullanicilarService;
}
