<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="../Stylesheet/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body>
    <!-- Header section start -->
	<jsp:include page="header.jsp" />
    
    <!-- main section start -->
    <main class="relative">
        <!-- Deal of the week start -->
        <section class="padding">
            <h2 class="text-3xl text-center font-mono">Deal of The Week</h2>
            <p class="text-red-400 flex justify-end"><a href="">View all</a></p>
            <div class="sm:grid sm:grid-cols-2 sm:grid-rows-3 lg:grid lg:grid-cols-3 lg:grid-rows-2 xl:grid xl:grid-cols-5 xl:grid-rows-1 gap-y-2 mt-8">
                <div class="max-sm:mx-auto max-sm:my-5 max-lg:mx-auto w-[240px] flex flex-col">
                    <div class="w-[240px] relative">
                        <img src="../images/Acer Aspire 5 2021 11th Gen i3 2.webp" alt="">
                        <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                    </div>
                    <div>
                        <a href="">Acer Aspire 5 2021 11th Gen i3 2</a>
                        <p class="line-through text-gray-400">Rs 1,20,000</p>
                        <p>Rs 1,18,000</p>
                    </div>
                    <button class="text-white bg-red-600 py-1 px-3 rounded">Add to cart</button>
                </div>
                <div class="max-sm:mx-auto max-sm:my-5 max-lg:mx-auto w-[240px] flex flex-col">
                    <div class="w-[240px] relative">
                        <img src="../images/Acer Predator Helios Neo 16 2024 i9 14900HX 2.webp" alt="">
                        <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                    </div>
                    <div>
                        <a href="">Acer Predator Helios Neo 16 2024 i9 14900HX 2</a>
                        <p class="line-through text-gray-400">Rs 1,20,000</p>
                        <p>Rs 1,18,000</p>
                    </div>
                    <button class="text-white bg-red-600 py-1 px-3 rounded">Add to cart</button>
                </div>
                <div class="max-sm:mx-auto max-sm:my-5 max-lg:mx-auto w-[240px] flex flex-col">
                    <div class="w-[240px] relative">
                        <img src="../images/Dell Alienware M15 R6 i7 11800H 2.jpg" alt="">
                        <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                    </div>
                    <div>
                        <a href="">Dell Alienware M15 R6 i7 11800H 2s</a>
                        <p class="line-through text-gray-400">Rs 1,20,000</p>
                        <p>Rs 1,18,000</p>
                    </div>
                    <button class="text-white bg-red-600 py-1 px-3 rounded">Add to cart</button>
                </div>
                <div class="max-sm:mx-auto max-sm:my-5 max-lg:mx-auto w-[240px] flex flex-col">
                    <div class="w-[240px] relative">
                        <img src="../images/Dell G15 5530 2023 - i5 13450HX 1.jpg" alt="">
                        <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                    </div>
                    <div>
                        <a href="">Dell G15 5530 2023 - i5 13450HX 1</a>
                        <p class="line-through text-gray-400">Rs 1,20,000</p>
                        <p>Rs 1,18,000</p>
                    </div>
                    <button class="text-white bg-red-600 py-1 px-3 rounded">Add to cart</button>
                </div>
                <div class="max-sm:mx-auto w-[240px] max-lg:mx-auto flex flex-col">
                    <div class="w-[240px] relative">
                        <img src="../images/Dell inspiron 15 3520.webp" alt="">
                        <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                    </div>
                    <div>
                        <a href="">Dell inspiron 15 3520</a>
                        <p class="line-through text-gray-400">Rs 1,20,000</p>
                        <p>Rs 1,18,000</p>
                    </div>
                    <button class="text-white bg-red-600 py-1 px-3 rounded">Add to cart</button>
                </div>
            </div>
        </section>
        <!-- Deal of the week start -->

        <!-- Review section start -->
        <section class="bg-pale-blue padding">
            <h2 class="text-3xl text-center font-mono">What our <span class="text-red-300">Customers</span> Say?</h2>
            <div class="sm:grid sm:grid-cols-3 gap-3">
                <div class="flex flex-col items-center text-center">
                    <div>
                        <img class="w-12 h-12 rounded-full object-cover" src="../images/user1.jpg" alt="">
                    </div>
                    <div>
                        <p>The attention to detail and the quality of the product exceeded my expectations.Highly recommended!</p>
                        <p><i class="fa-solid fa-star text-red-300"></i>(4.5)</p>
                        <p>Morich Brown</p>
                    </div>
                </div>
                <div class="flex flex-col items-center text-center">
                    <div>
                        <img class="w-12 h-12 rounded-full object-cover" src="../images/user1.jpg" alt="">
                    </div>
                    <div>
                        <p>The attention to detail and the quality of the product exceeded my expectations.Highly recommended!</p>
                        <p><i class="fa-solid fa-star text-red-300"></i>(4.5)</p>
                        <p>Morich Brown</p>
                    </div>
                </div>
                <div class="flex flex-col items-center text-center">
                    <div>
                        <img class="w-12 h-12 rounded-full object-cover" src="../images/user1.jpg" alt="">
                    </div>
                    <div>
                        <p>The attention to detail and the quality of the product exceeded my expectations.Highly recommended!</p>
                        <p><i class="fa-solid fa-star text-red-300"></i>(4.5)</p>
                        <p>Morich Brown</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Review section end -->

        <!-- Accessories section start -->
        <section class="padding-x sm:py-12 w-full">
        <h2 class="text-3xl text-center font-mono">Accessories</h2>
        <div class="sm:grid sm:grid-cols-2 sm:grid-rows-3 xl:grid xl:grid-cols-3 xl:grid-rows-2 gap-3 mt-8">
            <div class="max-sm:mx-auto flex max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                <div class="w-[240px] relative">
                    <img src="images/sliderimg-1.jpg" alt="">
                    <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                </div>
                <div class="py-5">
                    <p class="text-base mb-5">LOGITECH M170 WIRELESS MOUSE</p>
                    <P class="text-xl">Rs 1800</P>
                </div>
            </div>
            <div class="max-sm:mx-auto flex max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                <div class="w-[240px] relative">
                    <img src="images/sliderimg-1.jpg" alt="">
                    <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                </div>
                <div class="py-5">
                    <p class="text-base mb-5">LOGITECH M170 WIRELESS MOUSE</p>
                    <P class="text-xl">Rs 1800</P>
                </div>
            </div>
            <div class="max-sm:mx-auto flex max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                <div class="w-[240px] relative">
                    <img src="images/sliderimg-1.jpg" alt="">
                    <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                </div>
                <div class="py-5">
                    <p class="text-base mb-5">LOGITECH M170 WIRELESS MOUSE</p>
                    <P class="text-xl">Rs 1800</P>
                </div>
            </div>
            <div class="max-sm:mx-auto flex max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                <div class="w-[240px] relative">
                    <img src="images/sliderimg-1.jpg" alt="">
                    <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                </div>
                <div class="py-5">
                    <p class="text-base mb-5">LOGITECH M170 WIRELESS MOUSE</p>
                    <P class="text-xl">Rs 1800</P>
                </div>
            </div>
            <div class="max-sm:mx-auto flex max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                <div class="w-[240px] relative">
                    <img src="images/sliderimg-1.jpg" alt="">
                    <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                </div>
                <div class="py-5">
                    <p class="text-base mb-5">LOGITECH M170 WIRELESS MOUSE</p>
                    <P class="text-xl">Rs 1800</P>
                </div>
            </div>
            <div class="max-sm:mx-auto flex max-lg:flex max-lg:flex-col max-lg:w-[240px] max-lg:mx-auto">
                <div class="w-[240px] relative">
                    <img src="images/sliderimg-1.jpg" alt="">
                    <i class="fa-regular fa-heart mr-2 absolute top-2 right-1 text-white hover:text-red-500"></i>
                </div>
                <div class="py-5">
                    <p class="text-base mb-5">LOGITECH M170 WIRELESS MOUSE</p>
                    <P class="text-xl">Rs 1800</P>
                </div>
            </div>
        </div>
        </section>
        <!-- Accessories section end -->
    </main>
    <!-- main section end -->

	<jsp:include page="footer.jsp" />

</body>
<script>
    function toggleDropdown(){
        let dropdown = document.querySelector("#dropdown");
        dropdown.classList.toggle("hidden");
    } 
    const obj = {
        "1" : "a",
        1 : "b",
        [1] : "c"
    };
    console.log(obj["1"]);
</script>
</html>