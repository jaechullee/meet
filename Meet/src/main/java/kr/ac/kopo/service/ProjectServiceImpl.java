package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.ProjectDao;
import kr.ac.kopo.model.Project;

@Service
public class ProjectServiceImpl implements ProjectService{

	@Autowired
	ProjectDao dao;
	
	@Override
	public List<Project> list() {
		return dao.list();
	}

	@Override
	public void add(Project item) {
		dao.add(item);
	}

	@Override
	public void delete(int project_id) {
		dao.delete(project_id);
	}

	@Override
	public Project item(int project_id) {
		return dao.item(project_id);
	}

	@Override
	public void update(Project item) {
		dao.update(item);
	}

	@Override
	public void read(int project_id) {
		dao.read(project_id);
	}

}
