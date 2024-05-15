<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<link rel="stylesheet" href="../Stylesheet/aboutus.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
		<jsp:include page="header.jsp"></jsp:include>

        <main>
            <div>
                <h1 class="text-blue-700 bg-gray-200 py-14 text-4xl font-bold text-center">Mission & Vision</h1>
            </div>
            <div class="flex justify-center">
                <div class="flex flex-col justify-center">
                    <div>
                        <p class="font-bold text-xl">Mission</p>
                        <p>Our mission is to create quality footwear at competitive prices with innovative technology.
                        </p>
                    </div>
                    <div>
                        <p class="font-bold text-xl">Vision</p>
                        <p>We envision Goldstar to be a part of people’s lives in every continent of the world by 2025.</p>
                    </div>
                </div>
                <div class="w-30 h-30">
                    <img src="../images/itDokan.svg" class="w-full h-full" alt="">
                </div>
            </div>
            <div>
                <h1 class="text-blue-700 bg-gray-200 py-14 text-4xl font-bold text-center"> Who We Are?</h1>
            </div>
            <div>
                <p>Here at ItDokan, we work hard to give our cherished clients top-notch goods and services. Our commitment to client satisfaction and our passion for providing high-quality goods marked the beginning of our journey. Allow us to present you to the group that drives our success:
                </p>
                <div class="my-5 p-5">
                    <p class="text-lg font-bold">Introducing Our Team:</p>
                    <p class="text-base font-bold">
                        Bijen Thapa, the CEO and founder
                    </p> 
                    Bijen is the creative director of ItDokan. Bijen leads our team with a clear vision and a commitment to excellence. He has years of e-commerce experience and a love for innovation.
                </div>
                <div class="my-5 p-5">
                    <p class="text-base font-bold">Pradip Shahi - Head of operation</p>
                    <p>
                    Pradip is in charge of managing our e-commerce platform's daily operations, making sure that everything runs smoothly and effectively. Pradip keeps everything organized and functioning smoothly with his attention to detail.
                    </p>
                </div>
                <div class="my-5 p-5">
                    <p class="text-base font-bold">Amrit Gurung - Director of Marketing</p>
                    It is Amrit's responsibility to publicize ItDokan and draw in new clients. Amrit helps us achieve greater things with his innovative tactics and proficiency in digital marketing.
                </div>
                <div class="my-5 p-5">
                    <p class="text-base font-bold">Ayush Malla - Customer Experience Manager</p>
                    <p>Ayush is committed to making sure each and every client has a satisfying interaction with ItDokan. He provides great service by going above and above to address problems and respond to questions.</p>
                </div>
            </div>
        </main>
            <!-- footer section start -->
   

<jsp:include page="footer.jsp"></jsp:include>
    <!-- footer section end -->

    <!-- footer section for mobile devices or devices width less then 640px -->
    <div class="w-full bg-white py-5 px-2 border-solid border-2 hidden max-sm:block sticky bottom-0 ">
        <ul class="flex justify-between">
            <li><a class="flex flex-col items-center" href=""><i class="fa-solid fa-house"></i>Home</a></li>
            <li><a class="flex flex-col items-center" href=""><i class="fa-solid fa-magnifying-glass"></i>Search</a></li>
            <li><a class="flex flex-col items-center" href=""><i class="fa-solid fa-desktop"></i>CustomPc</a></li>
            <li><a class="flex flex-col items-center" href=""><i class="fa-solid fa-cart-shopping mr-2"></i>Cart</a></li>
            <li><a class="flex flex-col items-center" href=""><i class="fa-solid fa-user"></i>Account</a></li>
        </ul>
    </div>
</body>
</html>