package cn.itcast.service;

import java.util.List;

import cn.itcast.po.Student;

public interface StudentService 
{
		public void addStudent(Student student);
		public void  deleteStudent(int id);
		public void  modifyStudent(Student student);
		public List<Student> getStudentList();
		public Student geStudent(int id);
}
