<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
     <jsp:include page="Navbar.jsp"/>
    <!-- Contact Form Section -->
    <div class="container-fluid py-5 text-white" style="background-image: url('bg.jpg'); background-size: cover; background-position: center;height: auto;width: auto;">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h2 class="text-center">CONTACT <span class="text-warning">US !!</span></h2>
                <h3 class="text-center">"Your Thoughts Matter to Us."</h3>
                <form >
                    <div class="mb-3 mt-5">
                        <label for="name" class="form-label">Full Name</label>
                        <input type="text" class="form-control" name="name" placeholder="Your name" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email address</label>
                        <input type="email" class="form-control" name="email" placeholder="Your email" required>
                    </div>
                    <div class="mb-3">
                        <label for="message" class="form-label">Message</label>
                        <textarea class="form-control" name="message" rows="4" placeholder="Your message" required></textarea>
                    </div>
                    <div class="text-center">
                    <button type="submit" class="btn btn-outline-warning" name="submit" value="REGISTER">Submit Message</button>
                    </div>
                    
                </form>
                
                 <!-- JDBC Code Start -->
                <%
                    String nameSender = request.getParameter("name");
                    String emailSender = request.getParameter("email");
                    String messageSender = request.getParameter("message");
                    String x = request.getParameter("submit");
                	if(x!=null && x.equals("REGISTER"))
                		{
                			String url = "jdbc:mysql://localhost:3306?user=root&password=root";
                	
                			try
                			{
                				Class.forName("com.mysql.jdbc.Driver");
                        		Connection con = DriverManager.getConnection(url);
                            	 		
                        		String query = "insert into hosteldb.contactus(name,email,message) values(?,?,?)";

                        		PreparedStatement pstmt = con.prepareStatement(query);
                            	 		pstmt.setString(1,nameSender);
                            	 		pstmt.setString(2,emailSender);
                            	 		pstmt.setString(3,messageSender);

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
                <!-- JDBC Code End -->
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    	<jsp:include page="Footer.jsp" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    