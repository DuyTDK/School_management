package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtils {
    private static DBUtils instance;
    private Connection connection;

    private DBUtils() {

        try {
            String url = "jdbc:sqlserver://localhost:1433;databaseName=SWD_Assignment;encrypt=true;trustServerCertificate=true";
            String userName = "sa";
            String password = "12345678";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, userName, password);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public static DBUtils getInstance() throws SQLException {
        if (instance == null || instance.getConnection().isClosed()) {
            instance = new DBUtils();
        }
        return instance;
    }
    public static void main(String[] args) {
        System.out.println(new DBUtils().connection);
    }
}

