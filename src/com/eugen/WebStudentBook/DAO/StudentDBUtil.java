package com.eugen.WebStudentBook.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.eugen.WebStudentBook.entity.*;

@Repository
public class StudentDBUtil {
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public List<Student> getStudents() {
		Session currentSession = sessionFactory.getCurrentSession();
		List<Student> students = currentSession.createQuery("from Student", Student.class).getResultList();
		return students;
	}

	@Transactional
	public void saveStudent(Student stu) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(stu);
	}

	@Transactional
	public Student getStudent(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		return currentSession.get(Student.class, id);
	}

	@Transactional
	public void updateStudent(Student stu) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.update(stu);
	}

	@Transactional
	public void deleteStudent(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Student student = currentSession.get(Student.class, id);
		currentSession.delete(student);
	}
}
