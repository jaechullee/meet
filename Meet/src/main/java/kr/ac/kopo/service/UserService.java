package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.User;

public interface UserService {

	List<User> list();

	void add(User item);

	void delete(String user_id);

	boolean login(User user);

	User item(String user_id);

	void update(User item);

}
