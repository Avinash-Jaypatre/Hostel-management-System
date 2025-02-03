<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Navbar</title>
    <!-- Bootstrap CSS -->
     <link href="/bootstrap/bootstrap.min.css"rel="stylesheet">
     
    </head>
<body>
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top bg-dark  ">
        <div class="container-fluid ">
            <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="Home.jsp" class="nav-link">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a href="Gallary.jsp" class="nav-link">GALLARY</a>
                    </li>
                   <li class="nav-item dropdown ">
                        <a href="#" class="nav-link dropdown-toggle " id="roomsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">HOSTELS</a>
                        <ul class="dropdown-menu bg-warning" aria-labelledby="roomsDropdown">
                            <li><a href="BoysRegistartion.jsp" class="dropdown-item">BOYS HOSTEL</a></li>
                            <li><a href="GirlsRagistartion.jsp" class="dropdown-item">GIRLS HOSTEL</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="ContactUs.jsp" class="nav-link">CONTACT</a>
                    </li>                                     
                    <li class="nav-item">
                        <a href="AboutUs.jsp" class="nav-link">ABOUT-US</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>