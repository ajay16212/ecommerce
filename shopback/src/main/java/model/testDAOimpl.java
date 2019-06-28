package model;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import org.springframework.transaction.annotation.Transactional;
import model.testDAO;


	@Repository("testDAO")
	@Transactional
	public abstract class testDAOimpl implements testDAO {

		@Autowired
		private SessionFactory sessionFactory;

		
		public boolean add(test t) {
			try {			
				sessionFactory.getCurrentSession().persist(t);			
				return true;
			}
			catch(Exception ex) {
				return false;
			}
		}
	}

