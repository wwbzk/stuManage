package cn.itcast.mapper;


import java.util.List;

import cn.itcast.po.Student;

public interface StudentMapper
{
	//���ѧ��
	int addStudent(Student student);
	//ɾ��ѧ��
	int deleteStudent(int id);
	//�޸�ѧ��
	int modifyStudent(Student student);
	//��ѯѧ���б�
	List<Student> getStudentList();
	//�õ�����ѧ����Ϣ
	Student getStudent(int id);
}
