<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Boys Hostel Registration Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
     body {
            background-color: #f8f9fa;
            animation: fadeIn 2s ease-in-out;
        }

        .card {
            border: none;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: scale(1.02);
            box-shadow: 0px 8px 12px rgba(0, 0, 0, 0.2);
        }

        input, textarea, select {
            transition: box-shadow 0.3s ease, transform 0.3s ease;
        }

        input:focus, textarea:focus, select:focus {
            box-shadow: 0 0 5px #007bff;
            transform: scale(1.01);
        }

        button {
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideUp {
            from {
                transform: translateY(50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .animated-card {
            animation: slideUp 1s ease-in-out;
        }
        </style>
</head>
<body>
<jsp:include page="Navbar.jsp" />
    <div class="container-fluid  text-white" style="background-image: url('bg1.jpg'); background-size: cover; background-position: center;height: auto;width: auto;">
        <h2 class="text-center mb-4">Boys Hostel Registration Form</h2>
        <form>
            <!-- Personal Information Section -->
            <div class="card p-4 text-white" style="background-image: url('bg1.jpg'); background-size: cover; background-position: center;height: auto;width: auto;">
            <div class="row col-md-6 offset-3">
                <div class="mb-3">
                    <label for="fullName" class="form-label">Full Name</label>
                    <input type="text" class="form-control" name="fullName" placeholder="Enter your full name" required>
                </div>
                <div class="mb-3">
                    <label for="dob" class="form-label">Date of Birth</label>
                    <input type="number" class="form-control" name="dob" required>
                </div>
                <div class="mb-3">
                    <label for="nationality" class="form-label">Nationality</label>
                    <input type="text" class="form-control" name="nationality" placeholder="Enter your nationality" required>
                </div>
            </div>
            </div>

            <!-- Contact Details Section -->
            <div class="card p-4 mt-4 text-white" style="background-image: url('bg1.jpg'); background-size: cover; background-position: center;height: auto;width: auto;">
                <div class="row col-md-6 offset-3">
                <h4 class="mb-3">Contact Details</h4>
                <div class="mb-3">
                    <label for="phone" class="form-label">Phone Number</label>
                    <input type="number" class="form-control" name="phone" placeholder="Enter your phone number" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email Address</label>
                    <input type="email" class="form-control" name="email" placeholder="Enter your email" required>
                </div>
                <div class="mb-3">
                    <label for="address" class="form-label">Permanent Address</label>
                    <textarea class="form-control" name="address" rows="3" placeholder="Enter your address" required></textarea>
                </div>
               </div>
            </div>

            <!-- Academic Information Section -->
            <div class="card p-4 mt-4 text-white" style="background-image: url('bg1.jpg'); background-size: cover; background-position: center;height: auto;width: auto;">
              <div class="row col-md-6 offset-3">
                <h4 class="mb-3">Academic Information</h4>
                <div class="mb-3">
                    <label for="collegeName" class="form-label">College/Institute Name</label>
                    <input type="text" class="form-control" name="collegeName" placeholder="Enter your college name" required>
                </div>
                <div class="mb-3">
                    <label for="course" class="form-label">Course</label>
                    <input type="text" class="form-control" name="course" placeholder="Enter your course name" required>
                </div>
                <div class="mb-3">
                    <label for="yearOfStudy" class="form-label">Year of Study</label>
                    <select class="form-select" name="yearOfStudy" required>
                        <option selected disabled>Select Year</option>
                        <option value="1">1st Year</option>
                        <option value="2">2nd Year</option>
                        <option value="3">3rd Year</option>
                        <option value="4">4th Year</option>
                    </select>
                    
                </div>
                </div>
            </div>

            <!-- Submit Section -->
            
            <div class="text-center mt-4">
                <button type="submit" class="btn btn-outline-warning" name="submit" value="REGISTER">Submit</button>
                 <button type="reset" class="btn btn-outline-secondary">Reset</button>
            </div>
        </form>
      
        <%

        String fullName = request.getParameter("fullName");
        String dob = request.getParameter("dob");
        String nationality = request.getParameter("nationality");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String collegeName = request.getParameter("collegeName");
        String course = request.getParameter("course");
        String yearOfStudy = request.getParameter("yearOfStudy");

        String x = request.getParameter("submit");
    	if(x!=null && x.equals("REGISTER"))
    		{
    			String url = "jdbc:mysql://localhost:3306?user=root&password=root";
    	
    			try
    			{
    				Class.forName("com.mysql.jdbc.Driver");
            		Connection con = DriverManager.getConnection(url);
                	 		
            		String query = "insert into hosteldb.ragistrationboys (fullName, dob, nationality, phone, email, address, collegeName, course, yearOfStudy) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                    
            		PreparedStatement pstmt = con.prepareStatement(query);
            		pstmt.setString(1, fullName);
                    pstmt.setString(2, dob);
                    pstmt.setString(3, nationality);
                    pstmt.setString(4, phone);
                    pstmt.setString(5, email);
                    pstmt.setString(6, address);
                    pstmt.setString(7, collegeName);
                    pstmt.setString(8, course);
                    pstmt.setString(9, yearOfStudy);

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
    	<jsp:include page="Footer.jsp" />
    	
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>





