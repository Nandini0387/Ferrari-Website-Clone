import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class signup extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {
            // Load the MySQL JDBC driver (replace with the appropriate driver)
           // Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Set your database connection details
            String jdbcUrl = "jdbc:mysql://localhost:3306/Nandini";
            String dbUser = "root";
            String dbPassword = "Nandini516";

            res.setContentType("text/html");
            PrintWriter out = res.getWriter();

            // Get user data from the form
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            String name = req.getParameter("name");
            String phone = req.getParameter("phone");

            // Establish a database connection
            Connection con = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
            Statement stmt = con.createStatement();

            // Insert user data into the database using prepared statements to prevent SQL injection
            String sqlQuery = "INSERT INTO users (name, email, password, phone) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(sqlQuery);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, password);
            preparedStatement.setString(4, phone);

            int rowsAffected = preparedStatement.executeUpdate();
out.println("<body bgcolor='red'>Successfully created the account.</body>");

            if (rowsAffected > 0) {
                // Account created successfully, redirect to home.html
                res.sendRedirect("home.html");
 //out.println("<body bgcolor='lightcoral'>Successfully created the account.</body>");
            } else {
                res.sendRedirect("index.html?error=1") ;
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
