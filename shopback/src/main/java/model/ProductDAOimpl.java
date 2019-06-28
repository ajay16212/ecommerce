package model;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProductDAOimpl implements ProductDAO {
	@Autowired(required = true)
	private SessionFactory sessionFactory;

	public boolean add(Product p) {
		try {
			sessionFactory
			.getCurrentSession()
				.persist(p);
		} 
		
		catch (Exception e) {
			e.printStackTrace();	
		}
		return false;
	}
	
	}
	
