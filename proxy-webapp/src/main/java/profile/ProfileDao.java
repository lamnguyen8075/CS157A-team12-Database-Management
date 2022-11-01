package profile;

import java.sql.*;

public class ProfileDao {

    public boolean validate(ProfileBean profileBean) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/proxy?useSSL=false", "root", "thisIsMyPassword");

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection
                     .prepareStatement("INSERT INTO users (name, email, company, department)\n" +
                             "VALUES (?, ?, ?, ?);")) {
            preparedStatement.setString(1, profileBean.getUsername());
            preparedStatement.setString(2, profileBean.getPassword());
            preparedStatement.setString(3, profileBean.getUsername());
            preparedStatement.setString(4, profileBean.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
