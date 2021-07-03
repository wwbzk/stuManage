package cn.itcast.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.mapper.StudentMapper;
import cn.itcast.po.Student;
import cn.itcast.service.StudentService;

public class StudentServiceImpl implements StudentService
{
	@Autowired
	private StudentMapper studentMapper;

	@Override
	public void addStudent(Student student) 
	{
		studentMapper.addStudent(student);
	}

	@Override
	public void deleteStudent(int id) 
	{
		
		studentMapper.deleteStudent(id);
	}

	@Override
	public void modifyStudent(Student student) 
	{
		studentMapper.modifyStudent(student);
	}

	@Override
	public List<Student> getStudentList()
	{
		return studentMapper.getStudentList();
	}

	@Override
	public Student geStudent(int id) 
	{
		
		return studentMapper.getStudent(id);
	}

}
