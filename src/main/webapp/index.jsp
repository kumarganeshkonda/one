<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rakshitha Travels 🌈 Car Rentals Hyderabad</title>
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
            background: linear-gradient(135deg, #fdfcfb 0%, #e2d1c3 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 2rem 1rem;
        }

        /* ---------- MAIN CARD ---------- */
        .travel-card {
            max-width: 1300px;
            width: 100%;
            background: rgba(255, 248, 240, 0.85);
            backdrop-filter: blur(8px);
            border-radius: 70px 70px 50px 50px;
            box-shadow: 0 30px 60px -15px rgba(0, 0, 0, 0.4);
            padding: 2.8rem 3rem;
            border: 2px solid rgba(255, 200, 150, 0.5);
            position: relative;
            overflow: hidden;
        }

        /* colorful floating blobs */
        .travel-card::before {
            content: '';
            position: absolute;
            top: -20%;
            right: -10%;
            width: 450px;
            height: 450px;
            background: radial-gradient(circle, #ffb07c30, #ff6f9130, #b06ab330);
            border-radius: 50%;
            filter: blur(80px);
            z-index: 0;
            pointer-events: none;
        }

        .travel-card::after {
            content: '';
            position: absolute;
            bottom: -15%;
            left: -10%;
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, #6dd5ed40, #2193b040, #b06ab330);
            border-radius: 50%;
            filter: blur(80px);
            z-index: 0;
            pointer-events: none;
        }

        .travel-card > * {
            position: relative;
            z-index: 1;
        }

        /* ---------- HEADER ---------- */
        .header {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2.5rem;
            padding-bottom: 1.2rem;
            border-bottom: 4px dashed #ff9a76;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .brand i {
            font-size: 3.6rem;
            color: #ff6b4a;
            background: linear-gradient(145deg, #ffe6d5, #ffd0b5);
            padding: 16px;
            border-radius: 50%;
            box-shadow: 0 10px 20px rgba(255, 100, 50, 0.3);
            border: 3px solid #ffb07c;
        }

        .brand h1 {
            font-size: 3.2rem;
            font-weight: 800;
            background: linear-gradient(135deg, #ff512f, #f09819, #ff6b6b);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            letter-spacing: -1px;
            text-shadow: 3px 5px 20px rgba(255, 80, 20, 0.2);
        }

        .brand span {
            font-size: 1.4rem;
            font-weight: 600;
            background: linear-gradient(145deg, #f7971e, #ffd200);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            padding: 0.2rem 1.4rem;
            border-radius: 60px;
            background-color: #ffeee0;
            -webkit-text-fill-color: #c76b2e;
        }

        .location-badge {
            background: linear-gradient(145deg, #2b1a12, #4a2c1e);
            color: #ffdccb;
            padding: 0.8rem 2.2rem;
            border-radius: 60px;
            font-size: 1.3rem;
            font-weight: 600;
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.2);
            display: flex;
            align-items: center;
            gap: 14px;
            border: 2px solid #ffb07c;
        }

        .location-badge i {
            color: #ffb07c;
            font-size: 1.8rem;
            animation: pulse-loc 2s infinite;
        }

        @keyframes pulse-loc {
            0% { transform: scale(1); }
            50% { transform: scale(1.2); color: #ffd966; }
            100% { transform: scale(1); }
        }

        /* ---------- TAGLINE ---------- */
        .tagline {
            text-align: center;
            margin: 1.8rem 0 3rem 0;
            font-size: 1.6rem;
            font-weight: 500;
            color: #3f281e;
            background: linear-gradient(90deg, #ffecd2, #fcb69f, #ffecd2);
            padding: 0.9rem 2.5rem;
            border-radius: 100px;
            display: inline-block;
            border: 2px solid #ffb07c;
            box-shadow: 0 8px 20px rgba(255, 150, 80, 0.25);
            letter-spacing: 0.5px;
        }

        .tagline i {
            color: #ff6b4a;
            margin: 0 12px;
            animation: wiggle 1.8s infinite;
        }

        @keyframes wiggle {
            0%, 100% { transform: rotate(0deg); }
            25% { transform: rotate(10deg); }
            75% { transform: rotate(-10deg); }
        }

        /* ---------- CAR GRID ---------- */
        .car-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 3rem;
            margin: 2.5rem 0 1.5rem;
        }

        .car-card {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(12px);
            border-radius: 60px 60px 50px 50px;
            padding: 2.2rem 2rem 2.8rem;
            box-shadow: 0 25px 40px -12px rgba(0, 0, 0, 0.2);
            transition: all 0.3s cubic-bezier(0.25, 0.46, 0.45, 0.94);
            border: 3px solid transparent;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .car-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            border-radius: 60px 60px 50px 50px;
            padding: 3px;
            background: linear-gradient(135deg, #ff9a9e, #fad0c4, #fbc2eb, #a18cd1, #fbc2eb);
            background-size: 300% 300%;
            -webkit-mask: linear-gradient(#fff 0 0) content-box, linear-gradient(#fff 0 0);
            -webkit-mask-composite: xor;
            mask-composite: exclude;
            animation: borderFlow 4s ease infinite;
            pointer-events: none;
        }

        @keyframes borderFlow {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .car-card:hover {
            transform: translateY(-16px) scale(1.01);
            box-shadow: 0 45px 60px -18px rgba(0, 0, 0, 0.35);
            background: rgba(255, 252, 248, 0.9);
            border-color: #ffb07c;
        }

        /* --- baleno specific colors --- */
        .car-card.baleno {
            background: linear-gradient(145deg, #fff5ee, #ffe8dc);
        }
        .car-card.baleno .car-image {
            background: linear-gradient(145deg, #ffdab9, #ffb07c);
            color: #6b3a1f;
        }
        .car-card.baleno .car-badge {
            background: linear-gradient(145deg, #ff9a56, #f57c3a);
            color: #fff;
        }
        .car-card.baleno .rent-btn {
            background: linear-gradient(145deg, #ff7e5f, #feb47b);
            border-color: #f57c3a;
        }
        .car-card.baleno .rent-btn:hover {
            background: linear-gradient(145deg, #e8684a, #f59a5a);
        }

        /* --- ertiga specific colors --- */
        .car-card.ertiga {
            background: linear-gradient(145deg, #e8f4f8, #d4eaf0);
        }
        .car-card.ertiga .car-image {
            background: linear-gradient(145deg, #a8d8ea, #56b4d3);
            color: #1a4350;
        }
        .car-card.ertiga .car-badge {
            background: linear-gradient(145deg, #2193b0, #6dd5ed);
            color: #fff;
        }
        .car-card.ertiga .rent-btn {
            background: linear-gradient(145deg, #2193b0, #6dd5ed);
            border-color: #1f7a94;
        }
        .car-card.ertiga .rent-btn:hover {
            background: linear-gradient(145deg, #1a7a94, #4fb8d1);
        }

        .car-image {
            font-size: 6.5rem;
            width: 150px;
            height: 150px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            margin-bottom: 1.4rem;
            box-shadow: 0 16px 30px -8px rgba(0, 0, 0, 0.2);
            transition: 0.3s;
            border: 4px solid rgba(255, 255, 255, 0.7);
        }

        .car-card:hover .car-image {
            transform: scale(1.05) rotate(-3deg);
        }

        .car-card h2 {
            font-size: 2.7rem;
            font-weight: 800;
            color: #2c1a10;
            letter-spacing: -0.5px;
            margin-bottom: 0.4rem;
        }

        .car-card.baleno h2 {
            color: #6b3a1f;
        }
        .car-card.ertiga h2 {
            color: #1a4350;
        }

        .car-badge {
            padding: 0.4rem 2rem;
            border-radius: 60px;
            font-weight: 700;
            font-size: 1.1rem;
            letter-spacing: 0.5px;
            margin: 0.2rem 0 0.8rem;
            display: inline-block;
            box-shadow: 0 6px 14px rgba(0,0,0,0.1);
        }

        .car-desc {
            font-size: 1.15rem;
            background: rgba(255, 255, 255, 0.5);
            padding: 0.5rem 1.6rem;
            border-radius: 60px;
            width: 100%;
            margin: 0.4rem 0 0.6rem;
            font-weight: 600;
            color: #2c1a10;
            backdrop-filter: blur(4px);
            border: 1px solid rgba(255,255,255,0.6);
        }

        .car-features {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 1.2rem 2rem;
            margin: 0.6rem 0 1.2rem;
            font-size: 1.1rem;
            background: rgba(255, 255, 255, 0.4);
            padding: 0.7rem 1.6rem;
            border-radius: 60px;
            width: 100%;
            backdrop-filter: blur(4px);
            border: 1px solid rgba(255,255,255,0.3);
        }

        .car-features i {
            margin-right: 8px;
        }
        .car-card.baleno .car-features i { color: #d4692c; }
        .car-card.ertiga .car-features i { color: #1f7a94; }

        .rent-btn {
            border: none;
            font-size: 1.5rem;
            font-weight: 700;
            padding: 1rem 2.5rem;
            border-radius: 60px;
            width: 100%;
            max-width: 240px;
            cursor: pointer;
            box-shadow: 0 12px 24px -8px rgba(0, 0, 0, 0.2);
            transition: all 0.25s ease;
            margin-top: 0.8rem;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 14px;
            color: #fff;
            border: 2px solid rgba(255,255,255,0.3);
        }

        .rent-btn i {
            font-size: 1.7rem;
            transition: 0.2s;
        }

        .rent-btn:hover {
            transform: scale(1.04);
            box-shadow: 0 18px 32px -8px rgba(0, 0, 0, 0.3);
            gap: 20px;
            filter: brightness(1.08);
        }

        .rent-btn:active {
            transform: scale(0.94);
        }

        .price-tag {
            margin-top: 14px;
            font-weight: 700;
            font-size: 1.2rem;
            padding: 0.4rem 2rem;
            border-radius: 60px;
            background: rgba(255, 255, 255, 0.6);
            backdrop-filter: blur(4px);
            border: 2px dashed #ff9a76;
        }
        .car-card.baleno .price-tag { color: #8a4e2a; border-color: #f57c3a; }
        .car-card.ertiga .price-tag { color: #1a5a6e; border-color: #2193b0; }

        /* ---------- CONTACT BAR (colorful) ---------- */
        .contact-bar {
            margin-top: 4rem;
            background: linear-gradient(135deg, #2b1a12, #4a2c1e, #2b1a12);
            border-radius: 60px;
            padding: 1.5rem 2.8rem;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            color: #fae3d4;
            border: 3px solid #ffb07c;
            box-shadow: 0 12px 30px rgba(0,0,0,0.2);
        }

        .contact-bar .info {
            display: flex;
            flex-wrap: wrap;
            gap: 2.2rem;
            font-size: 1.15rem;
            font-weight: 500;
        }

        .contact-bar .info i {
            color: #ffb07c;
            margin-right: 12px;
            font-size: 1.6rem;
            transition: 0.2s;
        }

        .contact-bar .info span {
            display: inline-flex;
            align-items: center;
            background: rgba(255, 255, 255, 0.05);
            padding: 0.2rem 1.2rem 0.2rem 0.8rem;
            border-radius: 60px;
            border: 1px solid #7a4d33;
        }

        .contact-bar .social i {
            font-size: 2.2rem;
            margin-left: 1.2rem;
            color: #dba783;
            transition: 0.3s;
            cursor: default;
            padding: 0.3rem;
            border-radius: 50%;
            background: rgba(255,255,255,0.05);
        }

        .contact-bar .social i:hover {
            color: #fff;
            transform: scale(1.2) rotate(5deg);
            background: rgba(255, 180, 120, 0.2);
        }

        .footer-note {
            margin-top: 2rem;
            font-size: 1rem;
            color: #3f281e;
            text-align: center;
            border-top: 3px dotted #ffb07c;
            padding-top: 1.6rem;
            width: 100%;
            font-weight: 500;
            letter-spacing: 0.3px;
            background: linear-gradient(90deg, #ffecd2, #fcb69f);
            border-radius: 60px;
            padding: 1rem 2rem;
        }

        .footer-note i {
            color: #ff6b4a;
            margin: 0 6px;
        }

        /* ---------- RESPONSIVE ---------- */
        @media (max-width: 800px) {
            .travel-card {
                padding: 1.8rem;
                border-radius: 40px;
            }
            .brand h1 {
                font-size: 2.4rem;
            }
            .brand i {
                font-size: 2.8rem;
                padding: 12px;
            }
            .location-badge {
                font-size: 1rem;
                padding: 0.4rem 1.4rem;
                margin-top: 0.4rem;
            }
            .header {
                flex-direction: column;
                align-items: start;
                gap: 12px;
            }
            .car-grid {
                grid-template-columns: 1fr;
                gap: 2.4rem;
            }
            .contact-bar {
                flex-direction: column;
                gap: 1.2rem;
                align-items: start;
                padding: 1.8rem;
            }
            .contact-bar .info {
                gap: 1rem;
                flex-direction: column;
            }
            .tagline {
                font-size: 1.2rem;
                padding: 0.5rem 1.5rem;
            }
        }

        @media (max-width: 480px) {
            .car-card h2 {
                font-size: 2.2rem;
            }
            .car-image {
                width: 120px;
                height: 120px;
                font-size: 5rem;
            }
            .rent-btn {
                font-size: 1.3rem;
                padding: 0.8rem 1.5rem;
            }
            .travel-card {
                padding: 1.2rem;
            }
        }
    </style>
</head>
<body>

    <div class="travel-card">

        <!-- HEADER -->
        <div class="header">
            <div class="brand">
                <i class="fas fa-car-side"></i>
                <h1>Rakshitha <span>Travels</span></h1>
            </div>
            <div class="location-badge">
                <i class="fas fa-map-pin"></i> Hyderabad · ⭐ 4.9
            </div>
        </div>

        <!-- TAGLINE -->
        <div style="text-align: center;">
            <div class="tagline">
                <i class="fas fa-route"></i> Drive in style · Book Baleno or Ertiga <i class="fas fa-clock"></i>
            </div>
        </div>

        <!-- CAR GRID -->
        <div class="car-grid">

            <!-- BALENO -->
            <div class="car-card baleno">
                <div class="car-image">
                    <i class="fas fa-car"></i>
                </div>
                <h2>Baleno</h2>
                <div class="car-badge"><i class="fas fa-star" style="margin-right: 8px;"></i> Premium Hatchback</div>
                <div class="car-desc"><i class="fas fa-gas-pump"></i> Petrol · 5-Seater</div>
                <div class="car-features">
                    <span><i class="fas fa-snowflake"></i> AC</span>
                    <span><i class="fas fa-bluetooth-b"></i> Bluetooth</span>
                    <span><i class="fas fa-shield-alt"></i> Airbags</span>
                </div>
                <button class="rent-btn" onclick="alert('✅ Baleno booked! 🚗 Enjoy your ride with Rakshitha Travels.')">
                    <i class="fas fa-key"></i> Rent Now
                </button>
                <div class="price-tag"><i class="fas fa-rupee-sign"></i> 2,499 / day</div>
            </div>

            <!-- ERTIGA -->
            <div class="car-card ertiga">
                <div class="car-image">
                    <i class="fas fa-van-shuttle"></i>
                </div>
                <h2>Ertiga</h2>
                <div class="car-badge"><i class="fas fa-users" style="margin-right: 8px;"></i> Family MPV</div>
                <div class="car-desc"><i class="fas fa-gas-pump"></i> Petrol · 7-Seater</div>
                <div class="car-features">
                    <span><i class="fas fa-snowflake"></i> AC</span>
                    <span><i class="fas fa-video"></i> Rear Camera</span>
                    <span><i class="fas fa-child"></i> Child Lock</span>
                </div>
                <button class="rent-btn" onclick="alert('✅ Ertiga booked! 👨‍👩‍👧‍👦 Perfect for family trips.')">
                    <i class="fas fa-key"></i> Rent Now
                </button>
                <div class="price-tag"><i class="fas fa-rupee-sign"></i> 3,299 / day</div>
            </div>
        </div>

        <!-- CONTACT & FOOTER -->
        <div class="contact-bar">
            <div class="info">
                <span><i class="fas fa-phone-alt"></i> +91 98765 43210</span>
                <span><i class="fas fa-envelope"></i> rakshitha.cars@hyd.in</span>
                <span><i class="fas fa-clock"></i> 6 AM – 11 PM</span>
            </div>
            <div class="social">
                <i class="fab fa-whatsapp"></i>
                <i class="fab fa-instagram"></i>
                <i class="fab fa-facebook"></i>
                <i class="fab fa-youtube"></i>
            </div>
        </div>

        <div class="footer-note">
            <i class="fas fa-check-circle"></i> 
            Rakshitha Travels · Hyderabad · 2 cars available — Baleno &amp; Ertiga
            <span style="display: inline-block; margin-left: 14px; background: #ffb07c40; padding: 0 18px; border-radius: 60px; border: 1px solid #ffb07c;">
                <i class="fas fa-car"></i> 2 vehicles
            </span>
            <span style="display: inline-block; margin-left: 10px; background: #6dd5ed40; padding: 0 14px; border-radius: 60px;">
                <i class="fas fa-star" style="color: #ffd700;"></i> 4.9 ⭐
            </span>
        </div>

    </div>
    <!-- end travel-card -->

</body>
</html>
