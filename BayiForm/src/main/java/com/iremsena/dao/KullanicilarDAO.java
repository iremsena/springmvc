package com.iremsena.dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iremsena.entity.Kullanicilar;



@Repository
public class KullanicilarDAO {
	@Autowired 
	private SessionFactory sessionFactory;

	public Long insert(Kullanicilar kullanicilar) {
		 return (Long) sessionFactory.getCurrentSession().save(kullanicilar);
		
	}

	public void update(Kullanicilar kullanicilar) {
		sessionFactory.getCurrentSession().update(kullanicilar);
	}

	public void persist(Kullanicilar kullanicilar) {
		sessionFactory.getCurrentSession().persist(kullanicilar);
	}

	public void delete(Kullanicilar kullanicilar) {
		sessionFactory.getCurrentSession().delete(kullanicilar);
	}
	
	//READ 
	//public  ArrayList<Kullanicilar> getAll(Long id) {
		//Query query = sessionFactory.getCurrentSession().createQuery("FROM Kullanicilar WHERE id=:id ")
		 //.setLong("id", id);
		//return (ArrayList<Kullanicilar>) query.getResultList();	}
	
	public ArrayList<Kullanicilar> getAll() {
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Kullanicilar");
		
		return (ArrayList<Kullanicilar>) query.getResultList();
	}
	
	

	
	//public ArrayList<kullanicilar> getAll(Long kullanici_id) {
		//Query query = sessionFactory.getCurrentSession().createQuery("FROM kullanicilar WHERE user_id=:user_id")
		 //.setLong("user_id", kullanici_id);
		//return (ArrayList<kullanicilar>) query.getResultList();	} 
}
