import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Some {

    public static void main(String[] args) throws SQLException {
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/sql_tutorial?user=root&password=root");
        PreparedStatement statement = connection.prepareStatement("SELECT id, name FROM developers WHERE salary>=?");
        statement.setInt(1, 1000);
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()) {
            int id = resultSet.getInt(1);
            String name = resultSet.getString(2);

            System.out.println(id);
            System.out.println(name);

        }
        resultSet.close();
        statement.close();
        connection.close();
    }
}
