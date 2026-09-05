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
            background: linear-gradient(145deg, #f9f3e8 0%, #ffe9d6 100%);
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
            background: rgba(255, 245, 235, 0.75);
            backdrop-filter: blur(4px);
            border-radius: 60px 60px 40px 40px;
            box-shadow: 0 25px 50px -8px rgba(0, 0, 0, 0.3), inset 0 2px 4px rgba(255, 255, 255, 0.6);
            padding: 2.5rem 2.8rem;
            transition: all 0.2s ease;
            border: 1px solid rgba(255, 215, 175, 0.5);
        }

        /* ---------- HEADER ---------- */
        .header {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2.8rem;
            border-bottom: 3px dashed #e6b48c;
            padding-bottom: 1.2rem;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .brand i {
            font-size: 3.2rem;
            color: #b45f3a;
            background: #fce3d0;
            padding: 12px;
            border-radius: 50%;
            box-shadow: 0 8px 14px rgba(160, 90, 50, 0.2);
        }

        .brand h1 {
            font-size: 2.9rem;
            font-weight: 700;
            letter-spacing: -0.5px;
            background: linear-gradient(135deg, #6b3e26, #b45f3a);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-shadow: 2px 4px 12px rgba(180, 95, 58, 0.15);
        }

        .brand span {
            font-size: 1.3rem;
            font-weight: 300;
            color: #7a4d33;
            background: #ffe1cc;
            padding: 0.2rem 1.2rem;
            border-radius: 60px;
            margin-left: 8px;
            -webkit-text-fill-color: #7a4d33;
        }

        .location-badge {
            background: #2b1a12;
            color: #f7dccb;
            padding: 0.7rem 1.8rem;
            border-radius: 60px;
            font-size: 1.2rem;
            font-weight: 500;
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.15);
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .location-badge i {
            color: #f5b183;
            font-size: 1.6rem;
        }

        /* ---------- TAGLINE ---------- */
        .tagline {
            text-align: center;
            margin: 1.5rem 0 2.8rem 0;
            font-size: 1.5rem;
            font-weight: 400;
            color: #3f281e;
            background: rgba(255, 215, 185, 0.5);
            padding: 0.8rem 2rem;
            border-radius: 100px;
            backdrop-filter: blur(2px);
            display: inline-block;
            letter-spacing: 1px;
            border: 1px solid #f5cfb6;
        }

        .tagline i {
            color: #b45f3a;
            margin: 0 10px;
        }

        /* ---------- CAR GRID ---------- */
        .car-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(340px, 1fr));
            gap: 2.8rem;
            margin: 2rem 0 1rem;
        }

        .car-card {
            background: #ffffffdd;
            backdrop-filter: blur(6px);
            border-radius: 50px 50px 40px 40px;
            padding: 1.8rem 1.8rem 2.5rem;
            box-shadow: 0 20px 30px -10px rgba(90, 50, 30, 0.2), 0 4px 10px rgba(0, 0, 0, 0.05);
            transition: transform 0.25s ease, box-shadow 0.3s;
            border: 1px solid rgba(255, 215, 175, 0.5);
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .car-card:hover {
            transform: translateY(-12px);
            box-shadow: 0 40px 45px -18px rgba(110, 65, 40, 0.4);
            background: #fffaf5;
            border-color: #dba783;
        }

        .car-image {
            font-size: 6rem;
            color: #3d281e;
            background: #f5dccb;
            width: 140px;
            height: 140px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            margin-bottom: 1.2rem;
            box-shadow: inset 0 -6px 0 #ccaa8f, 0 14px 20px -8px rgba(80, 45, 25, 0.3);
            transition: 0.2s;
        }

        .car-card:hover .car-image {
            background: #fce2d1;
            box-shadow: inset 0 -6px 0 #b48362, 0 18px 25px -8px #8a5e42;
        }

        .car-card h2 {
            font-size: 2.5rem;
            font-weight: 700;
            color: #341f15;
            letter-spacing: -0.5px;
            border-bottom: 3px dotted #e6b48c;
            padding-bottom: 0.3rem;
            margin-bottom: 0.6rem;
        }

        .car-badge {
            background: #cc9f82;
            color: #1f140e;
            padding: 0.3rem 1.8rem;
            border-radius: 60px;
            font-weight: 600;
            font-size: 1.1rem;
            letter-spacing: 0.5px;
            margin: 0.4rem 0 0.9rem;
            display: inline-block;
            box-shadow: inset 0 -2px 0 #a7785b;
        }

        .car-desc {
            font-size: 1.1rem;
            color: #4a3225;
            background: #f7e7db;
            padding: 0.6rem 1.2rem;
            border-radius: 60px;
            width: 100%;
            margin: 0.6rem 0 0.8rem;
            font-weight: 500;
        }

        .car-features {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 1.6rem;
            margin: 0.8rem 0 1.2rem;
            font-size: 1.1rem;
            color: #341f15;
            background: #f2ddd0;
            padding: 0.7rem 1.2rem;
            border-radius: 60px;
            width: 100%;
        }

        .car-features i {
            color: #b45f3a;
            margin-right: 6px;
        }

        .rent-btn {
            background: #b45f3a;
            border: none;
            color: #fff8f0;
            font-size: 1.4rem;
            font-weight: 600;
            padding: 0.9rem 2.2rem;
            border-radius: 60px;
            width: 100%;
            max-width: 220px;
            cursor: pointer;
            box-shadow: 0 10px 18px -6px #7a4d33;
            transition: 0.2s;
            margin-top: 0.6rem;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            border: 1px solid #dba17b;
        }

        .rent-btn i {
            font-size: 1.6rem;
            transition: 0.2s;
        }

        .rent-btn:hover {
            background: #9f4f2e;
            transform: scale(1.02);
            box-shadow: 0 14px 22px -6px #5d3a27;
            color: white;
            gap: 18px;
        }

        .rent-btn:active {
            transform: scale(0.96);
        }

        /* ---------- FOOTER / CONTACT ---------- */
        .contact-bar {
            margin-top: 3.8rem;
            background: #271b15;
            border-radius: 60px;
            padding: 1.2rem 2.5rem;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            color: #fae3d4;
            border: 1px solid #b48362;
        }

        .contact-bar .info {
            display: flex;
            flex-wrap: wrap;
            gap: 2rem;
            font-size: 1.1rem;
        }

        .contact-bar .info i {
            color: #e6b48c;
            margin-right: 10px;
            font-size: 1.4rem;
        }

        .contact-bar .info span {
            display: inline-flex;
            align-items: center;
        }

        .contact-bar .social i {
            font-size: 2rem;
            margin-left: 1rem;
            color: #dba783;
            transition: 0.2s;
            cursor: default;
        }

        .contact-bar .social i:hover {
            color: #f7dccb;
            transform: scale(1.2);
        }

        .footer-note {
            margin-top: 1.8rem;
            font-size: 0.95rem;
            color: #4f372a;
            text-align: center;
            border-top: 1px solid #dbbca5;
            padding-top: 1.4rem;
            width: 100%;
            letter-spacing: 0.3px;
        }

        /* ---------- RESPONSIVE ---------- */
        @media (max-width: 760px) {
            .travel-card {
                padding: 1.8rem;
                border-radius: 40px;
            }
            .brand h1 {
                font-size: 2.2rem;
            }
            .brand i {
                font-size: 2.5rem;
                padding: 10px;
            }
            .location-badge {
                font-size: 1rem;
                padding: 0.5rem 1rem;
                margin-top: 0.5rem;
            }
            .header {
                flex-direction: column;
                align-items: start;
                gap: 12px;
            }
            .car-grid {
                grid-template-columns: 1fr;
                gap: 2rem;
            }
            .contact-bar {
                flex-direction: column;
                gap: 1.2rem;
                align-items: start;
                padding: 1.5rem;
            }
            .contact-bar .info {
                gap: 1rem;
                flex-direction: column;
            }
            .tagline {
                font-size: 1.2rem;
                padding: 0.4rem 1.5rem;
            }
        }

        @media (max-width: 480px) {
            .car-card h2 {
                font-size: 2rem;
            }
            .car-image {
                width: 110px;
                height: 110px;
                font-size: 4.5rem;
            }
            .rent-btn {
                font-size: 1.2rem;
                padding: 0.7rem 1.2rem;
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
                <i class="fas fa-map-pin"></i> Hyderabad
            </div>
        </div>

        <!-- TAGLINE -->
        <div style="text-align: center;">
            <div class="tagline">
                <i class="fas fa-route"></i> Drive with comfort · Rent by the day or week <i class="fas fa-clock"></i>
            </div>
        </div>

        <!-- CAR GRID -->
        <div class="car-grid">

            <!-- BALENO -->
            <div class="car-card">
                <div class="car-image">
                    <i class="fas fa-car"></i>
                </div>
                <h2>Baleno</h2>
                <div class="car-badge"><i class="fas fa-star" style="margin-right: 6px;"></i> Premium Hatchback</div>
                <div class="car-desc"><i class="fas fa-gas-pump"></i> Petrol · 5-Seater</div>
                <div class="car-features">
                    <span><i class="fas fa-snowflake"></i> AC</span>
                    <span><i class="fas fa-bluetooth-b"></i> Bluetooth</span>
                    <span><i class="fas fa-shield-alt"></i> Airbags</span>
                </div>
                <button class="rent-btn" onclick="alert('✅ Baleno booked for rent! (Demo)')">
                    <i class="fas fa-key"></i> Rent Now
                </button>
                <p style="margin-top: 12px; font-weight: 500; color: #3f281e; background: #ecddcf; padding: 0.2rem 1.6rem; border-radius: 60px;">
                    <i class="fas fa-rupee-sign"></i> 2,499 / day
                </p>
            </div>

            <!-- ERTIGA -->
            <div class="car-card">
                <div class="car-image">
                    <i class="fas fa-van-shuttle"></i>
                </div>
                <h2>Ertiga</h2>
                <div class="car-badge"><i class="fas fa-users" style="margin-right: 6px;"></i> Family MPV</div>
                <div class="car-desc"><i class="fas fa-gas-pump"></i> Petrol · 7-Seater</div>
                <div class="car-features">
                    <span><i class="fas fa-snowflake"></i> AC</span>
                    <span><i class="fas fa-video"></i> Rear Camera</span>
                    <span><i class="fas fa-child"></i> Child Lock</span>
                </div>
                <button class="rent-btn" onclick="alert('✅ Ertiga booked for rent! (Demo)')">
                    <i class="fas fa-key"></i> Rent Now
                </button>
                <p style="margin-top: 12px; font-weight: 500; color: #3f281e; background: #ecddcf; padding: 0.2rem 1.6rem; border-radius: 60px;">
                    <i class="fas fa-rupee-sign"></i> 3,299 / day
                </p>
            </div>
        </div>

        <!-- CONTACT & FOOTER -->
        <div class="contact-bar">
            <div class="info">
                <span><i class="fas fa-phone-alt"></i> +91 98765 43210</span>
                <span><i class="fas fa-envelope"></i> rakshitha.cars@hyderabad.in</span>
                <span><i class="fas fa-clock"></i> 6:00 AM – 11:00 PM</span>
            </div>
            <div class="social">
                <i class="fab fa-whatsapp"></i>
                <i class="fab fa-instagram"></i>
                <i class="fab fa-facebook"></i>
            </div>
        </div>

        <div class="footer-note">
            <i class="fas fa-check-circle" style="color: #b45f3a;"></i> 
            Rakshitha Travels · Hyderabad · Two cars available — Baleno &amp; Ertiga
            <span style="display: inline-block; margin-left: 12px; background: #b45f3a20; padding: 0 14px; border-radius: 60px;">
                <i class="fas fa-car"></i> 2 vehicles
            </span>
        </div>

    </div>
    <!-- end travel-card -->

</body>
</html>
