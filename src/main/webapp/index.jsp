<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rakshitha Travels - Car Rentals Hyderabad</title>
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

        /* ---------- MAIN CONTAINER ---------- */
        .main-container {
            max-width: 1100px;
            width: 100%;
            background: rgba(255, 248, 240, 0.92);
            backdrop-filter: blur(8px);
            border-radius: 50px 50px 40px 40px;
            box-shadow: 0 30px 60px -15px rgba(0, 0, 0, 0.3);
            padding: 2.5rem 2.8rem;
            border: 2px solid rgba(255, 200, 150, 0.4);
            position: relative;
            overflow: hidden;
        }

        /* colorful background blobs */
        .main-container::before {
            content: '';
            position: absolute;
            top: -20%;
            right: -10%;
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, #ffb07c30, #ff6f9130, #b06ab330);
            border-radius: 50%;
            filter: blur(80px);
            z-index: 0;
            pointer-events: none;
        }

        .main-container::after {
            content: '';
            position: absolute;
            bottom: -15%;
            left: -10%;
            width: 350px;
            height: 350px;
            background: radial-gradient(circle, #6dd5ed40, #2193b040, #b06ab330);
            border-radius: 50%;
            filter: blur(80px);
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
            padding-bottom: 1rem;
            border-bottom: 4px dashed #ff9a76;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .brand i {
            font-size: 3.2rem;
            color: #ff6b4a;
            background: linear-gradient(145deg, #ffe6d5, #ffd0b5);
            padding: 14px;
            border-radius: 50%;
            box-shadow: 0 10px 20px rgba(255, 100, 50, 0.25);
            border: 3px solid #ffb07c;
        }

        .brand h1 {
            font-size: 2.8rem;
            font-weight: 800;
            background: linear-gradient(135deg, #ff512f, #f09819, #ff6b6b);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            letter-spacing: -1px;
        }

        .brand span {
            font-size: 1.2rem;
            font-weight: 600;
            background: linear-gradient(145deg, #f7971e, #ffd200);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            padding: 0.2rem 1.2rem;
            border-radius: 60px;
            background-color: #ffeee0;
            -webkit-text-fill-color: #c76b2e;
        }

        .location-badge {
            background: linear-gradient(145deg, #2b1a12, #4a2c1e);
            color: #ffdccb;
            padding: 0.7rem 2rem;
            border-radius: 60px;
            font-size: 1.2rem;
            font-weight: 600;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
            display: flex;
            align-items: center;
            gap: 12px;
            border: 2px solid #ffb07c;
        }

        .location-badge i {
            color: #ffb07c;
            font-size: 1.6rem;
            animation: pulse-loc 2s infinite;
        }

        @keyframes pulse-loc {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.15); color: #ffd966; }
        }

        /* ---------- SECTION TITLE ---------- */
        .section-title {
            font-size: 2.2rem;
            font-weight: 700;
            color: #2c1a10;
            margin: 1.5rem 0 1.8rem 0;
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .section-title i {
            color: #ff6b4a;
            font-size: 2.5rem;
            background: linear-gradient(145deg, #ffe6d5, #ffd0b5);
            padding: 12px;
            border-radius: 50%;
            box-shadow: 0 6px 16px rgba(255, 100, 50, 0.15);
        }

        .section-title .highlight {
            background: linear-gradient(135deg, #ff512f, #f09819);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        /* ---------- RENTAL DETAILS GRID ---------- */
        .rental-details {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1.5rem;
            background: linear-gradient(135deg, #fff5ee, #ffe8dc);
            padding: 2rem;
            border-radius: 40px;
            margin-bottom: 2rem;
            border: 2px solid #ffb07c;
            box-shadow: inset 0 4px 20px rgba(255, 150, 80, 0.1);
        }

        .detail-item {
            display: flex;
            flex-direction: column;
            gap: 4px;
        }

        .detail-item .label {
            font-size: 0.85rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: #b45f3a;
        }

        .detail-item .value {
            font-size: 1.2rem;
            font-weight: 600;
            color: #2c1a10;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .detail-item .value i {
            color: #ff6b4a;
            font-size: 1.1rem;
        }

        .detail-item.duration .value {
            background: linear-gradient(135deg, #ff6b4a, #f09819);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            font-size: 1.4rem;
            font-weight: 800;
        }

        /* ---------- KM OPTIONS SECTION ---------- */
        .km-section {
            background: linear-gradient(135deg, #e8f4f8, #d4eaf0);
            padding: 2rem;
            border-radius: 40px;
            margin: 2rem 0;
            border: 2px solid #56b4d3;
            box-shadow: inset 0 4px 20px rgba(33, 147, 176, 0.1);
        }

        .km-section .title {
            font-size: 1.6rem;
            font-weight: 700;
            color: #1a4350;
            margin-bottom: 0.8rem;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .km-section .title i {
            color: #2193b0;
            font-size: 2rem;
        }

        .km-section .subtitle {
            font-size: 1.1rem;
            color: #2c5a6e;
            margin-bottom: 1.5rem;
            font-weight: 500;
        }

        .km-options {
            display: flex;
            flex-wrap: wrap;
            gap: 1.2rem;
            margin-top: 0.5rem;
        }

        .km-option {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(4px);
            padding: 0.8rem 2rem;
            border-radius: 60px;
            font-weight: 700;
            font-size: 1.1rem;
            color: #1a4350;
            border: 3px solid #56b4d3;
            cursor: pointer;
            transition: all 0.25s ease;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .km-option i {
            color: #2193b0;
            font-size: 1.2rem;
        }

        .km-option:hover {
            transform: translateY(-4px);
            box-shadow: 0 12px 24px rgba(33, 147, 176, 0.2);
            background: rgba(255, 255, 255, 0.9);
            border-color: #2193b0;
        }

        .km-option.active {
            background: linear-gradient(145deg, #2193b0, #6dd5ed);
            color: #fff;
            border-color: #2193b0;
            box-shadow: 0 8px 20px rgba(33, 147, 176, 0.3);
        }

        .km-option.active i {
            color: #fff;
        }

        /* ---------- BRAND LOGO SECTION ---------- */
        .brand-logo-section {
            text-align: center;
            margin: 2rem 0 1.8rem;
            padding: 1.2rem;
            background: linear-gradient(135deg, #fff5ee, #ffe8dc);
            border-radius: 40px;
            border: 2px solid #ffb07c;
        }

        .brand-logo-section .logo-text {
            font-size: 2.8rem;
            font-weight: 900;
            background: linear-gradient(135deg, #ff512f, #f09819, #ff6b6b, #b06ab3);
            background-size: 300% 300%;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            animation: gradientShift 4s ease infinite;
            letter-spacing: 2px;
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .brand-logo-section .sub-text {
            font-size: 1.1rem;
            color: #4a3225;
            font-weight: 500;
            margin-top: 4px;
        }

        /* ---------- PLAN SELECTION CARDS ---------- */
        .plan-section {
            margin: 2rem 0 1.5rem;
        }

        .plan-section .plan-title {
            font-size: 1.8rem;
            font-weight: 700;
            color: #2c1a10;
            margin-bottom: 1.5rem;
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .plan-section .plan-title i {
            color: #ff6b4a;
            background: linear-gradient(145deg, #ffe6d5, #ffd0b5);
            padding: 10px 14px;
            border-radius: 50%;
            font-size: 1.6rem;
        }

        .plan-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 1.8rem;
        }

        .plan-card {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(6px);
            padding: 1.8rem 1.5rem 2rem;
            border-radius: 40px;
            text-align: center;
            border: 3px solid transparent;
            transition: all 0.3s ease;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.05);
            cursor: pointer;
        }

        .plan-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
        }

        .plan-card:nth-child(1) {
            border-color: #ff9a76;
            background: linear-gradient(145deg, #fff5ee, #ffe8dc);
        }

        .plan-card:nth-child(1):hover {
            border-color: #ff6b4a;
            box-shadow: 0 20px 40px rgba(255, 100, 50, 0.15);
        }

        .plan-card:nth-child(2) {
            border-color: #56b4d3;
            background: linear-gradient(145deg, #e8f4f8, #d4eaf0);
        }

        .plan-card:nth-child(2):hover {
            border-color: #2193b0;
            box-shadow: 0 20px 40px rgba(33, 147, 176, 0.15);
        }

        .plan-card:nth-child(3) {
            border-color: #b06ab3;
            background: linear-gradient(145deg, #f3e8f5, #e8d4ea);
        }

        .plan-card:nth-child(3):hover {
            border-color: #9b4a9e;
            box-shadow: 0 20px 40px rgba(176, 106, 179, 0.15);
        }

        .plan-card .plan-icon {
            font-size: 2.8rem;
            margin-bottom: 0.6rem;
        }

        .plan-card:nth-child(1) .plan-icon { color: #ff6b4a; }
        .plan-card:nth-child(2) .plan-icon { color: #2193b0; }
        .plan-card:nth-child(3) .plan-icon { color: #9b4a9e; }

        .plan-card .plan-name {
            font-size: 1.5rem;
            font-weight: 700;
            color: #2c1a10;
        }

        .plan-card .plan-desc {
            font-size: 0.95rem;
            color: #4a3225;
            margin-top: 4px;
            font-weight: 500;
        }

        .plan-card .plan-price {
            margin-top: 12px;
            font-size: 1.3rem;
            font-weight: 800;
            padding: 0.4rem 1.2rem;
            border-radius: 60px;
            display: inline-block;
        }

        .plan-card:nth-child(1) .plan-price {
            color: #b45f3a;
            background: rgba(255, 150, 80, 0.15);
        }

        .plan-card:nth-child(2) .plan-price {
            color: #1a5a6e;
            background: rgba(33, 147, 176, 0.15);
        }

        .plan-card:nth-child(3) .plan-price {
            color: #7a3a7e;
            background: rgba(176, 106, 179, 0.15);
        }

        .plan-card .select-btn {
            margin-top: 14px;
            padding: 0.7rem 2rem;
            border: none;
            border-radius: 60px;
            font-weight: 700;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.25s ease;
            color: #fff;
            width: 100%;
        }

        .plan-card:nth-child(1) .select-btn {
            background: linear-gradient(145deg, #ff7e5f, #feb47b);
        }
        .plan-card:nth-child(1) .select-btn:hover {
            background: linear-gradient(145deg, #e8684a, #f59a5a);
            transform: scale(1.02);
        }

        .plan-card:nth-child(2) .select-btn {
            background: linear-gradient(145deg, #2193b0, #6dd5ed);
        }
        .plan-card:nth-child(2) .select-btn:hover {
            background: linear-gradient(145deg, #1a7a94, #4fb8d1);
            transform: scale(1.02);
        }

        .plan-card:nth-child(3) .select-btn {
            background: linear-gradient(145deg, #9b4a9e, #c77dc9);
        }
        .plan-card:nth-child(3) .select-btn:hover {
            background: linear-gradient(145deg, #7a3a7e, #b06ab3);
            transform: scale(1.02);
        }

        /* ---------- CONTACT BAR ---------- */
        .contact-bar {
            margin-top: 3rem;
            background: linear-gradient(135deg, #2b1a12, #4a2c1e, #2b1a12);
            border-radius: 60px;
            padding: 1.2rem 2.5rem;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            color: #fae3d4;
            border: 3px solid #ffb07c;
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
            color: #ffb07c;
            margin-right: 10px;
            font-size: 1.4rem;
        }

        .contact-bar .info span {
            display: inline-flex;
            align-items: center;
            background: rgba(255, 255, 255, 0.05);
            padding: 0.2rem 1rem 0.2rem 0.6rem;
            border-radius: 60px;
            border: 1px solid #7a4d33;
        }

        .contact-bar .social i {
            font-size: 2rem;
            margin-left: 1rem;
            color: #dba783;
            transition: 0.3s;
            cursor: default;
            padding: 0.3rem;
            border-radius: 50%;
            background: rgba(255,255,255,0.05);
        }

        .contact-bar .social i:hover {
            color: #fff;
            transform: scale(1.15);
            background: rgba(255, 180, 120, 0.15);
        }

        .footer-note {
            margin-top: 1.8rem;
            font-size: 1rem;
            color: #3f281e;
            text-align: center;
            border-top: 3px dotted #ffb07c;
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
                padding: 10px;
            }
            .location-badge {
                font-size: 1rem;
                padding: 0.5rem 1.4rem;
                margin-top: 0.4rem;
            }
            .header {
                flex-direction: column;
                align-items: start;
                gap: 12px;
            }
            .rental-details {
                grid-template-columns: 1fr 1fr;
                padding: 1.5rem;
            }
            .km-options {
                flex-direction: column;
                align-items: stretch;
            }
            .km-option {
                justify-content: center;
            }
            .plan-cards {
                grid-template-columns: 1fr;
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
        }

        @media (max-width: 480px) {
            .rental-details {
                grid-template-columns: 1fr;
                gap: 1rem;
            }
            .brand h1 {
                font-size: 1.8rem;
            }
            .brand-logo-section .logo-text {
                font-size: 2.2rem;
            }
            .main-container {
                padding: 1.2rem;
            }
        }
    </style>
</head>
<body>

    <div class="main-container">

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

        <!-- SECTION: Daily Rentals -->
        <div class="section-title">
            <i class="fas fa-calendar-day"></i>
            <span class="highlight">Daily Rentals</span>
        </div>

        <!-- RENTAL DETAILS -->
        <div class="rental-details">
            <div class="detail-item">
                <div class="label"><i class="fas fa-map-marker-alt"></i> Location</div>
                <div class="value">Hyderabad</div>
            </div>
            <div class="detail-item">
                <div class="label"><i class="fas fa-calendar-plus"></i> Pick-Up Date</div>
                <div class="value"><i class="far fa-calendar-alt"></i> 06-Sep-2026 09:30 AM</div>
            </div>
            <div class="detail-item">
                <div class="label"><i class="fas fa-calendar-check"></i> Return Date</div>
                <div class="value"><i class="far fa-calendar-alt"></i> 09-Sep-2026 06:30 PM</div>
            </div>
            <div class="detail-item duration">
                <div class="label"><i class="fas fa-clock"></i> Duration</div>
                <div class="value"><i class="fas fa-hourglass-half"></i> 3 Days and 9 hours</div>
            </div>
        </div>

        <!-- SECTION: Flexible Kms -->
        <div class="km-section">
            <div class="title">
                <i class="fas fa-road"></i> Flexible Kms options in and around Hyderabad
            </div>
            <div class="subtitle">
                <i class="fas fa-check-circle" style="color: #2193b0;"></i>
                Freedom to choose between 120 kms, 300 kms and Unlimited kms as per your travel needs.
            </div>
            <div class="km-options">
                <div class="km-option" onclick="selectKm(this)">
                    <i class="fas fa-tachometer-alt"></i> 120 kms/day
                </div>
                <div class="km-option active" onclick="selectKm(this)">
                    <i class="fas fa-tachometer-alt"></i> 300 kms/day
                </div>
                <div class="km-option" onclick="selectKm(this)">
                    <i class="fas fa-infinity"></i> Unlimited kms
                </div>
            </div>
        </div>

        <!-- BRAND LOGO: MYCHIZE - SELF DRIVE CARS -->
        <div class="brand-logo-section">
            <div class="logo-text">MYCHIZE</div>
            <div class="sub-text"><i class="fas fa-steering-wheel"></i> SELF DRIVE CARS</div>
        </div>

        <!-- SECTION: Choose Your Plan -->
        <div class="plan-section">
            <div class="plan-title">
                <i class="fas fa-crown"></i>
                Choose Your Plan
            </div>
            <div class="plan-cards">
                <div class="plan-card">
                    <div class="plan-icon"><i class="fas fa-road"></i></div>
                    <div class="plan-name">120 kms/day</div>
                    <div class="plan-desc">Perfect for city commutes</div>
                    <div class="plan-price">₹ 1,999 / day</div>
                    <button class="select-btn" onclick="alert('✅ 120 kms/day plan selected!')">Select Plan</button>
                </div>
                <div class="plan-card">
                    <div class="plan-icon"><i class="fas fa-route"></i></div>
                    <div class="plan-name">300 kms/day</div>
                    <div class="plan-desc">Ideal for weekend getaways</div>
                    <div class="plan-price">₹ 2,499 / day</div>
                    <button class="select-btn" onclick="alert('✅ 300 kms/day plan selected!')">Select Plan</button>
                </div>
                <div class="plan-card">
                    <div class="plan-icon"><i class="fas fa-infinity"></i></div>
                    <div class="plan-name">Unlimited kms</div>
                    <div class="plan-desc">Drive without limits</div>
                    <div class="plan-price">₹ 3,499 / day</div>
                    <button class="select-btn" onclick="alert('✅ Unlimited kms plan selected!')">Select Plan</button>
                </div>
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
            <i class="fas fa-check-circle" style="color: #ff6b4a;"></i>
            Rakshitha Travels · Hyderabad · 2 cars available — Baleno &amp; Ertiga
            <span style="display: inline-block; margin-left: 14px; background: #ffb07c30; padding: 0 16px; border-radius: 60px; border: 1px solid #ffb07c;">
                <i class="fas fa-car"></i> 2 vehicles
            </span>
        </div>

    </div>
    <!-- end main-container -->

    <script>
        // KM option selection
        function selectKm(element) {
            // Remove active class from all km options
            document.querySelectorAll('.km-option').forEach(opt => {
                opt.classList.remove('active');
            });
            // Add active class to clicked option
            element.classList.add('active');
        }
    </script>

</body>
</html>
