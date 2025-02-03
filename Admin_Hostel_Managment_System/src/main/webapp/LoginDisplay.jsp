<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Successful</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center text-success">Registration Successful</h2>
        <div class="card p-4">
          
            <table class="table table-bordered table-striped">
                <thead class="">
                    <tr>
                        <th>firstName</th>
                        <th>lastname</th>
                         <th>email</th>
                        <th>Password</th>
                        <th>confirmPassword</th>
                        
                        

                        
                        
                    </tr>
                </thead>
                <tbody>
                    <%
                        Connection conn = null;
                        PreparedStatement pst = null;
                        ResultSet rs = null;

                        try {
                            // Database Connection
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteldb", "root", "root");

                            // Fetch Last Registered Student
                            String query = "SELECT * FROM ragistration ORDER BY id DESC LIMIT 1";
                            pst = conn.prepareStatement(query);
                            rs = pst.executeQuery();

                            if (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString("firstName") %></td>
                        <td><%= rs.getString("lastname") %></td>
                        <td><%= rs.getString("email") %></td>
                        <td><%= rs.getString("Password") %></td>
                        <td><%= rs.getString("confirmPassword") %></td>
                        
                    </tr>
                    <%
                            } else {
                                out.println("<tr><td colspan='12' class='text-center text-danger'>No registration found!</td></tr>");
                            }
                        } catch (Exception e) {
                            out.println("<tr><td colspan='12' class='text-center text-danger'>Database Error: " + e.getMessage() + "</td></tr>");
                        } finally {
                            if (rs != null) rs.close();
                            if (pst != null) pst.close();
                            if (conn != null) conn.close();
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>
