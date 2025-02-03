<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registered Students</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .table-container {
            margin: 50px auto;
            max-width: 90%;
        }
    </style>
</head>
<body>
    <div class="container table-container">
        <h2 class="text-center mb-4">Registered Students</h2>
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Full Name</th>
                    <th>Date of Birth</th>
                    <th>Nationality</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>College Name</th>
                    <th>Course</th>
                    <th>Year of Study</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Database connection details
                    String jdbcURL = "jdbc:mysql://localhost:3306/hosteldb";
                    String dbUser = "root";
                    String dbPassword = "root";

                    Connection con = null;
                    Statement stmt = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        con = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                        stmt = con.createStatement();

                        // Check if delete request was made
                        String deleteId = request.getParameter("deleteId");
                        if (deleteId != null) {
                            String deleteQuery = "DELETE FROM ragistrationboys WHERE id = ?";
                            PreparedStatement pstmt = con.prepareStatement(deleteQuery);
                            pstmt.setInt(1, Integer.parseInt(deleteId));
                            pstmt.executeUpdate();
                            pstmt.close();
                        }

                        // Query to fetch data
                        String query = "SELECT * FROM ragistrationboys";
                        rs = stmt.executeQuery(query);

                        // Iterate through the result set
                        while (rs.next()) {
                            int id = rs.getInt("id");
                            String fullName = rs.getString("fullName");
                            String dob = rs.getString("dob");
                            String nationality = rs.getString("nationality");
                            String phone = rs.getString("phone");
                            String email = rs.getString("email");
                            String address = rs.getString("address");
                            String collegeName = rs.getString("collegeName");
                            String course = rs.getString("course");
                            String yearOfStudy = rs.getString("yearOfStudy");

                            // Render data in table rows
                %>
                <tr>
                    <td><%= id %></td>
                    <td><%= fullName %></td>
                    <td><%= dob %></td>
                    <td><%= nationality %></td>
                    <td><%= phone %></td>
                    <td><%= email %></td>
                    <td><%= address %></td>
                    <td><%= collegeName %></td>
                    <td><%= course %></td>
                    <td><%= yearOfStudy %></td>
                    <td>
                        <!-- Delete Button -->
                        <form method="post" style="display:inline;">
                            <input type="hidden" name="deleteId" value="<%= id %>">
                            <button type="submit" class="btn btn-outline-danger btn-sm">Delete</button>
                        </form>
                    </td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                %>
                <tr>
                    <td colspan="11" class="text-center text-danger">Error fetching data. Please try again later.</td>
                </tr>
                <%
                    } finally {
                        try {
                            if (rs != null) rs.close();
                            if (stmt != null) stmt.close();
                            if (con != null) con.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                %>
            </tbody>
        </table>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
