package model;

public class Student {
	private int studentId;
	private int accountId;
	private int classId;
	private String studentName;
	@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", accountId=" + accountId + ", classId=" + classId + ", studentName="
				+ studentName + "]";
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public int getAccountId() {
		return accountId;
	}
	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	
	
	
}
