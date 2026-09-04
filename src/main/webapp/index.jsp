<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5" />
  <title>NexusShop · friendly store</title>

  <!-- fonts & icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400..700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />

  <style>
    /* ---------- reset & base ---------- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: "Inter", system-ui, -apple-system, sans-serif;
      background: #f9f7f5;
      color: #1e1e2a;
      line-height: 1.5;
      padding: 0 0 2rem;
    }
    a {
      text-decoration: none;
      color: inherit;
    }
    img {
      max-width: 100%;
      display: block;
    }
    button {
      cursor: pointer;
      font-family: inherit;
      border: none;
      background: none;
    }
    input {
      font-family: inherit;
    }
    .container {
      max-width: 1240px;
      margin: 0 auto;
      padding: 0 1.25rem;
    }

    /* ---------- utility ---------- */
    .flex {
      display: flex;
      align-items: center;
      gap: 0.75rem;
    }
    .flex-between {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 0.75rem;
    }
    .gap-1 { gap: 1rem; }
    .gap-2 { gap: 2rem; }
    .text-muted { color: #6b6b7a; }
    .text-center { text-align: center; }
    .sr-only {
      position: absolute; width: 1px; height: 1px;
      padding: 0; margin: -1px; overflow: hidden;
      clip: rect(0,0,0,0); border: 0;
    }

    /* ---------- buttons ---------- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 0.5rem;
      padding: 0.7rem 1.8rem;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      transition: 0.2s ease;
      border: 2px solid transparent;
    }
    .btn-primary {
      background: #d96c4e;
      color: #fff;
      border-color: #d96c4e;
    }
    .btn-primary:hover {
      background: #c05a3e;
      border-color: #c05a3e;
      transform: translateY(-2px);
      box-shadow: 0 8px 20px rgba(217, 108, 78, 0.25);
    }
    .btn-secondary {
      background: #1e1e2a;
      color: #fff;
      border-color: #1e1e2a;
    }
    .btn-secondary:hover {
      background: #2d2d44;
      transform: translateY(-2px);
      box-shadow: 0 8px 20px rgba(30, 30, 42, 0.2);
    }
    .btn-outline {
      background: transparent;
      color: #1e1e2a;
      border-color: #cbcbcb;
    }
    .btn-outline:hover {
      background: #1e1e2a;
      color: #fff;
      border-color: #1e1e2a;
    }
    .btn-ghost {
      background: rgba(255,255,255,0.15);
      color: #fff;
      border-color: rgba(255,255,255,0.2);
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.25);
    }
    .btn-sm {
      padding: 0.45rem 1.2rem;
      font-size: 0.85rem;
    }

    /* ---------- header ---------- */
    header {
      background: rgba(255, 255, 255, 0.88);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(0,0,0,0.04);
      position: sticky;
      top: 0;
      z-index: 100;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 1rem;
      padding: 0.7rem 0;
      flex-wrap: wrap;
    }
    .brand {
      font-size: 1.5rem;
      font-weight: 700;
      display: flex;
      align-items: center;
      gap: 0.4rem;
    }
    .brand i { color: #d96c4e; font-size: 1.6rem; }
    .brand span.accent { color: #d96c4e; }

    .nav-links {
      display: flex;
      gap: 0.2rem;
      list-style: none;
    }
    .nav-links a {
      padding: 0.5rem 1rem;
      border-radius: 30px;
      font-weight: 500;
      font-size: 0.9rem;
      color: #4a4a5a;
      transition: 0.2s;
    }
    .nav-links a:hover,
    .nav-links a.active {
      background: #f0eeea;
      color: #1e1e2a;
    }
    .nav-links a i { margin-right: 0.3rem; }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 0.4rem;
    }
    .icon-btn {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      font-size: 1.1rem;
      color: #4a4a5a;
      transition: 0.2s;
    }
    .icon-btn:hover {
      background: #f0eeea;
      color: #1e1e2a;
    }
    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: #d96c4e;
      color: #fff;
      font-size: 0.7rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #fff;
    }

    .search-box {
      display: flex;
      align-items: center;
      background: #f0eeea;
      border-radius: 60px;
      padding: 0 0.8rem 0 1.2rem;
      border: 2px solid transparent;
      transition: 0.2s;
      min-width: 180px;
    }
    .search-box:focus-within {
      border-color: #d96c4e;
      background: #fff;
      box-shadow: 0 0 0 4px rgba(217,108,78,0.1);
    }
    .search-box input {
      border: 0;
      background: transparent;
      padding: 0.6rem 0;
      outline: none;
      width: 100%;
      font-size: 0.9rem;
    }
    .search-box button {
      color: #6b6b7a;
      padding: 0.4rem 0 0.4rem 0.6rem;
    }
    .search-box button:hover { color: #d96c4e; }

    .mobile-toggle {
      display: none;
      background: #f0eeea;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      font-size: 1.2rem;
      color: #1e1e2a;
    }
    #mobileMenu {
      display: none;
      background: #fff;
      border-top: 1px solid #eee;
      padding: 0.8rem 0 1.2rem;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 0.2rem;
    }
    #mobileMenu ul a {
      display: flex;
      align-items: center;
      gap: 0.8rem;
      padding: 0.7rem 1.2rem;
      border-radius: 30px;
      font-weight: 500;
      color: #1e1e2a;
    }
    #mobileMenu ul a:hover { background: #f0eeea; }

    /* ---------- hero ---------- */
    .hero {
      background: linear-gradient(145deg, #1e1e2a 0%, #2d2d44 100%);
      border-radius: 28px;
      margin: 1.5rem 1.5rem 0;
      padding: 3.5rem 2.5rem;
      position: relative;
      overflow: hidden;
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.25;
    }
    .hero .container { position: relative; z-index: 1; }
    .hero-badge {
      display: inline-block;
      background: rgba(217,108,78,0.25);
      color: #f0c4b8;
      padding: 0.2rem 1rem;
      border-radius: 60px;
      font-size: 0.8rem;
      font-weight: 600;
      letter-spacing: 0.3px;
      margin-bottom: 0.8rem;
    }
    .hero h1 {
      font-size: 3rem;
      font-weight: 700;
      color: #fff;
      line-height: 1.1;
      max-width: 600px;
      margin-bottom: 0.8rem;
    }
    .hero p {
      color: rgba(255,255,255,0.8);
      font-size: 1.05rem;
      max-width: 480px;
      margin-bottom: 1.8rem;
      line-height: 1.6;
    }
    .hero .actions { display: flex; gap: 0.8rem; flex-wrap: wrap; }

    /* ---------- sections ---------- */
    .section { padding: 3rem 0 2rem; }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 1rem;
      flex-wrap: wrap;
      margin-bottom: 2rem;
    }
    .section-header h2 {
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.3px;
    }
    .section-header .sub {
      color: #6b6b7a;
      margin-top: 0.2rem;
      font-size: 0.95rem;
    }
    .view-all {
      font-weight: 600;
      color: #d96c4e;
      display: flex;
      align-items: center;
      gap: 0.4rem;
      font-size: 0.95rem;
      white-space: nowrap;
    }
    .view-all:hover { gap: 0.8rem; }

    /* ---------- categories ---------- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 1rem;
    }
    .cat-card {
      background: #fff;
      border-radius: 20px;
      padding: 1.5rem 0.8rem;
      text-align: center;
      box-shadow: 0 4px 12px rgba(0,0,0,0.03);
      transition: 0.25s;
      border: 2px solid transparent;
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 12px 30px rgba(30,30,42,0.08);
      border-color: #f0c4b8;
    }
    .cat-card .icon {
      width: 54px;
      height: 54px;
      border-radius: 50%;
      background: #f3e9e4;
      display: grid;
      place-items: center;
      margin: 0 auto 0.6rem;
      font-size: 1.5rem;
      color: #d96c4e;
      transition: 0.2s;
    }
    .cat-card:hover .icon {
      background: #d96c4e;
      color: #fff;
    }
    .cat-card h4 { font-size: 0.95rem; font-weight: 600; }
    .cat-card .count { font-size: 0.8rem; color: #6b6b7a; margin-top: 0.2rem; }

    /* ---------- products ---------- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 1.5rem;
    }
    .product-card {
      background: #fff;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: 0 4px 14px rgba(0,0,0,0.03);
      transition: 0.25s;
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 16px 40px rgba(30,30,42,0.08);
      border-color: #f0c4b8;
    }
    .product-card .img-wrap {
      background: #f5f3f0;
      aspect-ratio: 1/1;
      position: relative;
      overflow: hidden;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.3s;
    }
    .product-card:hover .img-wrap img { transform: scale(1.04); }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: #d96c4e;
      color: #fff;
      padding: 0.2rem 0.9rem;
      border-radius: 60px;
      font-size: 0.7rem;
      font-weight: 700;
      letter-spacing: 0.3px;
    }
    .product-card .badge.sale { background: #e9c46a; color: #1e1e2a; }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 34px;
      height: 34px;
      border-radius: 50%;
      background: rgba(255,255,255,0.85);
      display: grid;
      place-items: center;
      color: #6b6b7a;
      backdrop-filter: blur(4px);
    }
    .product-card .wish-btn:hover { color: #d96c4e; background: #fff; }
    .product-card .body {
      padding: 1rem 1rem 0.6rem;
      flex: 1;
    }
    .product-card .body .cat-tag {
      font-size: 0.7rem;
      text-transform: uppercase;
      color: #6b6b7a;
      letter-spacing: 0.5px;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 0.95rem;
      font-weight: 600;
      margin: 0.2rem 0 0.3rem;
      line-height: 1.3;
    }
    .product-card .price-row {
      display: flex;
      align-items: center;
      gap: 0.6rem;
      margin: 0.3rem 0;
    }
    .product-card .price { font-weight: 700; font-size: 1.1rem; }
    .product-card .old-price {
      color: #a0a0b0;
      text-decoration: line-through;
      font-size: 0.85rem;
    }
    .product-card .rating {
      color: #f5a623;
      font-size: 0.85rem;
    }
    .product-card .rating span { color: #6b6b7a; }
    .product-card .footer {
      padding: 0 1rem 1rem;
    }
    .product-card .add-btn {
      width: 100%;
      padding: 0.6rem;
      border-radius: 60px;
      background: #1e1e2a;
      color: #fff;
      font-weight: 600;
      font-size: 0.85rem;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 0.5rem;
    }
    .product-card .add-btn:hover {
      background: #d96c4e;
    }
    .product-card .add-btn.added { background: #2a9d8f; }

    /* ---------- deal ---------- */
    .deal-wrap {
      display: flex;
      background: #fff;
      border-radius: 28px;
      overflow: hidden;
      box-shadow: 0 4px 16px rgba(0,0,0,0.03);
    }
    .deal-img {
      flex: 0 0 48%;
      background: #f5f3f0;
      min-height: 260px;
    }
    .deal-img img { width: 100%; height: 100%; object-fit: cover; }
    .deal-content {
      padding: 2.2rem 2.5rem;
      display: flex;
      flex-direction: column;
      justify-content: center;
      flex: 1;
    }
    .deal-content .tag {
      background: #e9c46a;
      color: #1e1e2a;
      padding: 0.2rem 1rem;
      border-radius: 60px;
      font-size: 0.75rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.3px;
      align-self: flex-start;
      margin-bottom: 0.6rem;
    }
    .deal-content h3 { font-size: 1.8rem; font-weight: 700; }
    .deal-content .desc { color: #6b6b7a; margin: 0.3rem 0 1rem; }
    .deal-content .price-big {
      font-size: 2rem;
      font-weight: 800;
    }
    .deal-content .price-big .old {
      font-size: 1.2rem;
      font-weight: 400;
      color: #a0a0b0;
      text-decoration: line-through;
      margin-left: 0.6rem;
    }
    .deal-content .stock { font-size: 0.9rem; color: #6b6b7a; margin: 0.2rem 0 1rem; }
    .deal-content .stock strong { color: #d96c4e; }

    .timer-grid {
      display: flex;
      gap: 0.8rem;
      margin: 0.8rem 0 1.4rem;
    }
    .timer-box {
      background: #1e1e2a;
      color: #fff;
      padding: 0.5rem 1rem;
      border-radius: 12px;
      min-width: 60px;
      text-align: center;
    }
    .timer-box .num { font-size: 1.6rem; font-weight: 700; }
    .timer-box .label { font-size: 0.65rem; opacity: 0.7; text-transform: uppercase; letter-spacing: 0.3px; }

    /* ---------- testimonials ---------- */
    .testimonials-scroll {
      display: flex;
      gap: 1.2rem;
      overflow-x: auto;
      padding: 0.5rem 0.2rem 1rem;
      scroll-snap-type: x mandatory;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 4px; }
    .testimonials-scroll::-webkit-scrollbar-thumb { background: #f0c4b8; border-radius: 20px; }
    .testimonial-card {
      flex: 0 0 300px;
      background: #fff;
      border-radius: 24px;
      padding: 1.5rem 1.8rem;
      box-shadow: 0 4px 12px rgba(0,0,0,0.02);
      scroll-snap-align: start;
      transition: 0.2s;
    }
    .testimonial-card:hover { box-shadow: 0 12px 30px rgba(30,30,42,0.06); }
    .testimonial-card .stars { color: #f5a623; font-size: 0.95rem; margin-bottom: 0.5rem; }
    .testimonial-card blockquote {
      font-size: 0.95rem;
      line-height: 1.5;
      font-style: italic;
      color: #1e1e2a;
      margin-bottom: 0.8rem;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 0.8rem;
    }
    .testimonial-card .author img {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      object-fit: cover;
      background: #f0eeea;
    }
    .testimonial-card .author .name { font-weight: 600; font-size: 0.9rem; }
    .testimonial-card .author .role { font-size: 0.8rem; color: #6b6b7a; }

    /* ---------- newsletter ---------- */
    .newsletter {
      background: linear-gradient(135deg, #1e1e2a, #2d2d44);
      border-radius: 28px;
      padding: 2.5rem 3rem;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 2rem;
      flex-wrap: wrap;
    }
    .newsletter .text h3 { font-size: 1.6rem; font-weight: 700; }
    .newsletter .text p { opacity: 0.75; font-size: 0.95rem; }
    .newsletter form {
      display: flex;
      gap: 0.6rem;
      flex: 1;
      max-width: 480px;
      flex-wrap: wrap;
    }
    .newsletter form input {
      flex: 1;
      min-width: 180px;
      padding: 0.8rem 1.2rem;
      border-radius: 60px;
      border: 0;
      background: rgba(255,255,255,0.12);
      color: #fff;
      outline: 2px solid transparent;
      transition: 0.2s;
      font-size: 0.95rem;
    }
    .newsletter form input:focus {
      outline-color: #d96c4e;
      background: rgba(255,255,255,0.18);
    }
    .newsletter form input::placeholder { color: rgba(255,255,255,0.5); }
    .newsletter form .btn {
      background: #d96c4e;
      color: #fff;
      border-color: #d96c4e;
      padding: 0.8rem 2rem;
    }
    .newsletter form .btn:hover { background: #c05a3e; }
    #newsletterMsg { width: 100%; margin-top: 0.6rem; font-size: 0.9rem; opacity: 0.9; }

    /* ---------- footer ---------- */
    footer {
      margin-top: 2rem;
      padding: 2.5rem 0 1.5rem;
      border-top: 1px solid #eae8e4;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 2.5rem;
      margin-bottom: 2rem;
    }
    .footer-grid .brand-col .brand { font-size: 1.3rem; margin-bottom: 0.4rem; }
    .footer-grid .brand-col p { color: #6b6b7a; font-size: 0.9rem; max-width: 280px; }
    .footer-grid .socials {
      display: flex;
      gap: 0.5rem;
      margin-top: 1rem;
    }
    .footer-grid .socials a {
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: #f0eeea;
      display: grid;
      place-items: center;
      color: #4a4a5a;
      transition: 0.2s;
    }
    .footer-grid .socials a:hover { background: #d96c4e; color: #fff; }
    .footer-grid .col h5 { font-weight: 700; margin-bottom: 0.6rem; font-size: 0.9rem; }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 0.3rem;
    }
    .footer-grid .col ul a {
      color: #6b6b7a;
      font-size: 0.9rem;
      transition: 0.2s;
    }
    .footer-grid .col ul a:hover { color: #d96c4e; }
    .footer-bottom {
      text-align: center;
      padding-top: 1.2rem;
      border-top: 1px solid #eae8e4;
      color: #a0a0b0;
      font-size: 0.85rem;
    }

    /* ---------- responsive ---------- */
    @media (max-width: 1100px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
    }
    @media (max-width: 900px) {
      .hero h1 { font-size: 2.4rem; }
      .hero { padding: 2.5rem 1.8rem; }
      .deal-wrap { flex-direction: column; }
      .deal-img { flex: 0 0 200px; }
      .deal-content { padding: 1.8rem; }
      .newsletter { padding: 2rem 1.8rem; flex-direction: column; text-align: center; }
      .newsletter form { max-width: 100%; }
      .footer-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 768px) {
      .nav-links { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2, 1fr); }
      .categories-grid { grid-template-columns: repeat(2, 1fr); }
      .hero { margin: 1rem 0.8rem 0; border-radius: 20px; padding: 2rem 1.2rem; }
      .hero h1 { font-size: 2rem; }
      .search-box { min-width: 130px; }
      .header-inner { gap: 0.5rem; }
      .section { padding: 2rem 0; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 0.8rem; }
      .categories-grid { gap: 0.6rem; }
      .cat-card { padding: 1rem 0.4rem; }
      .cat-card .icon { width: 44px; height: 44px; font-size: 1.2rem; }
      .deal-content { padding: 1.2rem; }
      .timer-box { min-width: 48px; padding: 0.3rem 0.6rem; }
      .timer-box .num { font-size: 1.2rem; }
      .footer-grid { grid-template-columns: 1fr; gap: 1.2rem; }
      .container { padding: 0 0.8rem; }
      .brand { font-size: 1.2rem; }
    }
  </style>
</head>
<body>

<!-- ===== HEADER ===== -->
<header>
  <div class="container header-inner">
    <div class="flex">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
        <i class="fas fa-bars"></i>
      </button>
      <a class="brand" href="#">
        <i class="fas fa-store-alt"></i>
        <span>Nexus<span class="accent">Shop</span></span>
      </a>
    </div>

    <ul class="nav-links">
      <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
      <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
      <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
    </ul>

    <div class="flex">
      <div class="search-box" role="search">
        <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" aria-label="Cart">
            <i class="fas fa-shopping-bag"></i>
          </button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>

  <!-- mobile menu -->
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
      </ul>
    </div>
  </div>
</header>

<main>

  <!-- HERO -->
  <section class="hero" aria-label="Hero banner">
    <div class="container">
      <div class="hero-badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
      <h1>Discover Premium <br />Essentials</h1>
      <p>Curated fashion, tech & accessories with free shipping on your first order.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
      </div>
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories" aria-labelledby="cat-title">
    <div class="container">
      <div class="section-header">
        <div>
          <h2 id="cat-title">Browse Categories</h2>
          <div class="sub">Find what you love</div>
        </div>
        <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="section" id="products" aria-labelledby="prod-title">
    <div class="container">
      <div class="section-header">
        <div>
          <h2 id="prod-title">Trending Now</h2>
          <div class="sub">Popular picks from our community</div>
        </div>
        <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <!-- DEAL -->
  <section class="section" id="deals" aria-labelledby="deals-title">
    <div class="container">
      <div class="section-header">
        <div>
          <h2 id="deals-title">⚡ Flash Deal</h2>
          <div class="sub">Grab it before it's gone</div>
        </div>
      </div>
      <div class="deal-wrap">
        <div class="deal-img">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
        </div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light, and incredibly powerful.</p>
          <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> items left — hurry!</p>
          <div class="timer-grid" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
