<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Myntra Clone | Fashion Shopping</title>
    <!-- FontAwesome for Header Icons -->
    <link rel="stylesheet" href="https://cloudflare.com">
    <style>
        /* Reset and Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Assistant, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
        }

        body {
            background-color: #ffffff;
            color: #282c3f;
        }

        /* --- STICKY NAVBAR --- */
        header {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            height: 80px;
            background-color: #ffffff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 4%;
            box-shadow: 0 4px 12px 0 rgba(0, 0, 0, 0.05);
            z-index: 1000;
        }

        .logo-container {
            display: flex;
            align-items: center;
        }

        /* Placeholder logo styled with matching colors */
        .logo {
            font-size: 24px;
            font-weight: 800;
            letter-spacing: 1px;
            color: #ff3f6c;
            text-transform: uppercase;
            text-decoration: none;
        }

        .nav-links {
            display: flex;
            list-style: none;
            gap: 25px;
        }

        .nav-links a {
            text-decoration: none;
            color: #282c3f;
            font-size: 14px;
            font-weight: 700;
            text-transform: uppercase;
            padding-bottom: 28px;
            border-bottom: 4px solid transparent;
            transition: border 0.1s ease-in-out;
        }

        .nav-links a:hover {
            border-bottom: 4px solid #ff3f6c;
        }

        /* Search Bar styling matching Myntra UI */
        .search-bar-container {
            display: flex;
            align-items: center;
            background-color: #f5f5f6;
            width: 30%;
            padding: 10px 15px;
            border-radius: 4px;
        }

        .search-bar-container i {
            color: #696e79;
            margin-right: 10px;
            font-size: 14px;
        }

        .search-input {
            border: none;
            background: transparent;
            width: 100%;
            outline: none;
            font-size: 14px;
            color: #696e79;
        }

        .profile-actions {
            display: flex;
            gap: 25px;
        }

        .action-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            cursor: pointer;
            color: #282c3f;
            font-size: 12px;
            font-weight: 700;
        }

        .action-item i {
            font-size: 18px;
            margin-bottom: 4px;
        }

        /* --- HERO BANNER --- */
        .main-container {
            margin-top: 80px; /* Accounts for fixed header */
        }

        .hero-banner {
            width: 100%;
            display: block;
        }

        .hero-banner img {
            width: 100%;
            height: auto;
            cursor: pointer;
        }

        /* --- PRODUCT GRID --- */
        .section-title {
            text-transform: uppercase;
            letter-spacing: 2px;
            margin: 40px 4% 20px 4%;
            font-size: 24px;
            font-weight: 700;
            color: #3e4152;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
            gap: 30px;
            padding: 0 4% 50px 4%;
        }

        .product-card {
            background: #ffffff;
            cursor: pointer;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .product-card:hover {
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            transform: translateY(-3px);
        }

        .product-img-container {
            width: 100%;
            position: relative;
            background-color: #f5f5f5;
            aspect-ratio: 3 / 4;
            overflow: hidden;
        }

        .product-img-placeholder {
            width: 100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(45deg, #ffedfa, #fff0f0);
            color: #ff3f6c;
            font-weight: bold;
        }

        .product-info {
            padding: 12px 10px;
        }

        .brand-name {
            font-size: 16px;
            font-weight: 700;
            color: #282c3f;
            margin-bottom: 4px;
        }

        .product-desc {
            font-size: 14px;
            color: #535665;
            margin-bottom: 6px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .price-container {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 14px;
        }

        .discount-price {
            font-weight: 700;
            color: #282c3f;
        }

        .original-price {
            text-decoration: line-through;
            color: #7e818c;
            font-size: 12px;
        }

        .discount-percentage {
            color: #ff905a;
            font-weight: 700;
            font-size: 12px;
        }

        /* --- RESPONSIVE ADJUSTMENTS --- */
        @media (max-width: 900px) {
            .nav-links, .search-bar-container {
                display: none; /* Simplifies layout for tablets/mobile */
            }
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        <div class="logo-container">
            <a href="#" class="logo">Myntra</a>
        </div>

        <nav>
            <ul class="nav-links">
                <li><a href="#">Men</a></li>
                <li><a href="#">Women</a></li>
                <li><a href="#">Kids</a></li>
                <li><a href="#">Home & Living</a></li>
                <li><a href="#">Beauty</a></li>
            </ul>
        </nav>

        <div class="search-bar-container">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input type="text" class="search-input" placeholder="Search for products, brands and more">
        </div>

        <div class="profile-actions">
            <div class="action-item">
                <i class="fa-regular fa-user"></i>
                <span>Profile</span>
            </div>
            <div class="action-item">
                <i class="fa-regular fa-heart"></i>
                <span>Wishlist</span>
            </div>
            <div class="action-item">
                <i class="fa-solid fa-bag-shopping"></i>
                <span>Bag</span>
            </div>
        </div>
    </header>

    <!-- Main Content Area -->
    <main class="main-container">
        
        <!-- Hero Promotional Section -->
        <section class="hero-banner">
            <!-- Replace the placeholder URL with an actual banner image link if needed -->
            <img src="https://picsum.photos" alt="Grand Festive Sale Banner">
        </section>

        <h2 class="section-title">Trending Items</h2>

        <!-- E-Commerce Product Listing -->
        <section class="product-grid">
            
            <!-- Card 1 -->
            <div class="product-card">
                <div class="product-img-container">
                    <div class="product-img-placeholder">Mens Apparel</div>
                </div>
                <div class="product-info">
                    <div class="brand-name">Roadster</div>
                    <div class="product-desc">Men Cotton Pure Casual Shirt</div>
                    <div class="price-container">
                        <span class="discount-price">Rs. 699</span>
                        <span class="original-price">Rs. 1399</span>
                        <span class="discount-percentage">(50% OFF)</span>
                    </div>
                </div>
            </div>

            <!-- Card 2 -->
            <div class="product-card">
                <div class="product-img-container">
                    <div class="product-img-placeholder">Womens Ethnic</div>
                </div>
                <div class="product-info">
                    <div class="brand-name">Anouk</div>
                    <div class="product-desc">Printed Straight Kurta Set</div>
                    <div class="price-container">
                        <span class="discount-price">Rs. 1199</span>
                        <span class="original-price">Rs. 2999</span>
                        <span class="discount-percentage">(60% OFF)</span>
                    </div>
                </div>
            </div>

            <!-- Card 3 -->
            <div class="product-card">
                <div class="product-img-container">
                    <div class="product-img-placeholder">Footwear</div>
                </div>
                <div class="product-info">
                    <div class="brand-name">HRX by Hrithik Roshan</div>
                    <div class="product-desc">Men Light-weight Running Shoes</div>
                    <div class="price-container">
                        <span class="discount-price">Rs. 1499</span>
                        <span class="original-price">Rs. 3799</span>
                        <span class="discount-percentage">(61% OFF)</span>
                    </div>
                </div>
            </div>

            <!-- Card 4 -->
            <div class="product-card">
                <div class="product-img-container">
