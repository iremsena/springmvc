package com.iremsena.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iremsena.dao.KullanicilarDAO;
import com.iremsena.entity.Kullanicilar;




@Service
@Transactional
public class KullanicilarService {
	
	@Autowired
	private KullanicilarDAO kullanicilarDAO;

	public Long createKullanicilar(Kullanicilar kullanicilar, HttpServletRequest request) {
		//kullanicilar.setId((long) 1);
		return kullanicilarDAO.insert(kullanicilar);
	}
	
	//public Kullanicilar getKullanicilarFindById(Long id) {
		//return kullanicilarDAO.getFindById(id);	}

	
	public ArrayList<Kullanicilar> getAll() { 
		return kullanicilarDAO.getAll();
	}
	//public ArrayList<Kullanicilar> getAll(Long id) { 
		//return kullanicilarDAO.getAll(id);
	//}
	 
}


