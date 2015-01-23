package com.zngn.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.zngn.stock.Urun;
import com.zngn.util.HibernateUtil;

public class UrunService {
	public List<Urun> getAllUrun(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		
			transaction = session.beginTransaction();
			@SuppressWarnings("unchecked")
			List<Urun> urunList = session.createQuery("FROM Urun").list();

			System.out.println("List size: " + (urunList).size());
			transaction.commit();
		
			session.close();
		
		
		return urunList;
		
	}
	public static void main(String[] args) {
		UrunService u = new UrunService();
		u.getAllUrun();
	}

}
