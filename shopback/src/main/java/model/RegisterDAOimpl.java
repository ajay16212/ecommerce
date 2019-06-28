package model;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
	
	@Repository
	@Transactional
	public class RegisterDAOimpl implements RegisterDAO {
		
		@Autowired(required=true)
		private SessionFactory sessionFactory;

		public boolean add(register reg) {
			// TODO Auto-generated method stub
			try {			
				sessionFactory
						.getCurrentSession()
							.persist(reg);
				return true;
			}
			catch(Exception ex) {		
				ex.printStackTrace();			
			}	
			return false;
		}
		
	}
