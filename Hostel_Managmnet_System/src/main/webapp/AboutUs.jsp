<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABOUT-US</title>
    
    
    <!--Java Script Link-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <!--Google font link-->
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Josefin+Slab:ital,wght@0,100..700;1,100..700&family=Noto+Sans:ital,wght@0,100..900;1,100..900&family=Noto+Serif:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
   

    <!--Bootstrap Link-->
  	 <link href="/bootstrap/bootstrap.min.css"rel="stylesheet">
     <link href="/image/bgimage.jpg"rel="stylesheet">

<style>
span
{
color:#ffc107;
}
</style>
</head>
<body>
<jsp:include page="Navbar.jsp" />
  <div class ="container-fluid py-5 text-white"style="background-image: url('bg1.jpg'); background-size: cover; background-position: center;">
    <div class ="row rounded-4 border border-3 border border-warning ">
        <div class="  py-5">
            <h1 class="text-center py-5 ">ABOUT-<span> US</span> <br>______ </h1>
            <p class="text-black text-center text-white">
                Welcome to the Vidya Pratishthan College Hostel, a home away from home for students pursuing academic excellence at our esteemed institution. Our hostel is designed to provide a safe, comfortable, and nurturing environment
                 that supports the holistic development of students. Equipped with modern amenities, secure accommodations, and a vibrant community, we aim to create a space where students can focus on their studies, build lasting friendships,
                  and grow personally and professionally. At Vidya Pratishthan, we believe in fostering a culture of discipline, inclusivity, and mutual respect, ensuring every resident enjoys a harmonious living experience while achieving their 
                  academic aspirations.</div>
    </div>
  </div>
  <jsp:include page="Footer.jsp" />
</body>
</html>