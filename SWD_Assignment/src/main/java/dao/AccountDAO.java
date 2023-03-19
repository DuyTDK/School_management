package dao;

import java.sql.SQLException;
import java.util.List;

import model.Account;
import model.Student;
import model.Teacher;
import model.Classes;


public interface AccountDAO {
	public List<Student> getAllStudent() throws SQLException;
	
	public List<Teacher> getAllTeacher() throws SQLException;
	
	public List<Classes> getAllClass() throws SQLException;
	
	public boolean UpdateStudentClass(int studentId, int classId) throws SQLException;
	
	public boolean UpdateTeacherSubject(int teacherId, int subjectId) throws SQLException;
	
	public boolean UpdateClassTeacher(int classId, int teacherId) throws SQLException;

	public Account getAccountById(int id) throws SQLException;
	
	public void changeAccountPassword(int id,String password) throws SQLException;
	
	
	
	
}
