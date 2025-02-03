<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Submitted Messages</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center">Contact Us..!!</h2>

    <table class="table table-bordered table-striped mt-3">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Full Name</th>
                <th>Email</th>
                <th>Message</th>
            </tr>
        </thead>
        <tbody>
            <%
                // Database connection details
                String jdbcURL = "jdbc:mysql://localhost:3306/hosteldb";
                String dbUser = "root";
                String dbPassword = "root";

                Connection con = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

                    String fetchQuery = "SELECT * FROM contactus";
                    pstmt = con.prepareStatement(fetchQuery);
                    rs = pstmt.executeQuery();

                    while (rs.next()) {
                        int id = rs.getInt("id");
                        String name = rs.getString("name");
                        String email = rs.getString("email");
                        String message = rs.getString("message");
            %>
            <tr>
                <td><%= id %></td>
                <td><%= name %></td>
                <td><%= email %></td>
                <td><%= message %></td>
            </tr>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
            %>
            <tr>
                <td colspan="4" class="text-center text-danger">Error fetching data. Please try again later.</td>
            </tr>
            <%
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (con != null) try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
                }
            %>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
