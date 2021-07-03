package cn.itcast.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.itcast.po.Student;
import cn.itcast.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController 
{
	@Autowired
	private StudentService studentService;
	
	
	@RequestMapping("/addStudent")
	public String addStudent(Student student)
	{
		studentService.addStudent(student);
		return "success";
	}
	
	@RequestMapping("/deleteStudent")
	public String deleteStudent(int id)
	{
		studentService.deleteStudent(id);
		return "success";
	}
	
	
	@RequestMapping("/modifyStudent")
	public String modifyStudent(Student student)
	{
		studentService.modifyStudent(student);
		return "success";
	}
	
	@RequestMapping("/getStudentList")
	public String getStudentList(Model model)
	{
		List<Student> studentList=studentService.getStudentList();
		model.addAttribute("studentList",studentList);
		return "student/index";
	}
	
	@RequestMapping("/getStudent")
	public String getStudent(Model model,int id)
	{
		Student student=studentService.geStudent(id);
		model.addAttribute("student",student);
		return "/student/edit";
	}
	
	@RequestMapping("/add")
	public String add()
	{
		return "/student/add";
	}
}
