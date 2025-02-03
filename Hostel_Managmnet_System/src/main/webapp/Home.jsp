<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hostel Management System</title>
<!-- Bootstrap CSS
    
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">



<style>
span {
	color: #ffc107;
}

.card {
	transition: transform 0.3s, box-shadow 0.3s;
}

.card:hover {
	transform: scale(1.05);
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<jsp:include page="Navbar.jsp" />
	<!-- Hero Section -->
	<section class="bghostel bg-info text-white text-center py-5 pt-5"
		style="background-image: url('bg1.jpg'); background-size: cover; background-position: center;">
		<div class="container my-5">
			<h1>	WELCOME TO THE VIDYA PRATISHTHAN</h1>
			<p class="lead">
				VP<span> BARAMATI</span>
			</p>

			<div class="dropdown mt-5">
				<button class="btn btn-outline-warning btn-lg dropdown-toggle"
					type="button" id="dropdownMenuButton" data-bs-toggle="dropdown"
					aria-expanded="false">Book a Room</button>
				<ul class="dropdown-menu bg-warning"
					aria-labelledby="dropdownMenuButton">
					<li><a class="dropdown-item bg-warning"
						href="BoysRegistartion.jsp">Boys Hostel</a></li>
					<li><a class="dropdown-item bg-warning"
						href="GirlsRagistartion.jsp">Gils Hostel</a></li>
				</ul>
			</div>
		</div>
	</section>

	<!-- Features Section -->
	<section class="py-5 "
		style="background-image: url('bg.jpg'); background-size: cover; background-position: center;">
		<div class="container text-center">
			<h2 class="mb-4 text-white">Why Choose Us?</h2>
			<div class="row g-4 ">
				<div class="col-md-4 ">
					<div class="card shadow-sm mt-3"
						style="background-image: url('twntyfor.jpg'); background-size: cover; background-position: center;">
						<div class="card-body my-5 py-5 text-white">
							<h5 class="card-title">24/7 Security</h5>
							<p class="card-text">We ensure your safety with
								round-the-clock surveillance.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 ">
					<div class="card shadow-sm  mt-3 text-white"
						style="background-image: url('farnishedroom.jpg'); background-size: cover; background-position: center;">
						<div class="card-body my-5 py-5">
							<h5 class="card-title ">Fully Furnished Rooms</h5>
							<p class="card-text">Enjoy the comfort of fully equipped and
								cozy rooms.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card shadow-sm  mt-3 "
						style="background-image: url('securitybg.jpg'); background-size: cover; background-position: center;">
						<div class="card-body my-5 py-5 text-white">
							<h5 class="card-title">Technology Integration</h5>
							<p class="card-text">Stay connected with fast and reliable
								internet access.</p>
						</div>
					</div>
				</div>
			</div>

			<div class="row g-4">
				<div class="col-md-4">
					<div class="card shadow-sm mt-3"
						style="background-image: url('safehouse.jpg'); background-size: cover; background-position: center;">
						<div class="card-body my-5 py-5 mb-5 text-white">
							<h5 class="card-title">Comfortable and Safe Environment</h5>
							<p class="card-text">We prioritize the comfort and safety of
								our residents, providing clean, secure</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 ">
					<div class="card shadow-sm  mt-3"
						style="background-image: url('primelocation.jpg'); background-size: cover; background-position: center;">
						<div class="card-body my-5 py-5 mb-5 text-white">
							<h5 class="card-title">Prime Location</h5>
							<p class="card-text">Located near key amenities such as
								educational institutions</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card shadow-sm  mt-3 "
						style="background-image: url('staff.jpg'); background-size: cover; background-position: center;">
						<div class="card-body my-5 py-5 mb-5 text-white">
							<h5 class="card-title">Friendly and Supportive Staff</h5>
							<p class="card-text">SOur staff is dedicated to providing
								excellent customer service</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</section>


	<!-- Hero Section -->
	<section class="bghostel bg-info text-white text-center py-5 pt-5"
		style="background-image: url('bg.jpg'); background-size: cover; background-position: center;">
		<div class="container my-5">
			<h1>"Your Queries, Our Priority."</h1>
			<p class="lead">
				VP<span> BARAMATI</span>
			</p>
			<a href="#" class="btn btn-outline-warning btn-lg mt-5">CONTACT
				US !!</a>
		</div>
	</section>


	<section class="">
		<div class="container-fluid py-5"
			style="background-image: url('bg1.jpg'); background-size: cover; background-position: center;">
			<div class="row">
				<div class="col-md-6">
					<section id="location" style="text-align: center; margin: 20px 0;">
						<div class="text-white">
							<h2>OUR LOCATION !!</h2>
							<p>Find us at:</p>
							<p>
								Vidyanagari, VP College, Vidya Nagari,<span>BARAMATI</span>
								Maharashtra 413133
							</p>
						</div>
				</div>
				<div class="col-md-6 ">
					<div class="ml-5 text-center">
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3790.731414286764!2d74.61115610894915!3d18.176282582780214!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc39f4f80205491%3A0x1d66a679fcf526b6!2sGirl&#39;s%20Hostel%20%22%20D%20%22%20Vp%20college!5e0!3m2!1sen!2sin!4v1735818873323!5m2!1sen!2sin"
							width="400" height="200" style="border: 0;loading="
							lazy" referrerpolicy="no-referrer-when-downgrade"> </iframe>
					</div>

				</div>
			</div>
		</div>
	</section>

	<jsp:include page="Footer.jsp"/>



</body>
</html>
