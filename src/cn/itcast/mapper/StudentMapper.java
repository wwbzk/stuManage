package cn.itcast.mapper;


import java.util.List;

import cn.itcast.po.Student;

public interface StudentMapper
{
	//添加学生
	int addStudent(Student student);
	//删除学生
	int deleteStudent(int id);
	//修改学生
	int modifyStudent(Student student);
	//查询学生列表
	List<Student> getStudentList();
	//得到单个学生信息
	Student getStudent(int id);
}
