package com.zngn.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.zngn.stock.Person;
import com.mysql.jdbc.Blob;
import com.zngn.stock.Foto;
import com.zngn.stock.Kategori;
import com.zngn.stock.Urun;
import com.zngn.stock.User;
import com.zngn.util.HibernateUtil;

@Controller
@SessionAttributes("users")
public class LinkController {

	@RequestMapping(value = "/hata", method = RequestMethod.GET)
	public ModelAndView exception() {
		return new ModelAndView("hata");

	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public void userUpdate(HttpServletResponse response,
			HttpSession Hsession, @RequestParam("password") Integer password) throws IOException {
		Transaction trns = null;
		User us = (User)Hsession.getAttribute("user");
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			trns = session.beginTransaction();
            User user = (User) session.load(User.class, new String(us.getUsername()));
			user.setPassword(password);

			session.update(user);
			session.getTransaction().commit();

		} catch (RuntimeException e) {
			e.printStackTrace();
		} finally {
			session.flush();
			session.close();
			response.sendRedirect("/controller/");

		}


	}
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logOut(HttpServletResponse response,WebRequest request,SessionStatus status) throws IOException {
	    status.setComplete();

		request.removeAttribute("users", WebRequest.SCOPE_SESSION);
	    return "redirect:/";
		
		
		


	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public void addingPerson(HttpServletResponse response,@ModelAttribute User users
			) throws IOException {
		
		System.out.println("//////-----------------"+users.getName());
	
	

		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			session.save(users);
			session.getTransaction().commit();
			System.out.println("Done");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("/controller/");
	}

	@RequestMapping(value = "/contact")
	public ModelAndView ContactPage() {
		return new ModelAndView("Contact");
	}
	
	@RequestMapping(value = "/login")
	public ModelAndView loginPage() {
		return new ModelAndView("LoginPage");
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public void LoginPerson(HttpSession Hsession,
			HttpServletResponse response,
			@RequestParam("username") String username,
			@RequestParam("password") Integer password) throws IOException {
		boolean durum = false;
		User user1 = null;
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Transaction transaction = null;

			transaction = session.beginTransaction();
			List<User> personList = session.createQuery("FROM User").list();
			for (Iterator iterator = personList.iterator(); iterator.hasNext();) {
				User user = (User) iterator.next();
				 if (user.getUsername().equals(username)
						& user.getPassword() == password) {
					user1 = user;
					durum = true;
					break;
				}
				

			}

			session.close();
			Hsession.setAttribute("users", user1);
		} catch (Exception e) {
			response.sendRedirect("/controller/hata");

		}
		if (durum) {
			Hsession.setAttribute("users", user1);
			if(username.equals("admin"))
				response.sendRedirect("/controller/admin");
			else
			response.sendRedirect("/controller/profil");
		} else
			response.sendRedirect("/controller/hata");

	}

	@RequestMapping(value = "/admin")
	public ModelAndView adminPage() {
		return new ModelAndView("Admin");
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.POST)
	public void DeleteUrun(HttpServletResponse response,
			@RequestParam("urunID") Integer urunID) throws IOException {
		boolean durum = true;

		try {

			Transaction trns = null;
			Session session = HibernateUtil.getSessionFactory().openSession();

			trns = session.beginTransaction();
			Urun urun = (Urun) session.load(Urun.class, new Integer(urunID));
			session.delete(urun);
			session.getTransaction().commit();

			session.flush();
			session.close();

		} catch (Exception e) {
			durum = false;
		}
		if (durum == true) {
			response.sendRedirect("/controller/");
		} else
			response.sendRedirect("/controller/hata");

	}

	
	
	
	@RequestMapping(value = "/profil", method = RequestMethod.GET)
	public ModelAndView ProfilPage(@ModelAttribute User user) {
		ModelAndView modelAndView = new ModelAndView("ProfilPage");
		
		System.out.println("---username"+user.getUsername());

		modelAndView.addObject("user", user);
		return modelAndView;
	}
	
	@RequestMapping(value = "/")
	public ModelAndView listOfProduct() {
		ModelAndView modelAndView = new ModelAndView("HomePage");

		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;

		transaction = session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Urun> urunler = session.createQuery("FROM Urun").list();

		System.out.println("List size: " + (urunler).size());
		transaction.commit();

		session.close();

		System.err.println("sonuc: " + urunler.get(1).getPhoto());
		modelAndView.addObject("urunler", urunler);

		return modelAndView;
	}

	@RequestMapping(value = "/dene")
	public void listOfPersons2(HttpServletResponse response,
			HttpSession Hsession) throws IOException {

		Kategori kategori = new Kategori();
		kategori.setKategoriID(1111);
		kategori.setKategoriAdi("Genel3");

		Foto foto = new Foto();
		foto.setFotoID(3);
		foto.setUrl("yol3");

		User user = new User();
		user = (User) Hsession.getAttribute("user");
		System.err.println("userrr   :" + user.getUsername());
		ModelAndView modelAndView = new ModelAndView("HomePage");
		System.out.println("Hibernate one to many (Annotation)");
		Session session = HibernateUtil.getSessionFactory().openSession();

		session.beginTransaction();

		Urun urun = new Urun();
		urun.setAciklama("Esraaasdsdfa");
		urun.setFiyat(new Double(10.0));
		//urun.setPhoto(photo);
		urun.setKategori(kategori);
		urun.setUrunAdi("uru9");
		urun.setUrunID(21);
		urun.setUser(user);

		user.getUrun().add(urun);
		kategori.getUrun().add(urun);

		session.save(urun);
		session.getTransaction().commit();

		System.out.println("Done");
		response.sendRedirect("/controller/");

	}

	ModelAndView modelAndView;

	@RequestMapping(value = "/showImage")
	public void showResult() {
		System.err.println("/*/-*/-*/-*/-*/-/-/-/-*/-*get");
	}

	@RequestMapping(value = "/shows")
	public ModelAndView listeleResim(HttpSession Hsession,HttpServletResponse response) throws IOException,ServletException {
		ModelAndView modelAndView = new ModelAndView("imageL");
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			@SuppressWarnings("unchecked")
			List<Person> personList = session.createQuery("FROM Person").list();

			System.out.println("List size: " + (personList).size());
			for (Iterator iterator = personList.iterator(); iterator.hasNext();) {
				Person person = (Person) iterator.next();


				System.out.println("***************************");
				System.out.println(person.getPhoto());

				System.out.println("***************************");

			}
			modelAndView.addObject("personList", personList);

			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return modelAndView;
	}
	
	
	
	
	@RequestMapping(value = "/sho")
	public ModelAndView listeleResim(@RequestParam("person_id") Integer itemId,HttpSession Hsession,HttpServletResponse response) throws IOException,ServletException {
		ModelAndView modelAndView = new ModelAndView("imageL");
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			@SuppressWarnings("unchecked")
			List<Person> personList = session.createQuery("FROM Person").list();
			response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
			response.getOutputStream().write(personList.get(itemId).getPhoto());

			 response.getOutputStream().close();
			System.out.println("List size: " + (personList).size());
			
			modelAndView.addObject("personList", personList);

			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return modelAndView;
	}

	@RequestMapping(value = "/showPhoto")
	public void GosterFoto(@RequestParam("urunID") Integer urunID,HttpSession Hsession,HttpServletResponse response) throws IOException,ServletException {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			@SuppressWarnings("unchecked")
			List<Urun> urunler = session.createQuery("FROM Urun").list();
			response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
			for (Iterator iterator = urunler.iterator(); iterator.hasNext();) {
				Urun urun = (Urun) iterator.next();

				if(urun.getUrunID()==urunID){
				System.out.println("***************************");
				System.out.println(urun.getPhoto());

				System.out.println("***************************");

			
			System.out.println("************urun id: "+ urunID);
			response.getOutputStream().write(urun.getPhoto());
			 response.getOutputStream().close();
				}
			}
			System.out.println("List size: " + (urunler).size());
			

			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		
	}

	
	
	@RequestMapping(value = "/showImage", method = RequestMethod.POST)
	public void showResult(HttpServletResponse response, HttpSession Hsession,
			@RequestParam("image") File image) throws IOException {

		// String filePath = "D:/logo.png";
		System.out.println("Dosya Yolu: " + image.getAbsolutePath());
		InputStream inputStream = new FileInputStream(new File(
				image.getAbsolutePath()));
		Session session = HibernateUtil.getSessionFactory().openSession();
		System.out.println("Dosya Yolu: " + image.getAbsolutePath());

		session.beginTransaction();
		Person person = new Person();
		person.setPerson_id(5);
		person.setFirst_name("Esrakjlj");
		person.setLast_name("Zengin");
		person.setPhoto(IOUtils.toByteArray(inputStream));
		System.out.println("Dosya Yolu: " + image.getAbsolutePath());

		session.save(person);
		session.getTransaction().commit();

		System.out.println("Done");
		response.sendRedirect("/controller/");

	}
	
	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public void addProduct(HttpServletResponse response, HttpSession Hsession,
			@RequestParam("urunID") Integer urunID, @RequestParam("urunAdi") String urunAdi,
			@RequestParam("aciklama") String aciklama, @RequestParam("fiyat") Double fiyat, @RequestParam("kategoriID") Integer kategoriID,
			
			@RequestParam("image") File image) throws IOException {

		User user = new User();

		user = (User) Hsession.getAttribute("users");
		
		
			
		Kategori kategori = new Kategori();
		kategori.setKategoriID(kategoriID);
		

		InputStream inputStream = new FileInputStream(new File(
				image.getAbsolutePath()));
		System.err.println("userrr   :" + user.getUsername());
		System.err.println("image   :" + image.getName());

		System.out.println("Hibernate one to many (Annotation)");
		Session session = HibernateUtil.getSessionFactory().openSession();

		session.beginTransaction();

		Urun urun = new Urun();
		urun.setAciklama(aciklama);
		urun.setFiyat(new Double(fiyat));
		urun.setPhoto(IOUtils.toByteArray(inputStream));
		urun.setKategori(kategori);
		urun.setUrunAdi(urunAdi);
		urun.setUrunID(urunID);
		urun.setUser(user);

		user.getUrun().add(urun);
		kategori.getUrun().add(urun);

		session.save(urun);
		session.getTransaction().commit();

		System.out.println("Done");
		response.sendRedirect("/controller/");
		
	}
	
	

	@RequestMapping(value = "/product", method = RequestMethod.POST)
	public ModelAndView indexPage(@RequestParam("urunID") Integer urunID) {
		ModelAndView modelAndView = new ModelAndView("ProductDetails");
		Urun urun = null;
		Transaction trns = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			trns = session.beginTransaction();
			String queryString = "from Urun where urunID = :urunID";
			Query query = session.createQuery(queryString);
			query.setInteger("urunID", urunID);
			urun = (Urun) query.uniqueResult();
		} catch (RuntimeException e) {
			e.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		modelAndView.addObject("urun", urun);

		return modelAndView;
	}

	@RequestMapping(value = "/product")
	public ModelAndView ProductPage() {
		return new ModelAndView("ProductDetails");
	}

	@RequestMapping(value = "/addProduct")
	public ModelAndView addProductPage(HttpSession Hsession, HttpServletResponse response) throws IOException {
		if(Hsession.getAttribute("users")==null)
			return new ModelAndView("LoginPage");
		else
			return new ModelAndView("Product");
		
		
	}


	

	@RequestMapping(value = "/edit")
	public ModelAndView EditPage() {
		return new ModelAndView("edit-person-form");
	}

	

	@RequestMapping(value = "/image")
	public ModelAndView imagePage() {
		return new ModelAndView("image");
	}

}
