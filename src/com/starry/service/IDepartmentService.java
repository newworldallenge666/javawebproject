package com.starry.service;

import java.util.List;

import com.starry.entity.Department;

public interface IDepartmentService {
	public abstract List<Department> getAll(int pageNum,int pageSize);
	public abstract List<Department> getAll();
	public abstract int delById(String id);
	
	public abstract List<Department> findName(String info,int pageNum,int pageSize);
	public abstract List<Department> findId(String info,int pageNum,int pageSize);
	public abstract List<Department> findId(String info);
	public abstract void update(Department department);
}
