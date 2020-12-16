package com.eugen.WebStudentBook.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.eugen.WebStudentBook.DAO.StudentDBUtil;
import com.eugen.WebStudentBook.entity.*;

import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
	@Autowired
	private StudentDBUtil studentDBUtil;

	@RequestMapping("/list")
	public String getStudents(Model model) {
		List<Student> students = studentDBUtil.getStudents();
		model.addAttribute("students", students);
		return "list-students";
	}

	@GetMapping("/showAddForm")
	public String showAddForm(Model model) {
		Student student = new Student();
		model.addAttribute(student);
		return "add-student";
	}

	@PostMapping("/saveStudent")
	public String saveStudent(@ModelAttribute("student") Student stu) {
		studentDBUtil.saveStudent(stu);
		return "redirect:/student/list";
	}

	@GetMapping("/showEditForm")
	public String showEditForm(@RequestParam("studentId") int id, Model model) {
		Student stu = studentDBUtil.getStudent(id);
		model.addAttribute("student", stu);
		return "edit-student";
	}

	@PostMapping("/saveEditForm")
	public String saveEditForm(@ModelAttribute("student") Student stu) {
		studentDBUtil.updateStudent(stu);
		return "redirect:/student/list";
	}

	@GetMapping("/deleteStudent")
	public String deleteStudent(@RequestParam("studentId") int id) {
		studentDBUtil.deleteStudent(id);
		return "redirect:/student/list";
	}
}
