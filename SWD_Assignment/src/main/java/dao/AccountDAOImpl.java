package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import model.Account;

import model.Classes;
import model.Student;
import model.Teacher;
import utils.DBUtils;
import utils.SQLCommand;

public class AccountDAOImpl implements AccountDAO{
	private Connection connection = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet results = null;



	@Override
	public Account getAccountById(int id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void changeAccountPassword(int id, String password) throws SQLException {
		try {
			connection = DBUtils.getInstance().getConnection();
			preparedStatement = connection.prepareStatement(SQLCommand.UPDATE_PASSWORD);
			preparedStatement.setString(1, password);		
			preparedStatement.setInt(2, id);
			preparedStatement.executeUpdate();
		}finally {
			try {
				if(connection != null) {
					connection.close();
				}
				if(preparedStatement != null) {
					preparedStatement.close();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public List<Student> getAllStudent() throws SQLException {
		// TODO Auto-generated method stub
				List<Student> students = new ArrayList<>(); 
				Student student = null;
				try {
					connection = DBUtils.getInstance().getConnection();
					preparedStatement = connection.prepareStatement(SQLCommand.GET_ALL_STUDENT); 
					results = preparedStatement.executeQuery();
					while(results.next()) {
						student = new Student();
						
						student.setStudentId(results.getInt("studentId"));
						
						student.setClassId(results.getInt("classId"));
						
						student.setAccountId(results.getInt("accountId"));
						
						student.setStudentName(results.getString("studentName"));;
										
						students.add(student);
					}
				}finally {
					try {
						if(connection != null) {
							connection.close();
						}
						if(preparedStatement != null) {
							preparedStatement.close();
						}
					}catch(SQLException e) {
						e.printStackTrace();
					}
				}
				return students;
	}
	
	

	@Override
	public List<Teacher> getAllTeacher() throws SQLException {
		// TODO Auto-generated method stub
		List<Teacher> teachers = new ArrayList<>(); 
		Teacher teacher = null;
		try {
			connection = DBUtils.getInstance().getConnection();
			preparedStatement = connection.prepareStatement(SQLCommand.GET_ALL_TEACHER); 
			results = preparedStatement.executeQuery();
			while(results.next()) {
				teacher = new Teacher();
				
				teacher.setTeacherId(results.getInt("teacherId"));
				
				teacher.setSubjectId(results.getInt("subjectId"));
				
				teacher.setAccountId(results.getInt("accountId"));
				
				teacher.setTeacherName(results.getString("teacherName"));;
								
				teachers.add(teacher);
			}
		}finally {
			try {
				if(connection != null) {
					connection.close();
				}
				if(preparedStatement != null) {
					preparedStatement.close();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return teachers;
}

	@Override
	public List<Classes> getAllClass() throws SQLException {
		// TODO Auto-generated method stub
				List<Classes> classes = new ArrayList<>(); 
				Classes c = null;
				try {
					connection = DBUtils.getInstance().getConnection();
					preparedStatement = connection.prepareStatement(SQLCommand.GET_ALL_CLASS); 
					results = preparedStatement.executeQuery();
					while(results.next()) {
						c = new Classes();
						
						c.setTeacherId(results.getInt("teacherId"));
						
						c.setClassId(results.getInt("classId"));
						
						c.setClassName(results.getString("className"));;
										
						classes.add(c);
					}
				}finally {
					try {
						if(connection != null) {
							connection.close();
						}
						if(preparedStatement != null) {
							preparedStatement.close();
						}
					}catch(SQLException e) {
						e.printStackTrace();
					}
				}
				return classes;
		}

	@Override
	public boolean UpdateStudentClass(int studentId, int classId) throws SQLException {
		boolean isUpdated = false;
		try {
			connection = DBUtils.getInstance().getConnection();
			preparedStatement = connection.prepareStatement(SQLCommand.UPDATE_STUDENT_CLASS);
			preparedStatement.setInt(1, classId);				
			preparedStatement.setInt(2, studentId);
			preparedStatement.executeUpdate();
			isUpdated = true;
		}finally {
			try {
				if(connection != null) {
					connection.close();
				}
				if(preparedStatement != null) {
					preparedStatement.close();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return isUpdated;
	}

	@Override
	public boolean UpdateTeacherSubject(int teacherId, int subjectId) throws SQLException {
		boolean isUpdated = false;
		try {
			connection = DBUtils.getInstance().getConnection();
			preparedStatement = connection.prepareStatement(SQLCommand.UPDATE_TEACHER_SUBJECT);
			preparedStatement.setInt(1, subjectId);				
			preparedStatement.setInt(2, teacherId);
			preparedStatement.executeUpdate();
			isUpdated = true;
		}finally {
			try {
				if(connection != null) {
					connection.close();
				}
				if(preparedStatement != null) {
					preparedStatement.close();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return isUpdated;
	}

	@Override
	public boolean UpdateClassTeacher(int classId, int teacherId) throws SQLException {
		boolean isUpdated = false;
		try {
			connection = DBUtils.getInstance().getConnection();
			preparedStatement = connection.prepareStatement(SQLCommand.UPDATE_CLASS_TEACHER);
			preparedStatement.setInt(1, teacherId);				
			preparedStatement.setInt(2, classId);
			preparedStatement.executeUpdate();
			isUpdated = true;
		}finally {
			try {
				if(connection != null) {
					connection.close();
				}
				if(preparedStatement != null) {
					preparedStatement.close();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return isUpdated;
	}
	
	
}
