<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hostel Gallery</title>
   <!-- Bootstrap CSS -->
     <link href="/bootstrap/bootstrap.min.css"rel="stylesheet">
     
  </head>
  <style>
  span
  {	
  color:red;
  }
  </style>
<body>
	<jsp:include page="Navbar.jsp" />
	<header class=" text-white text-center py-5"style="background-image: url('bg1.jpg'); background-size: cover; background-position: center;">
		<div class="row py-5 ">
			<div class="py-5">

				<h1>Welcome to VP Hostel</h1>
				<p>Explore our facilities through the gallery below</p>
				
		</div>
	</div>
	</header>
	

	<div class="container-fluid  bg-dark" style="background-image: url('bg.jpg'); background-size: cover; background-position: center;">
    <div class="row g-4">
    <div class="text-center text-white"><h4>BOYS <span>HOSTEL</span>  GALLARY !!</h4></div>
      <div class="col-md-6 col-sm-6 py-5">
        <div class="card">
          <img src="images/	room1.jpg" class="card-img-top" alt="Room Interior">
          <div class="card-body text-center py-5">
            <p class="card-text">Comfortable Rooms</p>
          </div>
        </div>
      </div>
      <div class="col-md-6  py-5">
        <div class="card">
          <img src="images/room2.jpg" class="card-img-top" alt="Room Interior 2">
          <div class="card-body text-center py-5">
            <p class="card-text">Spacious Living</p>
          </div>
        </div>
      </div>
      
      <div class="col-md-4 col-sm-6 py-5">
        <div class="card">
          <img src="images/study.jpg" class="card-img-top" alt="Study Area">
          <div class="card-body text-center py-5">
            <p class="card-text">Quiet Study Spaces</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 py-5">
        <div class="card">
          <img src="images/lounge.jpg" class="card-img-top" alt="Lounge Area">
          <div class="card-body text-center py-5">
            <p class="card-text">Relaxing Lounge Area</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 py-5">
        <div class="card">
          <img src="images/gym.jpg" class="card-img-top" alt="Gym">
          <div class="card-body text-center py-5">
            <p class="card-text">Fully Equipped Gym</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  
	<div class="container-fluid  bg-dark"style="background-image: url('bg1.jpg'); background-size: cover; background-position: center;">
    <div class="row g-4">
    <div class="text-center text-white"><h4>Girls <span>HOSTEL</span>  GALLARY !!</h4></div>
      <div class="col-md-4 col-sm-6 py-5">
        <div class="card">
          <img src="images/room1.jpg" class="card-img-top" alt="Room Interior">
          <div class="card-body text-center py-5">
            <p class="card-text">Comfortable Rooms</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 py-5">
        <div class="card">
          <img src="images/room2.jpg" class="card-img-top" alt="Room Interior 2">
          <div class="card-body text-center py-5">
            <p class="card-text">Spacious Living</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 py-5">
        <div class="card">
          <img src="images/dining.jpg" class="card-img-top" alt="Dining Area">
          <div class="card-body text-center py-5">
            <p class="card-text">Modern Dining Facilities</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 py-5">
        <div class="card">
          <img src="images/study.jpg" class="card-img-top" alt="Study Area">
          <div class="card-body text-center py-5">
            <p class="card-text">Quiet Study Spaces</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 py-5">
        <div class="card">
          <img src="images/lounge.jpg" class="card-img-top" alt="Lounge Area">
          <div class="card-body text-center py-5">
            <p class="card-text">Relaxing Lounge Area</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 py-5">
        <div class="card">
          <img src="images/gym.jpg" class="card-img-top" alt="Gym">
          <div class="card-body text-center py-5">
            <p class="card-text">Fully Equipped Gym</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  
 <jsp:include page="Footer.jsp" />

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <link href="/bootstrap/bootstrap.min.css"rel="stylesheet"> -->
      <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
     
</body>
</html>
