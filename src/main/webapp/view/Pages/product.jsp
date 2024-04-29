<%@page import="com.itDokan.controllers.database.DatabaseController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
	<%
	String id = request.getParameter("userid");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "test";
	String userid = "root";
	String password = "";
	try {
	Class.forName(driver);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../Stylesheet/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body >
        <!-- Header section start -->
        <header class="flex justify-between px-10 py-4 bg-black font-mono text-white max-sm:hidden">
            <div class="flex ">
                <p>Need help?</p>
                <p>01-5350440 | </p>
                <p>Contact</p>
            </div>
            <div class="max-md:hidden">
                <p>Hello world</p>
            </div>
            <div>
                <ul class="flex">
                    <li class="mx-2">
                        My Account
                    </li>
                    <li class="mx-2">
                        Sign in
                    </li>
                </ul>
            </div>
        </header>
        <!-- Header section end -->
    
        <!-- Nav section start -->
        <nav class="max-sm:flex max-sm:justify-between max-sm:items-center">
            <div class="flex justify-around items-center">
                <div class="w-20">
                    <a href="index.html"><img class="" src="images/itDokan.svg" alt=""></a>
                </div>
                <div class="flex items-center flex-1 sm:max-w-[300px] md:max-w-[500px] max-sm:hidden">
                    <input class="border-solid border-2 relative h-10 flex-1 p-2 w-0 max-sm:ml-3" type="text" placeholder="Search">
                    <button class="bg-red-500 p-2 w-[40px] text-center rounded max-sm:mr-3">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </div>
                <div>
                    <ul class="flex max-sm:hidden items-center">
                        <li class="m-2 hover:text-red-500"><a href=""><i class="fa-solid fa-cart-shopping mr-2"></i>Cart</a></li>
                        <li class="m-2 hover:text-red-500"><a href=""><i class="fa-regular fa-heart mr-2"></i>WishList</a></li>
                    </ul>
                </div>
            </div>
            <div class="flex justify-end relative">
                <button class="w-8 h-8 hidden max-sm:block" id="hamburger" onclick="toggleDropdown()"><img src="images/bars-solid.svg" alt=""></button>
            </div>
        </nav>
        <div class="absolute top-15 z-10 w-full" id="dropdownBtn">
            <ul id="dropdown" class="rounded border-gray-300 bg-white shadow-md hidden">
                <li class="cursor-pointer hover:bg-gray-300 p-4">Laptop by Brands</li>
                <li class="cursor-pointer hover:bg-gray-300 p-4">Gaming </li>
                <li class="cursor-pointer hover:bg-gray-300 p-4"> Products</li>
                <li class="cursor-pointer hover:bg-gray-300 p-4"> Sign out</li>
                <li class="cursor-pointer hover:bg-gray-300 p-4">Account Settings</li>
            </ul>
        </div>
        <!-- Nav section end -->
    
        <div class="flex py-2 bg-black max-sm:hidden">
            <div class="relative group" id="dropdownBtn">
                <div class=" px-5 py-2 rounded font-bold text-white">
                    <a href="">
                        Laptop By Brands
                    </a>
                </div>
                <div id="dropdown" class="rounded border-gray-300 bg-white absolute top-10 w-[400px] hidden z-10 group-hover:block">
                    <div class="cursor-pointer hover:bg-gray-300 p-4">Account Settings</div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4">Support </div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4"> License</div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4"> Sign out</div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4">Account Settings</div>
                </div>
            </div>
            <div class="relative group" id="dropdownBtn">
                <div class=" px-5 py-2 rounded font-bold text-white">
                    <a href="">
                        Gaming
                    </a>
                </div>
                <div id="dropdown" class="rounded border-gray-300 bg-white absolute top-10 w-[400px] hidden z-10 group-hover:block">
                    <div class="cursor-pointer hover:bg-gray-300 p-4">Gaming Laptop</div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4">Gaming Mouse </div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4"> Gaming Desktop</div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4"> Gaming Headphone</div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4">Gaming Keyboard</div>
                </div>
            </div>
            <div class="relative group" id="dropdownBtn">
                <div class=" px-5 py-2 rounded font-bold text-white">
                    <a href="product.html">
                        Products
                    </a>
                </div>
                <div id="dropdown" class="rounded border-gray-300 bg-white absolute top-10 w-[400px] hidden z-10 group-hover:block">
                    <div class="cursor-pointer hover:bg-gray-300 p-4">Account Settings</div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4">Support </div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4"> License</div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4"> Sign out</div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4">Account Settings</div>
                </div>
            </div>
        </div>
        
        <!-- <div class="bg-gray-200 flex justify-center items-center h-screen">
            <div class="relative" id="dropdownBtn">
                <div onclick="toggleDropdown()" class="border-solid border-gray-400 border-2 px-5 py-2 rounded cursor-pointer font-bold
                    flex justify-between w-[200px] bg-white shadow-sm">
                    Options
                    <img class="w-3" src="images/arrow-down-svgrepo-com.svg" alt="">
                </div>
                <div id="dropdown" class="rounded border-gray-300 bg-white absolute top-12 w-[400px] shadow-md hidden">
                    <div class="cursor-pointer hover:bg-gray-300 p-4">Account Settings</div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4">Support </div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4"> License</div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4"> Sign out</div>
                    <div class="cursor-pointer hover:bg-gray-300 p-4">Account Settings</div>
                </div>
            </div>
        </div> -->
        <!-- <div class="w-full bg-white py-5 border-solid border-2">
            <ul class="flex justify-between">
                <li><a class="flex flex-col items-center" href=""><i class="fa-solid fa-house"></i>Home</a></li>
                <li><a class="flex flex-col items-center" href=""><i class="fa-solid fa-magnifying-glass"></i>Search</a></li>
                <li><a class="flex flex-col items-center" href=""><i class="fa-solid fa-desktop"></i>CustomPc</a></li>
                <li><a class="flex flex-col items-center" href=""><i class="fa-solid fa-cart-shopping mr-2"></i>Cart</a></li>
                <li><a class="flex flex-col items-center" href=""><i class="fa-solid fa-user"></i>Account</a></li>
            </ul>
        </div> -->

        <!-- Laptop section start -->
        <section class="padding-x sm:py-12 w-full">
            <h2 class="text-3xl text-center font-mono">Laptop</h2>
            
     		
            <div class="sm:grid sm:grid-cols-2 sm:grid-rows-1 xl:grid xl:grid-cols-4 xl:grid-rows-1 gap-3 mt-8">
            <%	
			try{
				DatabaseController dbcon = new DatabaseController();
			Connection con = dbcon.getConnection();
			Statement st =con.createStatement();
			String sql ="select * from product";
			resultSet = st.executeQuery(sql);
			while(resultSet.next()){
			%>
                <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                    <div class="w-[240px] relative">
                        <img src="..\<%= resultSet.getString("image") %>" alt="<%= resultSet.getString("name") %>">
                        <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                    </div>
                    <div class="py-5">
                        <p class="text-base mb-5 font-extrabold"><%=resultSet.getString("name") %></p>
                        <p class="text-xl">
                            <%=resultSet.getString("description") %>
                        </p>
                        <p>Available quantity: <%=resultSet.getString("qty") %></p>
                        <P class="text-xl">Rs <%=resultSet.getString("price") %></P>
                    </div>
                </div>
                <%
			}
			connection.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>
            </div>
            
        </section>
        <!-- Laptop section end -->


        <!-- Accessories section start -->
        <section class="padding-x sm:py-12 w-full">
            <h2 class="text-3xl text-center font-mono">Accessories</h2>
            <div class="sm:grid sm:grid-cols-2 sm:grid-rows-3 xl:grid xl:grid-cols-4 xl:grid-rows-2 gap-3 mt-8">
                <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                    <div class="w-[240px] relative">
                        <img src="images/CHOETECHearbud.webp" alt="">
                        <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                    </div>
                    <div class="py-5">
                        <p class="text-base mb-5 font-extrabold">CHOETECH TRUE WIRELESS EARBUDS BLUETOOTH 5.0 EARBUD (BH-T01)</p>
                        <p class="text-xl">
                            Model: Choetech BH-T01
                            Bluetooth 5.0
                            Frequency response: 60Hz – 20KHz
                            Bluetooth Range: 10M
                            IPX5 waterproof
                        </p>
                        <p class="line-through">
                            Rs 7850
                        </p>
                        <p class="text-xl">
                            Rs 6500
                        </p>
                    </div>
                </div>
                <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                    <div class="w-[240px] relative">
                        <img src="images/RapooVM700.webp" alt="">
                        <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                    </div>
                    <div class="py-5">
                        <p class="text-base mb-5 font-extrabold">Rapoo VM700 Bluetooth TWS Gaming Earbuds – Bluetooth 5.0, Noise Reduction, 5hrs Battery life</p>
                        <P class="text-xl">
                            Bluetooth 5.0, automatic matching at startup
                            APTX technology with low latency
                            Cool intelligent-breathing LED light
                            Noise reduction by double microphones, clearer voice
                            Simple and...<a href="">more</a>
                        </P>
                        <p class="line-through">
                            Rs 7850
                        </p>
                        <p class="text-xl">
                            Rs 6500
                        </p>
                    </div>
                </div>
                <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                    <div class="w-[240px] relative">
                        <img src="images/UGREENearbud.jpg" alt="">
                        <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                    </div>
                    <div class="py-5">
                        <p class="text-base mb-5 font-extrabold">UGREEN HiTune T2 Bluetooth 5.0 Wireless Earbuds</p>
                        <p class="text-xl">
                            Model: HiTune T3
                            Bluetooth 5.2, Protocol: HSP, HFP, A2DP, AVRCP
                            Frequency Response: 20Hz-20KHz
                            Bluetooth Range: 10M
                            IPX5 waterproof
                        </p>
                        <P class="text-xl">Rs 4500</P>
                    </div>
                </div>
                <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                    <div class="w-[240px] relative">
                        <img src="images/KingstonSSD.jpg" alt="">
                        <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                    </div>
                    <div class="py-5">
                        <p class="text-base mb-5 font-extrabold">Kingston A400 240GB 2.5 inch SATA 3 Internal SSD</p>
                        <p class="text-xl">
                            MPN: SA400S37/240G
                            Model: A400 240GB 2.5 inch SATA 3 Internal SSD
                            SATA Rev 3.0 Internal SSD
                            Up to 500 MB/s Read Speed
                            Up to 350 MB/s Write Speed
                            Faster than an HDD
                        </p>
                        <P class="text-xl">Rs 5000</P>
                    </div>
                </div>
                <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                    <div class="w-[240px] relative">
                        <img src="images/Havitkeyboard.jpg" alt="">
                        <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                    </div>
                    <div class="py-5">
                        <p class="text-base mb-5 font-extrabold">Havit HV-KB378 USB Exquisite Wired Keyboard</p>
                        <p class="text-xl">
                            Key Specifications
                            Interface Type: USB/PS2
                            Dimension: 438.5 (L) * 136 (W) * 16.6 (H) mm
                            The number of keys: 104
                            Operation Stroke: 3.0 +- 0.3mm
                            Cable Length: 1400 +- 20mm
                        </p>
                        <P class="text-xl">Rs 7000</P>
                    </div>
                </div>
                <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                    <div class="w-[240px] relative">
                        <img src="images/HAVITmouse.webp" alt="">
                        <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                    </div>
                    <div class="py-5">
                        <p class="text-base mb-5 font-extrabold">Havit HV-KB378 USB Exquisite Wired Keyboard</p>
                        <p class="text-xl">
                            Key Specification:
                            Wireless Technology: Advanced 2.4GHz
                            Upto 10 Meter Wide Coverage
                            No of Keys: 3 Keys
                            Resolution: 1000DPI
                            Key life: 100,000,000 times
                            1 Year Warranty
                        </p>
                        <P class="text-xl">Rs 5000</P>
                    </div>
                </div>
                <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                    <div class="w-[240px] relative">
                        <img src="images/RAPOOV50S.png" alt="">
                        <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                    </div>
                    <div class="py-5">
                        <p class="text-base mb-5 font-extrabold">RAPOO V50S Backlit Gaming Keyboard - BLACK</p>
                        <p class="text-xl">
                            Model: Rapoo V50S Backlit Gaming Keyboard
                            Game Mode: Anti-ghosting
                            Backlight: Adjustable Backlight
                            Color:  Black
                            Connection Type: Wired
                            Spill-resistant: Yes
                            Warranty: 1 Year Warranty
                        </p>
                        <P class="text-xl">Rs 5000</P>
                    </div>
                </div>
                <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                    <div class="w-[240px] relative">
                        <img src="images/RapooK10NumericKeysCompactWired Numeric.webp" alt="">
                        <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                    </div>
                    <div class="py-5">
                        <p class="text-base mb-5 font-extrabold">Rapoo K10 Numeric Keyboard - 23-Keys Compact Wired Numeric Keypad USB Number Pad for PC Laptop
                        </p>
                        <p class="text-xl">
                            Key Features
                            Model: Rapoo K10 Numeric Keyboard
                            No of Keys: 23-Keys
                            Type: Plug & Play
                            Color:  Black
                            Connection Type: Wired
                            Item Weight:  200g
                            Warranty: 1 Year Warranty
                        </p>
                        <P class="text-xl">Rs 10000</P>
                    </div>
                </div>
            </div>
        </section>
        <!-- Accessories section end -->
        
        <!-- footer section start -->
        <footer class="flex max-sm:flex max-sm:flex-col max-md:grid max-md:grid-cols-2  justify-around padding bg-black padding-x padding-t pb-8 text-white">
            <div class="mb-8 md:mb-0 md:mr-8 max-md:mt-6">
                <ul class="flex flex-col">
                    <li class="mb-4">
                        <img src="" alt="image isn't fixed now.">
                    </li>
                    <li class="mb-2">
                        <p>Support</p>
                    </li>
                    <li class="mb-2">
                        <p>sales@itti.com.np</p>
                    </li>
                    <li class="mb-2">
                        <p>01-5350440 / 01-5911594</p>
                    </li>
                </ul>
                <button class="bg-black rounded p-2 border-solid border-2 w-30 hover:bg-red-600">
                    <i class="fa-solid fa-location-dot mr-2"></i>Find out store
                </button>
            </div>
            <div class="mb-8 md:mb-0 max-md:mt-6">
                <ul class="flex flex-col">
                    <li class="mb-4 md:mb-2">
                        <h3>ITTI Categories</h3>
                    </li>
                    <li class="mb-2 hover:text-red-500">
                        <a href="">Gaming</a>
                    </li>
                    <li class="mb-2 hover:text-red-500">
                        <a href="">Desktip & Server</a>
                    </li>
                    <li class="mb-2 hover:text-red-500">
                        <a href="">Monitors</a>
                    </li>
                    <li class="hover:text-red-500">
                        <a href="">Accessories</a>
                    </li>
                </ul>
            </div>
            <div class="mb-8 md:mb-0 max-md:mt-6">
                <ul class="flex flex-col">
                    <li class="mb-4 md:mb-2">
                        <h3>About ITTI</h3>
                    </li>
                    <li class="mb-2 hover:text-red-500">
                        <a href="">About ITTI</a>
                    </li>
                    <li class="mb-2 hover:text-red-500">
                        <a href="">Terms & Conditions</a>
                    </li>
                    <li class="mb-2 hover:text-red-500">
                        <a href="">Warranty</a>
                    </li>
                    <li class="mb-2 hover:text-red-500">
                        <a href="">Trivacy Policy</a>
                    </li>
                    <li class=" hover:text-red-500">
                        <a href="">Blog</a>
                    </li>
                </ul>
            </div>
            <div class="mb-8 md:mb-0 max-md:mt-6">
                <ul class="flex flex-col">
                    <li class="mb-4 md:mb-2">
                        <h3>Customer Service</h3>
                    </li>
                    <li class="mb-2 hover:text-red-500">
                        <a href="">Refund & Return Policy</a>
                    </li>
                    <li class="mb-2 hover:text-red-500">
                        <a href="">My Account</a>
                    </li>
                    <li class="mb-2 hover:text-red-500">
                        <a href="">Contact Us</a>
                    </li>
                </ul>
            </div>
        </footer>
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

<script>
    function toggleDropdown(){
        let dropdown = document.querySelector("#dropdown");
        dropdown.classList.toggle("hidden");
    }
</script>
</html>