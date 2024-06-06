<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Cart</title>
    <link rel="stylesheet" href="../Stylesheet/aboutus.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

</head>
<body>


<% 
		HttpSession session1 = request.getSession(false);
		
		if (session1.getAttribute("userName")== null){
			response.sendRedirect("login.jsp");
		}
		
		%>
            <jsp:include page="header.jsp"></jsp:include>
        
           <main>
                <section class="padding-x sm:py-12 w-full">
                    <h2 class="text-3xl text-center font-mono">Laptop</h2>
                    <div class="sm:grid sm:grid-cols-2 sm:grid-rows-3 xl:grid xl:grid-cols-4 xl:grid-rows-2 gap-3 mt-8">
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/AcerAspireLite.webp" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">Acer Aspire 3 2023 Ryzen 3 7320U | 8GB RAM | 512GB SSD | 15.6" FHD Display | 1 Year Warranty</p>
                                <p class="text-xl">
                                    Model: Acer Aspire 3 A315-24P-R1H8
                                    Processor: AMD Ryzen™ 3 7320U Mobile Processor
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 15.6-inch IPS display with Full-HD (1920 x 1080 pixels) resolution
                                    Graphic: AMD Shared
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 1800</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/AcerNitro5-2023.jpg" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">LOGITECH M170 WIRELESS MOUSE</p>
                                <p class="text-xl">
                                    Key Specification
                                    Model: Acer Nitro 5 AL14-31P-318W
                                    Processor: Intel® Core™ i3-N300 processor 
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 14" 16:10 WUXGA (1920x1200) IPS LED-backlit TFT LCD Display
                                    Graphic: Intel® UHD Graphics
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 180000</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/AcerPredatorHelios3002021.jpg" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">Acer Predator Helios 300 2021</p>
                                <p class="text-xl">
                                    Model: Acer Aspire Lite 14 AL14-31P-318W
                                    Processor: Intel® Core™ i3-N300 processor 
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 14" 16:10 WUXGA (1920x1200) IPS LED-backlit TFT LCD Display
                                    Graphic: Intel® UHD Graphics
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 18000</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/sliderimg-1.jpg" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">LOGITECH M170 WIRELESS MOUSE</p>
                                <p class="text-xl">
                                    Model: Acer Aspire Lite 14 AL14-31P-318W
                                    Processor: Intel® Core™ i3-N300 processor 
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 14" 16:10 WUXGA (1920x1200) IPS LED-backlit TFT LCD Display
                                    Graphic: Intel® UHD Graphics
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 18000</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/sliderimg-1.jpg" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">LOGITECH M170 WIRELESS MOUSE</p>
                                <p class="text-xl">
                                    Model: Acer Aspire Lite 14 AL14-31P-318W
                                    Processor: Intel® Core™ i3-N300 processor 
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 14" 16:10 WUXGA (1920x1200) IPS LED-backlit TFT LCD Display
                                    Graphic: Intel® UHD Graphics
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 18000</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/sliderimg-1.jpg" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">LOGITECH M170 WIRELESS MOUSE</p>
                                <p class="text-xl">
                                    Model: Acer Aspire Lite 14 AL14-31P-318W
                                    Processor: Intel® Core™ i3-N300 processor 
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 14" 16:10 WUXGA (1920x1200) IPS LED-backlit TFT LCD Display
                                    Graphic: Intel® UHD Graphics
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 18000</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/sliderimg-1.jpg" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">LOGITECH M170 WIRELESS MOUSE</p>
                                <p class="text-xl">
                                    Model: Acer Aspire Lite 14 AL14-31P-318W
                                    Processor: Intel® Core™ i3-N300 processor 
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 14" 16:10 WUXGA (1920x1200) IPS LED-backlit TFT LCD Display
                                    Graphic: Intel® UHD Graphics
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 18000</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/sliderimg-1.jpg" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">LOGITECH M170 WIRELESS MOUSE</p>
                                <p class="text-xl">
                                    Model: Acer Aspire Lite 14 AL14-31P-318W
                                    Processor: Intel® Core™ i3-N300 processor 
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 14" 16:10 WUXGA (1920x1200) IPS LED-backlit TFT LCD Display
                                    Graphic: Intel® UHD Graphics
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 18000</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="padding">
                    <div class="w-[400px] m-auto text-center p-10 border shadow-gray-300 rounded">
                        <div class="bg-grey-300">
                            <i class="fa-solid fa-cart-shopping mr-2 h-5 w-5"></i>
                        </div>
                        <p>YOUR SHOPPING CART IS EMPTY</p>
                        <button class="bg-green-300 px-2 py-3 rounded-3xl">
                            CONTINUE SHOPPING
                        </button>
                    </div>
                    <div class="flex justify-around mt-10">
                        <div class="flex items-center border py-4 px-2">
                            <div>
                                <i class="fa-solid fa-cart-shopping mr-2 h-5 w-5"></i>
                            </div>
                            <div>
                                <p>FREE SHIPPING</p>
                                <p>Free shipping on all orders in Nepal</p>
                            </div>
                        </div>
                        <div class="flex items-center border py-4 px-2">
                            <div>
                                <i class="fa-solid fa-cart-shopping mr-2 h-5 w-5"></i>
                            </div>
                            <div>
                                <p>FREE SHIPPING</p>
                                <p>Free shipping on all orders in Nepal</p>
                            </div>
                        </div>
                        <div class="flex items-center border py-4 px-2">
                            <div>
                                <i class="fa-solid fa-cart-shopping mr-2 h-5 w-5"></i>
                            </div>
                            <div>
                                <p>FREE SHIPPING</p>
                                <p>Free shipping on all orders in Nepal</p>
                            </div>
                        </div>
                        <div class="flex items-center border py-4 px-2">
                            <div>
                                <i class="fa-solid fa-cart-shopping mr-2 h-5 w-5"></i>
                            </div>
                            <div>
                                <p>FREE SHIPPING</p>
                                <p>Free shipping on all orders in Nepal</p>
                            </div>
                        </div>
                    </div>
            </section>
            </main><main>
                <section class="padding-x sm:py-12 w-full">
                    <h2 class="text-3xl text-center font-mono">Laptop</h2>
                    <div class="sm:grid sm:grid-cols-2 sm:grid-rows-3 xl:grid xl:grid-cols-4 xl:grid-rows-2 gap-3 mt-8">
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/AcerAspireLite.webp" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">Acer Aspire 3 2023 Ryzen 3 7320U | 8GB RAM | 512GB SSD | 15.6" FHD Display | 1 Year Warranty</p>
                                <p class="text-xl">
                                    Model: Acer Aspire 3 A315-24P-R1H8
                                    Processor: AMD Ryzen™ 3 7320U Mobile Processor
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 15.6-inch IPS display with Full-HD (1920 x 1080 pixels) resolution
                                    Graphic: AMD Shared
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 1800</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/AcerNitro5-2023.jpg" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">LOGITECH M170 WIRELESS MOUSE</p>
                                <p class="text-xl">
                                    Key Specification
                                    Model: Acer Nitro 5 AL14-31P-318W
                                    Processor: Intel® Core™ i3-N300 processor 
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 14" 16:10 WUXGA (1920x1200) IPS LED-backlit TFT LCD Display
                                    Graphic: Intel® UHD Graphics
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 180000</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/AcerPredatorHelios3002021.jpg" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">Acer Predator Helios 300 2021</p>
                                <p class="text-xl">
                                    Model: Acer Aspire Lite 14 AL14-31P-318W
                                    Processor: Intel® Core™ i3-N300 processor 
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 14" 16:10 WUXGA (1920x1200) IPS LED-backlit TFT LCD Display
                                    Graphic: Intel® UHD Graphics
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 18000</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/sliderimg-1.jpg" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">LOGITECH M170 WIRELESS MOUSE</p>
                                <p class="text-xl">
                                    Model: Acer Aspire Lite 14 AL14-31P-318W
                                    Processor: Intel® Core™ i3-N300 processor 
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 14" 16:10 WUXGA (1920x1200) IPS LED-backlit TFT LCD Display
                                    Graphic: Intel® UHD Graphics
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 18000</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/sliderimg-1.jpg" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">LOGITECH M170 WIRELESS MOUSE</p>
                                <p class="text-xl">
                                    Model: Acer Aspire Lite 14 AL14-31P-318W
                                    Processor: Intel® Core™ i3-N300 processor 
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 14" 16:10 WUXGA (1920x1200) IPS LED-backlit TFT LCD Display
                                    Graphic: Intel® UHD Graphics
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 18000</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/sliderimg-1.jpg" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">LOGITECH M170 WIRELESS MOUSE</p>
                                <p class="text-xl">
                                    Model: Acer Aspire Lite 14 AL14-31P-318W
                                    Processor: Intel® Core™ i3-N300 processor 
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 14" 16:10 WUXGA (1920x1200) IPS LED-backlit TFT LCD Display
                                    Graphic: Intel® UHD Graphics
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 18000</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/sliderimg-1.jpg" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">LOGITECH M170 WIRELESS MOUSE</p>
                                <p class="text-xl">
                                    Model: Acer Aspire Lite 14 AL14-31P-318W
                                    Processor: Intel® Core™ i3-N300 processor 
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 14" 16:10 WUXGA (1920x1200) IPS LED-backlit TFT LCD Display
                                    Graphic: Intel® UHD Graphics
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 18000</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                        <div class="max-sm:mx-auto flex flex-col items-center max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                            <div class="w-[240px] relative">
                                <img src="images/sliderimg-1.jpg" alt="">
                                <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                            </div>
                            <div class="py-5">
                                <p class="text-base mb-5 font-extrabold">LOGITECH M170 WIRELESS MOUSE</p>
                                <p class="text-xl">
                                    Model: Acer Aspire Lite 14 AL14-31P-318W
                                    Processor: Intel® Core™ i3-N300 processor 
                                    RAM: 8GB LPDDR5 RAM 
                                    Storage: 512GB SSD
                                    Display: 14" 16:10 WUXGA (1920x1200) IPS LED-backlit TFT LCD Display
                                    Graphic: Intel® UHD Graphics
                                    Warranty: 1 Year Warranty
                                </p>
                                <P class="text-xl">Rs 18000</P>
                                <button class="bg-white text-red-400 p-2 border">
                                    Buy now
                                </button>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="padding">
                    <div class="w-[400px] m-auto text-center p-10 border shadow-gray-300 rounded">
                        <div class="bg-grey-300">
                            <i class="fa-solid fa-cart-shopping mr-2 h-5 w-5"></i>
                        </div>
                        <p>YOUR SHOPPING CART IS EMPTY</p>
                        <button class="bg-green-300 px-2 py-3 rounded-3xl">
                            CONTINUE SHOPPING
                        </button>
                    </div>
                    <div class="flex justify-around mt-10">
                        <div class="flex items-center border py-4 px-2">
                            <div>
                                <i class="fa-solid fa-cart-shopping mr-2 h-5 w-5"></i>
                            </div>
                            <div>
                                <p>FREE SHIPPING</p>
                                <p>Free shipping on all orders in Nepal</p>
                            </div>
                        </div>
                        <div class="flex items-center border py-4 px-2">
                            <div>
                                <i class="fa-solid fa-cart-shopping mr-2 h-5 w-5"></i>
                            </div>
                            <div>
                                <p>FREE SHIPPING</p>
                                <p>Free shipping on all orders in Nepal</p>
                            </div>
                        </div>
                        <div class="flex items-center border py-4 px-2">
                            <div>
                                <i class="fa-solid fa-cart-shopping mr-2 h-5 w-5"></i>
                            </div>
                            <div>
                                <p>FREE SHIPPING</p>
                                <p>Free shipping on all orders in Nepal</p>
                            </div>
                        </div>
                        <div class="flex items-center border py-4 px-2">
                            <div>
                                <i class="fa-solid fa-cart-shopping mr-2 h-5 w-5"></i>
                            </div>
                            <div>
                                <p>FREE SHIPPING</p>
                                <p>Free shipping on all orders in Nepal</p>
                            </div>
                        </div>
                    </div>
            </section>
            </main>
    
    	<jsp:include page="footer.jsp"></jsp:include>
    
</body>
<script>
    function toggleDropdown(){
        let dropdown = document.querySelector("#dropdown");
        dropdown.classList.toggle("hidden");
    } 
</script>
</html>