<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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