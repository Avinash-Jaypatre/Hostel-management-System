<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <div class="container">
    <h2 class="text-center mt-5">Registration Form</h2>
    <div class="row justify-content-center mt-3">
      <div class="col-md-6">
        <form>
          <div class="mb-3">
            <label for="firstName" class="form-label">First Name</label>
            <input type="text" class="form-control" name="firstName" placeholder="Enter your first name" required>
          </div>
          <div class="mb-3">
            <label for="lastName" class="form-label">Last Name</label>
            <input type="text" class="form-control" name="lastname" placeholder="Enter your last name" required>
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">Email address</label>
            <input type="email" class="form-control" name="email" placeholder="Enter your email" required>
          </div>
          <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" name="Password" placeholder="Enter your password" required>
          </div>
          <div class="mb-3">
            <label for="confirmPassword" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" name="confirmPassword" placeholder="Confirm your password" required>
          </div>
          <button type="submit" class="btn btn-outline-danger w-100" name="submit" value="REGISTER">Register</button>
        </form>
        <!-- Data base code start -->
        
        <%
        	String name = request.getParameter("firstName");
        	String lname = request.getParameter("lastname");
        	String email = request.getParameter("email");
        	String pass = request.getParameter("Password");
        	String confirmPass = request.getParameter("confirmPassword");
        	String x = request.getParameter("submit");
        	
        	if(x!=null && x.equals("REGISTER"))
        		{
        			String url = "jdbc:mysql://localhost:3306?user=root&password=root";
        	
        			try
        			{
        				Class.forName("com.mysql.jdbc.Driver");
                		Connection con = DriverManager.getConnection(url);
                    	 		
                		String query = "insert into hosteldb.ragistration(firstName, lastName, email, password, confirmPassword) values(?,?,?,?,?)";
                
                		PreparedStatement pstmt = con.prepareStatement(query);
                    	 		pstmt.setString(1,name);
                    	 		pstmt.setString(2,lname);
                    	 		pstmt.setString(3,email);
                    	 		pstmt.setString(4,pass);
                    	 		pstmt.setString(5,confirmPass);
                    	 		pstmt.executeUpdate();
                    	 		System.out.println("Data entered....");
                    	 		
                    	 		}
                    	 		catch(Exception e)
                    	 		{
                    	 			e.printStackTrace();
                    	 			System.out.println("Exception handled....!");
                    	 		}
             	}
            
            %>
                    	 		
        	
       
        
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>



    