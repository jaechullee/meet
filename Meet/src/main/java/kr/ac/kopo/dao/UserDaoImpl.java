package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<User> list() {
		return sql.selectList("user.list");
	}

	@Override
	public void add(User item) {
		sql.insert("user.add",item);
		
	}

	@Override
	public void delete(String user_id) {
		sql.delete("user.delete",user_id);
	}

	@Override
	public int login(User user) {
		return sql.selectOne("user.login",user);
	}

	@Override
	public User item(String user_id) {
		return sql.selectOne("user.item",user_id);
	}

	@Override
	public Object update(User item) {
		return sql.update("user.update",item);
	}

}
