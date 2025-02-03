<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GIRLS HOSTEL REGISTRATION FORM</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
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
    <div class="container-fluid text-white"style="background-image: url('bg1.jpg'); background-size: cover; background-position: center;height: auto;width: auto;">
        
        <h2 class="text-center mb-4 py-5">GIRLS HOSTEL REGISTRATION FORM</h2>
        <form>
            <!-- Personal Information Section -->
            <div class="col-md-6 offset-3">
            <div class="card p-4 mb-4 animated-card text-white" style="background-image: url('bg1.jpg'); background-size: cover; background-position: center;height: auto;width: auto;">
                <div class="mb-3">
                    <label for="fullName" class="form-label">Full Name</label>
                    <input type="text" class="form-control" name="fullName" placeholder="Enter your full name" required>
                </div>
                <div class="mb-3">
                    <label for="dob" class="form-label">Date of Birth</label>
                    <input type="date" class="form-control" name="dob" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Gender</label>
                    <input type="text" class="form-control" value="Female" disabled>
                </div>
                <div class="mb-3">
                    <label for="nationality" class="form-label">Nationality</label>
                    <input type="text" class="form-control" name="nationality" placeholder="Enter your nationality" required>
                </div>
            </div>
            </div>

            <!-- Contact Details Section -->
            <div class="col-md-6 offset-3">
            <div class="card p-4 mb-4 animated-card text-white" style="background-image: url('bg1.jpg'); background-size: cover; background-position: center;height: auto;width: auto;">
                <h4 class="mb-3">Contact Details</h4>
                <div class="mb-3">
                    <label for="phone" class="form-label">Phone Number</label>
                    <input type="tel" class="form-control" name="phone" placeholder="Enter your phone number" required>
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
            <div class="col-md-6 offset-3">
            
            <div class="card p-4 mb-4 animated-card text-white" style="background-image: url('bg1.jpg'); background-size: cover; background-position: center;height: auto;width: auto;">
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

            <!-- Parent/Guardian Information Section -->
            <div class="col-md-6 offset-3">
            <div class="card p-4 mb-4 animated-card text-white" style="background-image: url('bg1.jpg'); background-size: cover; background-position: center;height: auto;width: auto;">
                <h4 class="mb-3">Parent/Guardian Information</h4>
                <div class="mb-3">
                    <label for="guardianName" class="form-label">Guardian's Name</label>
                    <input type="text" class="form-control" name="guardianName" placeholder="Enter guardian's name" required>
                </div>
                <div class="mb-3">
                    <label for="guardianPhone" class="form-label">Guardian's Phone Number</label>
                    <input type="tel" class="form-control" name="guardianPhone" placeholder="Enter guardian's phone number" required>
                </div>
                <div class="mb-3">
                    <label for="relation" class="form-label">Relation with Guardian</label>
                    <input type="text" class="form-control" name="relation" placeholder="Enter relation (e.g., Father, Mother)" required>
                </div>
            </div>
            </div>

           

            <!-- Submit Section -->
            <div class="text-center mt-4">
                <button type="submit" class="btn btn-outline-warning">Submit</button>
                <button type="reset" class="btn btn-outline-info">Reset</button>
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
                String guardianName = request.getParameter("guardianName");
                String guardianPhone = request.getParameter("guardianPhone");
                String relation = request.getParameter("relation");
                
                Connection con = null;
                PreparedStatement pst = null;
                String url = "jdbc:mysql://localhost:3306/hosteldb";
                String user = "root";
                String pass = "root";

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection(url, user, pass);
                    String query = "INSERT INTO  hostel_registration (fullName, dob, nationality, phone, email, address, collegeName, course, yearOfStudy, guardianName, guardianPhone, relation) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                    pst = con.prepareStatement(query);
                    pst.setString(1, fullName);
                    pst.setString(2, dob);
                    pst.setString(3, nationality);
                    pst.setString(4, phone);
                    pst.setString(5, email);
                    pst.setString(6, address);
                    pst.setString(7, collegeName);
                    pst.setString(8, course);
                    pst.setString(9, yearOfStudy);
                    pst.setString(10, guardianName);
                    pst.setString(11, guardianPhone);
                    pst.setString(12, relation);

                    int row = pst.executeUpdate();
                    if (row > 0) {
                        out.println("<div class='alert alert-success text-center'>Registration Successful!</div>");
                    } else {
                        out.println("<div class='alert alert-danger text-center'>Registration Failed. Try Again!</div>");
                    }
                } catch (Exception e) {
                    out.println("<div class='alert alert-danger text-center'>Error: " + e.getMessage() + "</div>");
                } finally {
                    if (pst != null) pst.close();
                    if (con != null) con.close();
                }
            %>
    </div>
    <jsp:include page="Footer.jsp" />

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
