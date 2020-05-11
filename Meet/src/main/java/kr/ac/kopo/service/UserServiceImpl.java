package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.UserDao;
import kr.ac.kopo.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao dao;
	
	
	@Override
	public List<User> list() {
		return dao.list();
	}

	@Override
	public void add(User item) {
		dao.add(item);
	}

	@Override
	public void delete(String user_id) {
		dao.delete(user_id);
	}

	@Override
	public boolean login(User user) {
		if(dao.login(user)==1)
			return true;
		else
			return false;
	}

	@Override
	public User item(String user_id) {
		return dao.item(user_id);
	}

	@Override
	public void update(User item) {
		 dao.update(item);
	}

}
