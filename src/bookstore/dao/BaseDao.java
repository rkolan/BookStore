package bookstore.dao;

import java.util.List;

public interface BaseDao {
	public void persist(Object obj);
	
	public <T> List <T> getAll(Class<T> cl);

}
