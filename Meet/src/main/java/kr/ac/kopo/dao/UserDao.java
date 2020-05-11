package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.User;

public interface UserDao {

	List<User> list();

	void add(User item);

	void delete(String user_id);

	int login(User user);

	User item(String user_id);

	Object update(User item);

}
