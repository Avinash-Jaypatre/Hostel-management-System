<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Panel</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link href="main.css" rel="stylesheet">

<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .dashboard-title {
            font-size: 2rem;
            font-weight: bold;
            margin: 20px 0;
            animation: fadeInDown 1.5s ease-in-out;
        }
        .card {
            animation: fadeInUp 1s ease-in-out;
        }
        .navbar {
            animation: slideInLeft 1s ease-in-out;
        }
        @keyframes slideInLeft {
            from {
                transform: translateX(-100%);
            }
            to {
                transform: translateX(0);
            }
        }
    </style>
</head>

<body>
	<div class="abc">
		<div class="navbar-side">
			<h6>
				<span class="icon"><i class=""></i></span> <span class="link-text">Admin
					Panel</span>
			</h6>
			<ul>
				<li><a href="#" class="link-active" title="Dashboard"> <span
						class="icon"><i class="fas fa-chart-bar"></i></span> <span
						class="link-text">Dashboard</span>
				</a></li>
				<li><a href="#" class="myBtn" data-toggle="collapse"
					data-target="#my-sub" title="Post" aria-expanded="false"> <span
						class="icon"><i class="fas fa-list"></i></span> <span
						class="link-text">HOSTELS</span>

				</a>
					<div id="my-sub" class="collapse bg-secondary">
						<a href="BoysHostel.jsp" title="All Post"> <span class="icon"><i
								class="fas fa-copy"></i></span> <span class="link-text">Boys Hostel</span>
						</a> <a href="GirlsregistrationSuccess.jsp" title="Add Post"> <span class="icon"><i
								class="fas fa-copy"></i></span> <span class="link-text">Girls Hostel	</span>
						</a>
					</div></li>
				<li><a href="LoginDisplay.jsp" title="Category"> <span class="icon"><i
							class="fas fa-list-alt"></i></span> <span class="link-text">Login
							Details</span>
				</a></li>
				<li><a href="contactus.jsp" title="Profile"> <span class="icon"><i
							class="fas fa-user-circle"></i></span> <span class="link-text">Contactus
							Details</span>
				</a></li>
				<li><a href="#" title="Sign Out"> <span class="icon"><i
							class="fas fa-sign-out-alt"></i></span> <span class="link-text">Sign
							Out</span>
				</a></li>
			</ul>
		</div>
		<div class="content">
			<nav class="navbar navbar-dark bg-dark py-1">

				<a href="#" id="navBtn"> <span id="changeIcon"
					class="fa fa-bars text-light"></span>
				</a>

				<div class="d-flex">
					<a class="nav-link text-light px-2" href="#"><i
						class="fas fa-search"></i></a> <a class="nav-link text-light px-2"
						href="#"><i class="fas fa-sign-out-alt"></i></a>
				</div>

			</nav>
			
		
<%
    int totalStudents = 0;
    int totalGirls = 0;
    int totalBoys = 0;
    int contactReports = 0;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteldb", "root", "root");

        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM contactus");
        if (rs.next()) {
            totalStudents = rs.getInt("total");
        }

        rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM ragistrationboys");
        if (rs.next()) {
            totalGirls = rs.getInt("total");
        }

        rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM contactus");
        if (rs.next()) {
        	contactReports = rs.getInt("total");
        }

        rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM hostel_registration ");
        if (rs.next()) {
        	totalBoys = rs.getInt("total");
        }

        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>



    


    <header class="bg-dark text-white py-3 navbar animate__animated animate__fadeInDown">
        <div class="container">
            <h1 class="text-center">Admin Dashboard</h1>
        </div>
    </header>

    <div class="container mt-5">
        <h2 class="dashboard-title text-center animate__animated animate__fadeInUp">Statistics Overview</h2>
        <div class="row">
            <!-- Total Registered Students -->
            <div class="col-md-3">
                <div class="card text-white bg-primary mb-3 animate__animated animate__zoomIn">
                    <div class="card-header">Total Students</div>
                    <div class="card-body">
                        <h5 class="card-title"><%= totalStudents %></h5>
                    </div>
                </div>
            </div>
            <!-- Total Registered Girls -->
            <div class="col-md-3">
                <div class="card text-white bg-success mb-3 animate__animated animate__zoomIn" style="animation-delay: 0.3s;">
                    <div class="card-header">Total Boys</div>
                    <div class="card-body">
                        <h5 class="card-title"><%= totalGirls %></h5>
                    </div>
                </div>
            </div>
            <!-- Total Registered Boys -->
            <div class="col-md-3">
                <div class="card text-white bg-info mb-3 animate__animated animate__zoomIn" style="animation-delay: 0.6s;">
                    <div class="card-header">Contact Reports</div>
                    <div class="card-body">
                        <h5 class="card-title"><%= contactReports %></h5>
                    </div>
                </div>
            </div>
            <!-- Contact Us Reports -->
            <div class="col-md-3">
                <div class="card text-white bg-warning mb-3 animate__animated animate__zoomIn" style="animation-delay: 0.9s;">
                    <div class="card-header">Total Girls</div>
                    <div class="card-body">
                        <h5 class="card-title"><%= totalBoys %></h5>
                    </div>
                </div>
            </div>
        </div>

        <h2 class="dashboard-title text-center mt-5 animate__animated animate__fadeInUp">Detailed Statistics</h2>
        <table class="table table-striped animate__animated animate__fadeIn">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Metric</th>
                    <th scope="col">Value</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Total Students</td>
                    <td><%= totalStudents %></td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Total Girls</td>
                    <td><%= totalGirls %></td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Total Boys</td>
                    <td><%= totalBoys %></td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td>Contact Reports</td>
                    <td><%= contactReports %></td>
                </tr>
            </tbody>
        </table>
    </div>
			
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
			<script
				src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
			<script
				src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
			<script src="script.js"></script>
</body>

</html>