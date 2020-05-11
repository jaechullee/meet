package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.Project;

public interface ProjectDao {

	List<Project> list();

	void add(Project item);

	void delete(int project_id);

	Project item(int project_id);

	Object update(Project item);

	Object read(int project_id);

}
