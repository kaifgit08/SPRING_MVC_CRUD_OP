package com.gl.driver;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.gl.bean.Student;

public class Driver {
	public static void main(String[] args) {

		Student s1 = new Student("Kaif", "Pass", 65);

		Student s2 = new Student("Akash", "Pass", 99);

		Student s3 = new Student("Jack", "JustPass", 35);

		Configuration config = new Configuration();
		config.configure();

		SessionFactory factory = new Configuration().configure().addAnnotatedClass(Student.class).buildSessionFactory();

//		Session session = factory.openSession();
//		session.beginTransaction();
//		session.save(s1);//here we are saving the created object
//		session.save(s2);
//		session.save(s3);
//		
//		session.getTransaction().commit();//inserting a object in the database
		
		Session session=factory.openSession();
		session.beginTransaction();
		Student s4=session.get(Student.class,2);
		s4.setFull_Name("Rose");
		
		session.getTransaction().commit();
//		
//		Session session=factory.openSession();
//		session.beginTransaction();
//		Student s5=(Student) session.createQuery("from student");
//		session.getTransaction().commit();
		
	}

}
