<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-md-6 col-lg-4">
                <div class="card shadow">
                    <div class="card-body">
                        <h2 class="text-center mb-4">Login</h2>
                        <form method="post">
                            <div class="mb-3">
                                <label for="email" class="form-label">USERNAME :</label>
                                <input type="text" id="email" name="email" class="form-control" required>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">PASSWORD:</label>
                                <input type="password" id="password" name="password" class="form-control" required>
                            </div>
                            <div class="d-grid">
                                <input type="submit" value="Login" class="btn btn-outline-info">
                            </div>
                        </form>
                        <div class="text-center mt-3">
                            <small>Don't have an account? <a href="Ragistration.jsp">Register here</a></small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email != null && password != null) {
            try {
                // Establish database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/psjc","root","root");
                
                // Check user credentials
                String sql = "SELECT * FROM ragistrtionn WHERE email = ? AND password = ?";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, email);
                stmt.setString(2, password);
                ResultSet rs = stmt.executeQuery();

                if (rs.next()) 
                {
                    out.println("<p>Login successful! Welcome, " + email + ".</p>");
                    response.sendRedirect("Home.jsp");
                } else {
                    out.println("<p>Invalid username or password.</p>");
                }

                // Close resources
                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception e) 
            {
               out.println("<p>Error: " + e.getMessage() + "</p>");
            }
        }
    %>
</body>
</html>
    