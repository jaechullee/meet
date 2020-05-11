package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.Project;

public interface ProjectService {

	List<Project> list();

	void add(Project item);

	void delete(int project_id);

	Project item(int project_id);

	void update(Project item);

	void read(int project_id);

}
