package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Project;

@Repository
public class ProjectDaoImpl implements ProjectDao {

	@Autowired
	SqlSession sql;

	@Override
	public List<Project> list() {
		return sql.selectList("project.list");
	}

	@Override
	public void add(Project item) {
		sql.insert("project.add",item);
	}

	@Override
	public void delete(int project_id) {
		sql.delete("project.delete",project_id);
	}

	@Override
	public Project item(int project_id) {
		return sql.selectOne("project.item",project_id);
	}

	@Override
	public Object update(Project item) {
		return sql.update("project.update",item);
	}

	@Override
	public Object read(int project_id) {
		return sql.selectOne("project.read",project_id);
	}
}
