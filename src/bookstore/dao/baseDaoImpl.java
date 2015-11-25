package bookstore.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository (value = "baseDao")
@Transactional
public class baseDaoImpl implements BaseDao {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public void persist(Object obj) {
		em.persist(obj);
	}

	@Override
	public <T> List<T> getAll(Class<T> cl) {
		TypedQuery<T> query =em.createQuery(" from " + cl.getName(), cl);
		return query.getResultList();
	
}
}