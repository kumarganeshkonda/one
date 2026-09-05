<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rakshitha Clothing - Sarees & Dresses</title>
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* ---------- RESET & BASE ---------- */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #fdf6f0 0%, #fce4ec 30%, #f3e5f5 60%, #e8eaf6 100%);
            min-height: 100vh;
            padding: 1.5rem 1rem;
        }

        /* ---------- MAIN CONTAINER ---------- */
        .main-container {
            max-width: 1300px;
            width: 100%;
            margin: 0 auto;
            background: rgba(255, 248, 245, 0.88);
            backdrop-filter: blur(10px);
            border-radius: 50px 50px 40px 40px;
            box-shadow: 0 30px 60px -15px rgba(0, 0, 0, 0.25);
            padding: 2.5rem 2.8rem;
            border: 2px solid rgba(255, 182, 193, 0.4);
            position: relative;
            overflow: hidden;
        }

        /* colorful background blobs */
        .main-container::before {
            content: '';
            position: absolute;
            top: -25%;
            right: -15%;
            width: 500px;
            height: 500px;
            background: radial-gradient(circle, #f8bbd030, #f48fb130, #ce93d830, #90caf930);
            border-radius: 50%;
            filter: blur(100px);
            z-index: 0;
            pointer-events: none;
        }

        .main-container::after {
            content: '';
            position: absolute;
            bottom: -20%;
            left: -10%;
            width: 450px;
            height: 450px;
            background: radial-gradient(circle, #ffccbc40, #f8bbd040, #e1bee740, #b39ddb40);
            border-radius: 50%;
            filter: blur(100px);
            z-index: 0;
            pointer-events: none;
        }

        .main-container > * {
            position: relative;
            z-index: 1;
        }

        /* ---------- HEADER ---------- */
        .header {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
            padding-bottom: 1.2rem;
            border-bottom: 4px dashed #f48fb1;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .brand i {
            font-size: 3.4rem;
            color: #e91e63;
            background: linear-gradient(145deg, #fce4ec, #f8bbd0);
            padding: 16px;
            border-radius: 50%;
            box-shadow: 0 10px 25px rgba(233, 30, 99, 0.25);
            border: 3px solid #f48fb1;
        }

        .brand h1 {
            font-size: 3rem;
            font-weight: 800;
            background: linear-gradient(135deg, #e91e63, #9c27b0, #3f51b5, #e91e63);
            background-size: 300% 300%;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            animation: gradientShift 5s ease infinite;
            letter-spacing: -1px;
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .brand span {
            font-size: 1.3rem;
            font-weight: 600;
            background: linear-gradient(145deg, #f06292, #ec407a);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            padding: 0.2rem 1.4rem;
            border-radius: 60px;
            background-color: #fce4ec;
            -webkit-text-fill-color: #c2185b;
        }

        .cart-badge {
            background: linear-gradient(145deg, #e91e63, #9c27b0);
            color: #fff;
            padding: 0.7rem 2rem;
            border-radius: 60px;
            font-size: 1.2rem;
            font-weight: 600;
            box-shadow: 0 10px 25px rgba(233, 30, 99, 0.25);
            display: flex;
            align-items: center;
            gap: 12px;
            border: 2px solid #f48fb1;
            cursor: pointer;
            transition: 0.3s;
        }

        .cart-badge:hover {
            transform: scale(1.05);
            box-shadow: 0 15px 35px rgba(233, 30, 99, 0.35);
        }

        .cart-badge i {
            font-size: 1.6rem;
        }

        /* ---------- HERO SECTION ---------- */
        .hero {
            background: linear-gradient(135deg, #fce4ec, #f3e5f5, #e8eaf6);
            padding: 2.5rem 2rem;
            border-radius: 40px;
            margin: 1.5rem 0 2.5rem;
            text-align: center;
            border: 2px solid #f48fb1;
            box-shadow: inset 0 4px 30px rgba(233, 30, 99, 0.05);
        }

        .hero h2 {
            font-size: 2.8rem;
            font-weight: 800;
            background: linear-gradient(135deg, #e91e63, #9c27b0, #3f51b5);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero p {
            font-size: 1.3rem;
            color: #4a2a3a;
            margin-top: 0.5rem;
            font-weight: 500;
        }

        .hero .badges {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 1.2rem;
            margin-top: 1.2rem;
        }

        .hero .badges span {
            background: rgba(255, 255, 255, 0.6);
            backdrop-filter: blur(4px);
            padding: 0.5rem 1.8rem;
            border-radius: 60px;
            font-weight: 600;
            font-size: 1rem;
            color: #4a2a3a;
            border: 2px solid #f48fb1;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .hero .badges span i {
            color: #e91e63;
            font-size: 1.2rem;
        }

        /* ---------- SECTION TITLE ---------- */
        .section-title {
            font-size: 2.2rem;
            font-weight: 700;
            color: #2c1a10;
            margin: 2.5rem 0 1.8rem;
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .section-title i {
            color: #e91e63;
            font-size: 2.4rem;
            background: linear-gradient(145deg, #fce4ec, #f8bbd0);
            padding: 12px 16px;
            border-radius: 50%;
            box-shadow: 0 6px 20px rgba(233, 30, 99, 0.15);
        }

        .section-title .highlight {
            background: linear-gradient(135deg, #e91e63, #9c27b0);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        /* ---------- CATEGORY FILTERS ---------- */
        .filters {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            margin-bottom: 2rem;
        }

        .filter-btn {
            padding: 0.7rem 2rem;
            border: 3px solid #f48fb1;
            border-radius: 60px;
            background: rgba(255, 255, 255, 0.5);
            font-weight: 700;
            font-size: 1rem;
            color: #4a2a3a;
            cursor: pointer;
            transition: all 0.3s ease;
            backdrop-filter: blur(4px);
        }

        .filter-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(233, 30, 99, 0.15);
        }

        .filter-btn.active {
            background: linear-gradient(135deg, #e91e63, #9c27b0);
            color: #fff;
            border-color: #9c27b0;
        }

        .filter-btn i {
            margin-right: 8px;
        }

        /* ---------- PRODUCT GRID ---------- */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 2rem;
            margin: 1.5rem 0 2rem;
        }

        .product-card {
            background: rgba(255, 255, 255, 0.75);
            backdrop-filter: blur(8px);
            border-radius: 40px 40px 35px 35px;
            padding: 1.8rem 1.5rem 2rem;
            text-align: center;
            border: 3px solid transparent;
            transition: all 0.35s cubic-bezier(0.25, 0.46, 0.45, 0.94);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.06);
            position: relative;
            overflow: hidden;
        }

        .product-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            border-radius: 40px 40px 35px 35px;
            padding: 3px;
            background: linear-gradient(135deg, #f06292, #ba68c8, #7986cb, #f06292);
            background-size: 300% 300%;
            -webkit-mask: linear-gradient(#fff 0 0) content-box, linear-gradient(#fff 0 0);
            -webkit-mask-composite: xor;
            mask-composite: exclude;
            animation: borderFlow 5s ease infinite;
            pointer-events: none;
        }

        @keyframes borderFlow {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .product-card:hover {
            transform: translateY(-12px) scale(1.01);
            box-shadow: 0 30px 50px -12px rgba(0, 0, 0, 0.2);
            background: rgba(255, 255, 255, 0.92);
        }

        .product-image {
            font-size: 5.5rem;
            width: 140px;
            height: 140px;
            margin: 0 auto 1rem;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            transition: 0.3s;
            box-shadow: 0 12px 30px -8px rgba(0, 0, 0, 0.1);
            border: 4px solid rgba(255, 255, 255, 0.6);
        }

        .product-card:hover .product-image {
            transform: scale(1.05) rotate(-3deg);
        }

        /* Color variants for product cards */
        .product-card:nth-child(1) .product-image { background: linear-gradient(145deg, #f8bbd0, #f48fb1); color: #880e4f; }
        .product-card:nth-child(2) .product-image { background: linear-gradient(145deg, #b39ddb, #9575cd); color: #4a148c; }
        .product-card:nth-child(3) .product-image { background: linear-gradient(145deg, #90caf9, #64b5f6); color: #0d47a1; }
        .product-card:nth-child(4) .product-image { background: linear-gradient(145deg, #a5d6a7, #81c784); color: #1b5e20; }
        .product-card:nth-child(5) .product-image { background: linear-gradient(145deg, #ffccbc, #ffab91); color: #bf360c; }
        .product-card:nth-child(6) .product-image { background: linear-gradient(145deg, #fff9c4, #fff176); color: #f57f17; }
        .product-card:nth-child(7) .product-image { background: linear-gradient(145deg, #b2dfdb, #80cbc4); color: #004d40; }
        .product-card:nth-child(8) .product-image { background: linear-gradient(145deg, #f8bbd0, #ce93d8); color: #6a1b9a; }

        .product-card h3 {
            font-size: 1.5rem;
            font-weight: 700;
            color: #2c1a10;
            margin-bottom: 0.3rem;
        }

        .product-card .category-tag {
            font-size: 0.85rem;
            font-weight: 600;
            color: #e91e63;
            background: #fce4ec;
            padding: 0.2rem 1.2rem;
            border-radius: 60px;
            display: inline-block;
            margin-bottom: 0.6rem;
        }

        .product-card .price {
            font-size: 1.5rem;
            font-weight: 800;
            color: #c2185b;
            margin: 0.5rem 0;
        }

        .product-card .price .original {
            font-size: 1rem;
            color: #999;
            text-decoration: line-through;
            margin-left: 8px;
            font-weight: 500;
        }

        /* Color swatches */
        .color-swatches {
            display: flex;
            justify-content: center;
            gap: 8px;
            margin: 0.6rem 0 1rem;
            flex-wrap: wrap;
        }

        .color-swatch {
            width: 28px;
            height: 28px;
            border-radius: 50%;
            border: 2px solid rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: all 0.2s;
            display: inline-block;
        }

        .color-swatch:hover {
            transform: scale(1.2);
            border-color: #e91e63;
        }

        .color-swatch.active {
            border-color: #e91e63;
            box-shadow: 0 0 0 3px #f48fb1;
        }

        .add-to-cart {
            width: 100%;
            padding: 0.8rem;
            border: none;
            border-radius: 60px;
            font-weight: 700;
            font-size: 1.1rem;
            color: #fff;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            margin-top: 0.6rem;
        }

        .product-card:nth-child(1) .add-to-cart { background: linear-gradient(145deg, #e91e63, #f06292); }
        .product-card:nth-child(2) .add-to-cart { background: linear-gradient(145deg, #9c27b0, #ba68c8); }
        .product-card:nth-child(3) .add-to-cart { background: linear-gradient(145deg, #1a73e8, #64b5f6); }
        .product-card:nth-child(4) .add-to-cart { background: linear-gradient(145deg, #43a047, #81c784); }
        .product-card:nth-child(5) .add-to-cart { background: linear-gradient(145deg, #e64a19, #ff8a65); }
        .product-card:nth-child(6) .add-to-cart { background: linear-gradient(145deg, #f9a825, #ffd54f); color: #3e2723; }
        .product-card:nth-child(7) .add-to-cart { background: linear-gradient(145deg, #00897b, #4db6ac); }
        .product-card:nth-child(8) .add-to-cart { background: linear-gradient(145deg, #7b1fa2, #ab47bc); }

        .add-to-cart:hover {
            transform: scale(1.03);
            filter: brightness(1.08);
        }

        .add-to-cart:active {
            transform: scale(0.94);
        }

        .wishlist-btn {
            position: absolute;
            top: 16px;
            right: 16px;
            background: rgba(255, 255, 255, 0.8);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            border: 2px solid #f48fb1;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: 0.3s;
            color: #e91e63;
            font-size: 1.2rem;
        }

        .wishlist-btn:hover {
            background: #e91e63;
            color: #fff;
            transform: scale(1.1);
        }

        /* ---------- OFFER BANNER ---------- */
        .offer-banner {
            background: linear-gradient(135deg, #fce4ec, #f3e5f5, #e8eaf6);
            padding: 2rem;
            border-radius: 40px;
            margin: 2.5rem 0;
            text-align: center;
            border: 3px dashed #f48fb1;
        }

        .offer-banner h3 {
            font-size: 2.2rem;
            font-weight: 800;
            background: linear-gradient(135deg, #e91e63, #9c27b0);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .offer-banner p {
            font-size: 1.2rem;
            color: #4a2a3a;
            margin-top: 0.3rem;
        }

        .offer-banner .offer-code {
            display: inline-block;
            background: #fff;
            padding: 0.6rem 2.5rem;
            border-radius: 60px;
            font-size: 1.5rem;
            font-weight: 800;
            color: #e91e63;
            border: 2px solid #e91e63;
            margin-top: 0.8rem;
            letter-spacing: 2px;
        }

        /* ---------- CONTACT BAR ---------- */
        .contact-bar {
            margin-top: 3rem;
            background: linear-gradient(135deg, #1a0a12, #3d1a2a, #1a0a12);
            border-radius: 60px;
            padding: 1.2rem 2.5rem;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            color: #fce4ec;
            border: 3px solid #f48fb1;
            box-shadow: 0 12px 30px rgba(0,0,0,0.15);
        }

        .contact-bar .info {
            display: flex;
            flex-wrap: wrap;
            gap: 2rem;
            font-size: 1.05rem;
            font-weight: 500;
        }

        .contact-bar .info i {
            color: #f48fb1;
            margin-right: 10px;
            font-size: 1.4rem;
        }

        .contact-bar .info span {
            display: inline-flex;
            align-items: center;
            background: rgba(255, 255, 255, 0.05);
            padding: 0.2rem 1rem 0.2rem 0.6rem;
            border-radius: 60px;
            border: 1px solid #7a3a4a;
        }

        .contact-bar .social i {
            font-size: 2rem;
            margin-left: 1rem;
            color: #f48fb1;
            transition: 0.3s;
            cursor: default;
            padding: 0.3rem;
            border-radius: 50%;
            background: rgba(255,255,255,0.05);
        }

        .contact-bar .social i:hover {
            color: #fff;
            transform: scale(1.15);
            background: rgba(244, 143, 177, 0.15);
        }

        .footer-note {
            margin-top: 1.8rem;
            font-size: 1rem;
            color: #3f281e;
            text-align: center;
            border-top: 3px dotted #f48fb1;
            padding-top: 1.4rem;
            width: 100%;
            font-weight: 500;
        }

        /* ---------- RESPONSIVE ---------- */
        @media (max-width: 800px) {
            .main-container {
                padding: 1.8rem;
                border-radius: 40px;
            }
            .brand h1 {
                font-size: 2.2rem;
            }
            .brand i {
                font-size: 2.6rem;
                padding: 12px;
            }
            .cart-badge {
                font-size: 1rem;
                padding: 0.5rem 1.4rem;
                margin-top: 0.4rem;
            }
            .header {
                flex-direction: column;
                align-items: start;
                gap: 12px;
            }
            .hero h2 {
                font-size: 2rem;
            }
            .hero .badges {
                gap: 0.8rem;
            }
            .hero .badges span {
                font-size: 0.9rem;
                padding: 0.3rem 1.2rem;
            }
            .product-grid {
                grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
                gap: 1.5rem;
            }
            .contact-bar {
                flex-direction: column;
                gap: 1rem;
                align-items: start;
                padding: 1.5rem;
            }
            .contact-bar .info {
                gap: 1rem;
                flex-direction: column;
            }
            .section-title {
                font-size: 1.8rem;
            }
            .filters {
                gap: 0.7rem;
            }
            .filter-btn {
                padding: 0.5rem 1.4rem;
                font-size: 0.9rem;
            }
            .offer-banner h3 {
                font-size: 1.8rem;
            }
        }

        @media (max-width: 480px) {
            .product-grid {
                grid-template-columns: 1fr 1fr;
                gap: 1rem;
            }
            .product-card {
                padding: 1.2rem 1rem 1.5rem;
            }
            .product-image {
                width: 100px;
                height: 100px;
                font-size: 4rem;
            }
            .brand h1 {
                font-size: 1.8rem;
            }
            .main-container {
                padding: 1.2rem;
                border-radius: 30px;
            }
            .hero {
                padding: 1.5rem 1rem;
            }
            .hero h2 {
                font-size: 1.6rem;
            }
            .offer-banner .offer-code {
                font-size: 1.2rem;
                padding: 0.4rem 1.8rem;
            }
        }
    </style>
</head>
<body>

    <div class="main-container">

        <!-- HEADER -->
        <div class="header">
            <div class="brand">
                <i class="fas fa-tshirt"></i>
                <h1>Rakshitha <span>Clothing</span></h1>
            </div>
            <div class="cart-badge" onclick="alert('🛒 Your cart has 0 items. Start shopping!')">
                <i class="fas fa-shopping-cart"></i> Cart (0)
            </div>
        </div>

        <!-- HERO SECTION -->
        <div class="hero">
            <h2>🌸 Elegant Sarees & Trendy Dresses</h2>
            <p>Discover the perfect outfit for every occasion</p>
            <div class="badges">
                <span><i class="fas fa-tag"></i> Up to 40% Off</span>
                <span><i class="fas fa-truck"></i> Free Shipping</span>
                <span><i class="fas fa-undo"></i> Easy Returns</span>
                <span><i class="fas fa-rupee-sign"></i> COD Available</span>
            </div>
        </div>

        <!-- CATEGORY FILTERS -->
        <div class="filters">
            <button class="filter-btn active" onclick="filterProducts(this, 'all')"><i class="fas fa-th"></i> All</button>
            <button class="filter-btn" onclick="filterProducts(this, 'saree')"><i class="fas fa-woman"></i> Sarees</button>
            <button class="filter-btn" onclick="filterProducts(this, 'dress')"><i class="fas fa-female"></i> Dresses</button>
            <button class="filter-btn" onclick="filterProducts(this, 'festive')"><i class="fas fa-star"></i> Festive</button>
            <button class="filter-btn" onclick="filterProducts(this, 'casual')"><i class="fas fa-sun"></i> Casual</button>
        </div>

        <!-- SECTION: New Arrivals -->
        <div class="section-title">
            <i class="fas fa-sparkles"></i>
            <span class="highlight">New Arrivals</span>
        </div>

        <!-- PRODUCT GRID -->
        <div class="product-grid" id="productGrid">

            <!-- Product 1: Silk Saree -->
            <div class="product-card" data-category="saree festive">
                <div class="wishlist-btn" onclick="alert('❤️ Added to wishlist!')"><i class="far fa-heart"></i></div>
                <div class="product-image"><i class="fas fa-tshirt"></i></div>
                <h3>Silk Saree</h3>
                <div class="category-tag">Festive Saree</div>
                <div class="color-swatches">
                    <span class="color-swatch active" style="background: #e91e63;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #9c27b0;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #1a73e8;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #e64a19;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #f9a825;" onclick="selectColor(this)"></span>
                </div>
                <div class="price">₹1,299 <span class="original">₹2,199</span></div>
                <button class="add-to-cart" onclick="addToCart(this)"><i class="fas fa-shopping-bag"></i> Add to Cart</button>
            </div>

            <!-- Product 2: Designer Saree -->
            <div class="product-card" data-category="saree festive">
                <div class="wishlist-btn" onclick="alert('❤️ Added to wishlist!')"><i class="far fa-heart"></i></div>
                <div class="product-image"><i class="fas fa-dress"></i></div>
                <h3>Designer Saree</h3>
                <div class="category-tag">Wedding Collection</div>
                <div class="color-swatches">
                    <span class="color-swatch active" style="background: #9c27b0;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #e91e63;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #1a73e8;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #43a047;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #ff6f00;" onclick="selectColor(this)"></span>
                </div>
                <div class="price">₹1,899 <span class="original">₹3,499</span></div>
                <button class="add-to-cart" onclick="addToCart(this)"><i class="fas fa-shopping-bag"></i> Add to Cart</button>
            </div>

            <!-- Product 3: Floral Dress -->
            <div class="product-card" data-category="dress casual">
                <div class="wishlist-btn" onclick="alert('❤️ Added to wishlist!')"><i class="far fa-heart"></i></div>
                <div class="product-image"><i class="fas fa-female"></i></div>
                <h3>Floral Dress</h3>
                <div class="category-tag">Casual Wear</div>
                <div class="color-swatches">
                    <span class="color-swatch active" style="background: #1a73e8;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #e91e63;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #43a047;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #f9a825;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #9c27b0;" onclick="selectColor(this)"></span>
                </div>
                <div class="price">₹899 <span class="original">₹1,499</span></div>
                <button class="add-to-cart" onclick="addToCart(this)"><i class="fas fa-shopping-bag"></i> Add to Cart</button>
            </div>

            <!-- Product 4: Party Dress -->
            <div class="product-card" data-category="dress festive">
                <div class="wishlist-btn" onclick="alert('❤️ Added to wishlist!')"><i class="far fa-heart"></i></div>
                <div class="product-image"><i class="fas fa-vest"></i></div>
                <h3>Party Dress</h3>
                <div class="category-tag">Party Wear</div>
                <div class="color-swatches">
                    <span class="color-swatch active" style="background: #43a047;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #e91e63;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #1a73e8;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #9c27b0;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #e64a19;" onclick="selectColor(this)"></span>
                </div>
                <div class="price">₹1,499 <span class="original">₹2,499</span></div>
                <button class="add-to-cart" onclick="addToCart(this)"><i class="fas fa-shopping-bag"></i> Add to Cart</button>
            </div>

            <!-- Product 5: Cotton Saree -->
            <div class="product-card" data-category="saree casual">
                <div class="wishlist-btn" onclick="alert('❤️ Added to wishlist!')"><i class="far fa-heart"></i></div>
                <div class="product-image"><i class="fas fa-tshirt"></i></div>
                <h3>Cotton Saree</h3>
                <div class="category-tag">Daily Wear</div>
                <div class="color-swatches">
                    <span class="color-swatch active" style="background: #e64a19;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #f9a825;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #43a047;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #1a73e8;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #e91e63;" onclick="selectColor(this)"></span>
                </div>
                <div class="price">₹699 <span class="original">₹1,199</span></div>
                <button class="add-to-cart" onclick="addToCart(this)"><i class="fas fa-shopping-bag"></i> Add to Cart</button>
            </div>

            <!-- Product 6: Summer Dress -->
            <div class="product-card" data-category="dress casual">
                <div class="wishlist-btn" onclick="alert('❤️ Added to wishlist!')"><i class="far fa-heart"></i></div>
                <div class="product-image"><i class="fas fa-sun"></i></div>
                <h3>Summer Dress</h3>
                <div class="category-tag">Summer Collection</div>
                <div class="color-swatches">
                    <span class="color-swatch active" style="background: #f9a825;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #e91e63;" onclick="selectColor(this)"></span>
                    <span class="color-swatch" style="background: #1a73e8;" onclick="selectColor(this)"></span>
                    <span class="color-s
