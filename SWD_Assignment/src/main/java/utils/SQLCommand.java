package utils;

public class SQLCommand {
	public static String ADD_A_BOOK = "INSERT INTO Book(Title, Page_Count, Date_published, Price, [Status], Author_Id) VALUES (?,?,?,?,?,?)";
	
	
	public static String UPDATE_PASSWORD = "UPDATE Account SET password = ? WHERE accountId = ?;";
	
	
	public static String UPDATE_STUDENT_CLASS = " UPDATE Student SET classId = ? WHERE studentId = ?;";
	public static String UPDATE_TEACHER_SUBJECT = "UPDATE Teacher SET subjectId = ? WHERE teacherId = ?;";
	public static String UPDATE_CLASS_TEACHER = "UPDATE Class SET teacherId = ? WHERE classId = ?";
	
	
	
	public static String GET_ALL_STUDENT = "SELECT * FROM Student";
	public static String GET_ALL_TEACHER = "SELECT * FROM Teacher";
	public static String GET_ALL_CLASS = "SELECT * FROM Class";
	public static String AUTHOR_BY_ID = "SELECT * FROM Author WHERE Author_Id = ?";
	
	
}
