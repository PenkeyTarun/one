<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>NexusShop - Modern Shopping</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

  <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

  <style>
    :root {
      --primary: #6c3df4;
      --primary-dark: #5125c9;
      --primary-light: #eee9ff;

      --secondary: #00b894;
      --accent: #ff6b6b;

      --dark: #18152b;
      --text: #3f3b50;
      --muted: #77738a;

      --background: #f7f7fb;
      --white: #ffffff;
      --border: #e8e6ef;

      --shadow: 0 12px 35px rgba(40, 32, 80, 0.09);
      --radius: 18px;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: "Inter", sans-serif;
      background: var(--background);
      color: var(--text);
      line-height: 1.6;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    button,
    input {
      font-family: inherit;
    }

    img {
      max-width: 100%;
      display: block;
    }

    .container {
      width: min(1180px, 92%);
      margin: auto;
    }

    /* ================= HEADER ================= */

    header {
      position: sticky;
      top: 0;
      z-index: 1000;
      background: rgba(255,255,255,0.96);
      backdrop-filter: blur(15px);
      border-bottom: 1px solid var(--border);
    }

    .topbar {
      background: var(--dark);
      color: #fff;
      padding: 9px 0;
      font-size: 13px;
    }

    .topbar-content {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .header-main {
      min-height: 76px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 25px;
    }

    .logo {
      font-size: 25px;
      font-weight: 800;
      color: var(--primary);
      white-space: nowrap;
    }

    .logo span {
      color: var(--dark);
    }

    .search-box {
      flex: 1;
      max-width: 540px;
      position: relative;
    }

    .search-box input {
      width: 100%;
      border: 2px solid var(--border);
      background: var(--background);
      padding: 13px 48px 13px 18px;
      border-radius: 50px;
      outline: none;
      transition: .25s;
    }

    .search-box input:focus {
      border-color: var(--primary);
      background: #fff;
      box-shadow: 0 0 0 4px var(--primary-light);
    }

    .search-box button {
      position: absolute;
      right: 5px;
      top: 5px;
      width: 39px;
      height: 39px;
      border: none;
      border-radius: 50%;
      background: var(--primary);
      color: white;
      cursor: pointer;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .header-action {
      position: relative;
      width: 43px;
      height: 43px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      background: var(--primary-light);
      color: var(--primary);
      cursor: pointer;
      transition: .25s;
    }

    .header-action:hover {
      background: var(--primary);
      color: white;
      transform: translateY(-2px);
    }

    .cart-count {
      position: absolute;
      top: -4px;
      right: -3px;
      background: var(--accent);
      color: white;
      min-width: 19px;
      height: 19px;
      padding: 0 5px;
      border-radius: 20px;
      font-size: 10px;
      display: grid;
      place-items: center;
      font-weight: 700;
    }

    /* ================= NAV ================= */

    .navigation {
      border-top: 1px solid var(--border);
    }

    .nav-content {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 35px;
      min-height: 48px;
    }

    .nav-content a {
      font-size: 14px;
      font-weight: 600;
      color: var(--text);
      transition: .2s;
    }

    .nav-content a:hover,
    .nav-content a.active {
      color: var(--primary);
    }

    .mobile-menu {
      display: none;
      border: none;
      background: var(--primary-light);
      color: var(--primary);
      width: 43px;
      height: 43px;
      border-radius: 50%;
      cursor: pointer;
      font-size: 18px;
    }

    /* ================= HERO ================= */

    .hero {
      margin: 28px 0 50px;
    }

    .hero-box {
      min-height: 430px;
      border-radius: 28px;
      padding: 65px;
      display: flex;
      align-items: center;
      position: relative;
      overflow: hidden;
      background:
        radial-gradient(circle at 90% 20%, rgba(255,255,255,.22), transparent 30%),
        linear-gradient(135deg, #6c3df4, #8e63ff 50%, #5131c8);
      color: white;
    }

    .hero-content {
      max-width: 600px;
      position: relative;
      z-index: 2;
    }

    .hero-tag {
      display: inline-block;
      background: rgba(255,255,255,.17);
      border: 1px solid rgba(255,255,255,.25);
      padding: 7px 14px;
      border-radius: 30px;
      font-size: 13px;
      font-weight: 700;
      margin-bottom: 18px;
    }

    .hero h1 {
      font-size: clamp(36px, 5vw, 62px);
      line-height: 1.08;
      margin-bottom: 20px;
      font-weight: 800;
    }

    .hero p {
      font-size: 17px;
      max-width: 520px;
      opacity: .92;
      margin-bottom: 30px;
    }

    .hero-buttons {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    .btn {
      border: none;
      padding: 13px 22px;
      border-radius: 10px;
      font-weight: 700;
      cursor: pointer;
      transition: .25s;
    }

    .btn-primary {
      background: white;
      color: var(--primary);
    }

    .btn-primary:hover {
      transform: translateY(-2px);
      box-shadow: 0 10px 25px rgba(0,0,0,.15);
    }

    .btn-outline {
      background: transparent;
      color: white;
      border: 1px solid rgba(255,255,255,.5);
    }

    .btn-outline:hover {
      background: white;
      color: var(--primary);
    }

    .hero-decoration {
      position: absolute;
      right: -100px;
      bottom: -150px;
      width: 500px;
      height: 500px;
      border-radius: 50%;
      border: 80px solid rgba(255,255,255,.08);
    }

    /* ================= SECTION ================= */

    section {
      padding: 25px 0 65px;
    }

    .section-header {
      display: flex;
      align-items: end;
      justify-content: space-between;
      margin-bottom: 25px;
      gap: 20px;
    }

    .section-header h2 {
      color: var(--dark);
      font-size: 30px;
      line-height: 1.2;
    }

    .section-header p {
      color: var(--muted);
      margin-top: 5px;
    }

    .view-all {
      color: var(--primary);
      font-size: 14px;
      font-weight: 700;
    }

    /* ================= CATEGORIES ================= */

    .category-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }

    .category-card {
      background: white;
      border: 1px solid var(--border);
      border-radius: var(--radius);
      padding: 25px 12px;
      text-align: center;
      cursor: pointer;
      transition: .25s;
    }

    .category-card:hover {
      transform: translateY(-5px);
      border-color: var(--primary);
      box-shadow: var(--shadow);
    }

    .category-icon {
      width: 62px;
      height: 62px;
      margin: auto auto 12px;
      border-radius: 18px;
      display: grid;
      place-items: center;
      background: var(--primary-light);
      color: var(--primary);
      font-size: 23px;
    }

    .category-card h3 {
      font-size: 14px;
      color: var(--dark);
    }

    /* ================= PRODUCTS ================= */

    .filter-row {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 25px;
      gap: 15px;
      flex-wrap: wrap;
    }

    .filters {
      display: flex;
      gap: 8px;
      flex-wrap: wrap;
    }

    .filter-btn {
      border: 1px solid var(--border);
      background: white;
      padding: 9px 16px;
      border-radius: 30px;
      cursor: pointer;
      font-weight: 600;
      color: var(--text);
      transition: .2s;
    }

    .filter-btn:hover,
    .filter-btn.active {
      background: var(--primary);
      color: white;
      border-color: var(--primary);
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }

    .product-card {
      background: white;
      border: 1px solid var(--border);
      border-radius: var(--radius);
      overflow: hidden;
      transition: .3s;
      position: relative;
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow);
    }

    .product-image {
      height: 230px;
      background: #f4f2fa;
      position: relative;
      overflow: hidden;
    }

    .product-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: .4s;
    }

    .product-card:hover .product-image img {
      transform: scale(1.05);
    }

    .discount {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--accent);
      color: white;
      padding: 5px 9px;
      border-radius: 7px;
      font-size: 11px;
      font-weight: 700;
    }

    .wishlist {
      position: absolute;
      right: 12px;
      top: 12px;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      border: none;
      background: rgba(255,255,255,.94);
      color: var(--dark);
      cursor: pointer;
      transition: .2s;
    }

    .wishlist:hover,
    .wishlist.active {
      background: var(--accent);
      color: white;
    }

    .product-info {
      padding: 18px;
    }

    .product-category {
      color: var(--primary);
      font-size: 11px;
      text-transform: uppercase;
      font-weight: 700;
      letter-spacing: .6px;
    }

    .product-title {
      color: var(--dark);
      font-size: 15px;
      margin: 6px 0;
      font-weight: 700;
    }

    .rating {
      color: #f5b700;
      font-size: 12px;
      margin-bottom: 12px;
    }

    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 10px;
    }

    .price {
      font-weight: 800;
      color: var(--dark);
      font-size: 19px;
    }

    .old-price {
      font-size: 12px;
      color: #aaa;
      text-decoration: line-through;
      margin-left: 4px;
    }

    .add-cart {
      width: 39px;
      height: 39px;
      border: none;
      border-radius: 10px;
      background: var(--primary);
      color: white;
      cursor: pointer;
      transition: .2s;
    }

    .add-cart:hover {
      background: var(--primary-dark);
      transform: scale(1.06);
    }

    /* ================= DEAL ================= */

    .deal-section {
      background: var(--dark);
      color: white;
      padding: 55px 0;
    }

    .deal-box {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
    }

    .deal-content {
      max-width: 650px;
    }

    .deal-content h2 {
      font-size: 38px;
      margin-bottom: 12px;
    }

    .deal-content p {
      color: #bbb7c9;
    }

    .timer {
      display: flex;
      gap: 10px;
      margin-top: 25px;
    }

    .time-box {
      width: 70px;
      height: 70px;
      border-radius: 12px;
      background: rgba(255,255,255,.08);
      display: grid;
      place-items: center;
    }

    .time-box strong {
      font-size: 23px;
    }

    .time-box span {
      display: block;
      color: #aaa6b7;
      font-size: 10px;
    }

    /* ================= FEATURES ================= */

    .features {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 18px;
    }

    .feature {
      background: white;
      border: 1px solid var(--border);
      border-radius: var(--radius);
      padding: 25px;
    }

    .feature-icon {
      width: 48px;
      height: 48px;
      display: grid;
      place-items: center;
      border-radius: 14px;
      background: var(--primary-light);
      color: var(--primary);
      margin-bottom: 15px;
      font-size: 19px;
    }

    .feature h3 {
      color: var(--dark);
      font-size: 16px;
      margin-bottom: 5px;
    }

    .feature p {
      color: var(--muted);
      font-size: 13px;
    }

    /* ================= TESTIMONIALS ================= */

    .testimonial-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 20px;
    }

    .testimonial {
      background: white;
      border: 1px solid var(--border);
      border-radius: var(--radius);
      padding: 25px;
    }

    .stars {
      color: #f5b700;
      margin-bottom: 13px;
    }

    .testimonial p {
      font-size: 14px;
      color: var(--text);
      margin-bottom: 20px;
    }

    .customer {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .avatar {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      background: var(--primary-light);
      color: var(--primary);
      font-weight: 800;
    }

    .customer strong {
      display: block;
      color: var(--dark);
      font-size: 13px;
    }

    .customer span {
      color: var(--muted);
      font-size: 11px;
    }

    /* ================= NEWSLETTER ================= */

    .newsletter {
      background: linear-gradient(135deg, #eee9ff, #f8f5ff);
      border: 1px solid #ddd5ff;
      border-radius: 25px;
      padding: 50px;
      text-align: center;
    }

    .newsletter h2 {
      color: var(--dark);
      font-size: 31px;
      margin-bottom: 8px;
    }

    .newsletter p {
      color: var(--muted);
      margin-bottom: 23px;
    }

    .newsletter-form {
      max-width: 520px;
      margin: auto;
      display: flex;
      background: white;
      padding: 5px;
      border-radius: 12px;
      border: 1px solid var(--border);
    }

    .newsletter-form input {
      flex: 1;
      border: none;
      outline: none;
      padding: 12px 15px;
    }

    .newsletter-form button {
      background: var(--primary);
      color: white;
      border: none;
      padding: 0 20px;
      border-radius: 9px;
      font-weight: 700;
      cursor: pointer;
    }

    /* ================= FOOTER ================= */

    footer {
      background: var(--dark);
      color: white;
      padding: 55px 0 25px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr repeat(3, 1fr);
      gap: 45px;
      padding-bottom: 40px;
    }

    .footer-logo {
      font-size: 24px;
      font-weight: 800;
      color: #9b7cff;
      margin-bottom: 12px;
    }

    .footer-about {
      color: #aaa6b7;
      font-size: 13px;
      max-width: 300px;
    }

    .footer-column h3 {
      font-size: 14px;
      margin-bottom: 15px;
    }

    .footer-column a {
      display: block;
      color: #aaa6b7;
      font-size: 13px;
      margin: 9px 0;
      transition: .2s;
    }

    .footer-column a:hover {
      color: white;
    }

    .footer-bottom {
      border-top: 1px solid rgba(255,255,255,.1);
      padding-top: 20px;
      text-align: center;
      color: #8e899b;
      font-size: 12px;
    }

    /* ================= TOAST ================= */

    .toast {
      position: fixed;
      right: 25px;
      bottom: 25px;
      background: var(--dark);
      color: white;
      padding: 14px 20px;
      border-radius: 12px;
      box-shadow: 0 15px 35px rgba(0,0,0,.2);
      transform: translateY(120px);
      opacity: 0;
      transition: .3s;
      z-index: 3000;
      font-size: 13px;
    }

    .toast.show {
      transform: translateY(0);
      opacity: 1;
    }

    /* ================= RESPONSIVE ================= */

    @media (max-width: 1000px) {
      .category-grid {
        grid-template-columns: repeat(3, 1fr);
      }

      .product-grid {
        grid-template-columns: repeat(3, 1fr);
      }

      .features {
        grid-template-columns: repeat(2, 1fr);
      }

      .footer-grid {
        grid-template-columns: repeat(2, 1fr);
      }
    }

    @media (max-width: 760px) {
      .topbar {
        display: none;
      }

      .header-main {
        min-height: 65px;
      }

      .logo {
        font-size: 21px;
      }

      .search-box {
        display: none;
      }

      .mobile-menu {
        display: block;
      }

      .navigation {
        display: none;
      }

      .navigation.open {
        display: block;
      }

      .nav-content {
        flex-direction: column;
        gap: 0;
        padding: 10px 0;
      }

      .nav-content a {
        width: 100%;
        padding: 10px;
        text-align: center;
      }

      .hero-box {
        padding: 40px 25px;
        min-height: 430px;
      }

      .hero h1 {
        font-size: 39px;
      }

      .category-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .product-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .product-image {
        height: 190px;
      }

      .deal-box {
        flex-direction: column;
        align-items: flex-start;
      }

      .testimonial-grid {
        grid-template-columns: 1fr;
      }

      .newsletter {
        padding: 35px 20px;
      }
    }

    @media (max-width: 500px) {
      .container {
        width: 94%;
      }

      .header-actions {
        gap: 6px;
      }

      .header-action {
        width: 38px;
        height: 38px;
      }

      .hero {
        margin-top: 15px;
      }

      .hero-box {
        border-radius: 20px;
      }

      .hero h1 {
        font-size: 34px;
      }

      .hero p {
        font-size: 14px;
      }

      .section-header {
        align-items: flex-start;
        flex-direction: column;
      }

      .product-grid {
        grid-template-columns: 1fr;
      }

      .product-image {
        height: 250px;
      }

      .features {
        grid-template-columns: 1fr;
      }

      .footer-grid {
        grid-template-columns: 1fr;
        gap: 25px;
      }

      .newsletter-form {
        flex-direction: column;
        gap: 5px;
        background: transparent;
        border: none;
      }

      .newsletter-form input,
      .newsletter-form button {
        height: 46px;
        border-radius: 9px;
      }

      .timer {
        gap: 6px;
      }

      .time-box {
        width: 60px;
        height: 60px;
      }
    }
  </style>
</head>

<body>

  <!-- TOP BAR -->
  <div class="topbar">
    <div class="container topbar-content">
      <span><i class="fa-solid fa-truck"></i> Free shipping on orders over ₹999</span>
      <span>24/7 Customer Support</span>
    </div>
  </div>

  <!-- HEADER -->
  <header>
    <div class="container header-main">

      <a href="#" class="logo">
        Nexus<span>Shop</span>
      </a>

      <div class="search-box">
        <input
          type="text"
          id="searchInput"
          placeholder="Search products..."
          oninput="searchProducts()"
        >
        <button>
          <i class="fa-solid fa-magnifying-glass"></i>
        </button>
      </div>

      <div class="header-actions">

        <button class="header-action" title="Account">
          <i class="fa-regular fa-user"></i>
        </button>

        <button class="header-action" title="Wishlist">
          <i class="fa-regular fa-heart"></i>
        </button>

        <button class="header-action" title="Shopping Cart">
          <i class="fa-solid fa-cart-shopping"></i>
          <span class="cart-count" id="cartCount">0</span>
        </button>

        <button
          class="mobile-menu"
          onclick="toggleMenu()"
          title="Menu">
          <i class="fa-solid fa-bars"></i>
        </button>

      </div>
    </div>

    <nav class="navigation" id="navigation">
      <div class="container nav-content">
        <a href="#" class="active">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Products</a>
        <a href="#deals">Deals</a>
        <a href="#features">Why Us</a>
        <a href="#reviews">Reviews</a>
      </div>
    </nav>
  </header>

  <!-- HERO -->
  <main>

    <section class="hero">
      <div class="container">
        <div class="hero-box">

          <div class="hero-content">

            <span class="hero-tag">
              <i class="fa-solid fa-bolt"></i>
              New Season Collection
            </span>

            <h1>
              Shop smarter.<br>
              Live better.
            </h1>

            <p>
              Discover quality products, exclusive offers and everyday
              essentials — all in one simple shopping experience.
            </p>

            <div class="hero-buttons">
              <button
                class="btn btn-primary"
                onclick="document.getElementById('products').scrollIntoView()">
                Shop Now
                <i class="fa-solid fa-arrow-right"></i>
              </button>

              <button
                class="btn btn-outline"
                onclick="document.getElementById('deals').scrollIntoView()">
                View Deals
              </button>
            </div>

          </div>

          <div class="hero-decoration"></div>

        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section id="categories">
      <div class="container">

        <div class="section-header">
          <div>
            <h2>Shop by Category</h2>
            <p>Find exactly what you're looking for.</p>
          </div>
        </div>

        <div class="category-grid">

          <div class="category-card" onclick="filterCategory('electronics')">
            <div class="category-icon">
              <i class="fa-solid fa-laptop"></i>
            </div>
            <h3>Electronics</h3>
          </div>

          <div class="category-card" onclick="filterCategory('fashion')">
            <div class="category-icon">
              <i class="fa-solid fa-shirt"></i>
            </div>
            <h3>Fashion</h3>
          </div>

          <div class="category-card" onclick="filterCategory('home')">
            <div class="category-icon">
              <i class="fa-solid fa-house"></i>
            </div>
            <h3>Home</h3>
          </div>

          <div class="category-card" onclick="filterCategory('beauty')">
            <div class="category-icon">
              <i class="fa-solid fa-sparkles"></i>
            </div>
            <h3>Beauty</h3>
          </div>

          <div class="category-card" onclick="filterCategory('sports')">
            <div class="category-icon">
              <i class="fa-solid fa-dumbbell"></i>
            </div>
            <h3>Sports</h3>
          </div>

          <div class="category-card" onclick="filterCategory('accessories')">
            <div class="category-icon">
              <i class="fa-regular fa-clock"></i>
            </div>
            <h3>Accessories</h3>
          </div>

        </div>
      </div>
    </section>

    <!-- PRODUCTS -->
    <section id="products">
      <div class="container">

        <div class="section-header">
          <div>
            <h2>Popular Products</h2>
            <p>Our most loved products this week.</p>
          </div>
          <a href="#" class="view-all">View All →</a>
        </div>

        <div class="filter-row">

          <div class="filters">
            <button class="filter-btn active" onclick="filterProducts('all', this)">
              All
            </button>

            <button class="filter-btn" onclick="filterProducts('electronics', this)">
              Electronics
            </button>

            <button class="filter-btn" onclick="filterProducts('fashion', this)">
              Fashion
            </button>

            <button class="filter-btn" onclick="filterProducts('home', this)">
              Home
            </button>

            <button class="filter-btn" onclick="filterProducts('sports', this)">
              Sports
            </button>
          </div>

        </div>

        <div class="product-grid" id="productGrid"></div>

      </div>
    </section>

    <!-- DEAL -->
    <section class="deal-section" id="deals">

      <div class="container">
        <div class="deal-box">

          <div class="deal-content">

            <span class="hero-tag">Limited Time Offer</span>

            <h2>Deal of the Day</h2>

            <p>
              Get amazing discounts before the timer runs out.
              Don't miss today's special offers.
            </p>

            <div class="timer">

              <div class="time-box">
                <div>
                  <strong id="hours">12</strong>
                  <span>Hours</span>
                </div>
              </div>

              <div class="time-box">
                <div>
                  <strong id="minutes">30</strong>
                  <span>Minutes</span>
                </div>
              </div>

              <div class="time-box">
                <div>
                  <strong id="seconds">45</strong>
                  <span>Seconds</span>
                </div>
              </div>

            </div>
          </div>

          <button class="btn btn-primary" onclick="showToast('Deal products added to your view!')">
            Grab the Deal
          </button>

        </div>
      </div>

    </section>

    <!-- WHY US -->
    <section id="features">
      <div class="container">

        <div class="section-header">
          <div>
            <h2>Why Choose NexusShop?</h2>
            <p>Everything you need for a better shopping experience.</p>
          </div>
        </div>

        <div class="features">

          <div class="feature">
            <div class="feature-icon">
              <i class="fa-solid fa-truck-fast"></i>
            </div>
            <h3>Fast Delivery</h3>
            <p>Quick and reliable delivery right to your doorstep.</p>
          </div>

          <div class="feature">
            <div class="feature-icon">
              <i class="fa-solid fa-shield-halved"></i>
            </div>
            <h3>Secure Payment</h3>
            <p>Your transactions are protected with secure payment technology.</p>
          </div>

          <div class="feature">
            <div class="feature-icon">
              <i class="fa-solid fa-rotate-left"></i>
            </div>
            <h3>Easy Returns</h3>
            <p>Simple returns with a customer-friendly return policy.</p>
          </div>

          <div class="feature">
            <div class="feature-icon">
              <i class="fa-solid fa-headset"></i>
            </div>
            <h3>24/7 Support</h3>
            <p>Our support team is always ready to help you.</p>
          </div>

        </div>

      </div>
    </section>

    <!-- REVIEWS -->
    <section id="reviews">

      <div class="container">

        <div class="section-header">
          <div>
            <h2>What Customers Say</h2>
            <p>Real experiences from our customers.</p>
          </div>
        </div>

        <div class="testimonial-grid">

          <div class="testimonial">
            <div class="stars">★★★★★</div>
            <p>
              "The website is very easy to use and my order arrived
              much faster than I expected."
            </p>

            <div class="customer">
              <div class="avatar">RS</div>
              <div>
                <strong>Rahul Sharma</strong>
                <span>Verified Customer</span>
              </div>
            </div>
          </div>

          <div class="testimonial">
            <div class="stars">★★★★★</div>
            <p>
              "Great products, simple checkout and excellent customer
              support. I will definitely shop here again."
            </p>

            <div class="customer">
              <div class="avatar">AP</div>
              <div>
                <strong>Anita Patel</strong>
                <span>Verified Customer</span>
              </div>
            </div>
          </div>

          <div class="testimonial">
            <div class="stars">★★★★★</div>
            <p>
              "I found exactly what I wanted at a really good price.
              The whole shopping experience was smooth."
            </p>

            <div class="customer">
              <div class="avatar">VK</div>
              <div>
                <strong>Vikram Kumar</strong>
                <span>Verified Customer</span>
              </div>
            </div>
          </div>

        </div>

      </div>

    </section>

    <!-- NEWSLETTER -->
    <section>
      <div class="container">

        <div class="newsletter">

          <h2>Stay in the Loop</h2>

          <p>
            Subscribe and get exclusive offers, new product updates
            and special discounts.
          </p>

          <form class="newsletter-form" onsubmit="subscribe(event)">
            <input
              type="email"
              id="email"
              placeholder="Enter your email address"
              required
            >

            <button type="submit">
              Subscribe
            </button>
          </form>

        </div>

      </div>
    </section>

  </main>

  <!-- FOOTER -->
  <footer>

    <div class="container">

      <div class="footer-grid">

        <div>
          <div class="footer-logo">NexusShop</div>

          <p class="footer-about">
            Your modern destination for quality products,
            great prices and a simple shopping experience.
          </p>
        </div>

        <div class="footer-column">
          <h3>Shop</h3>
          <a href="#products">All Products</a>
          <a href="#categories">Categories</a>
          <a href="#deals">Deals</a>
          <a href="#">New Arrivals</a>
        </div>

        <div class="footer-column">
          <h3>Support</h3>
          <a href="#">Contact Us</a>
          <a href="#">Shipping</a>
          <a href="#">Returns</a>
          <a href="#">FAQ</a>
        </div>

        <div class="footer-column">
          <h3>Company</h3>
          <a href="#">About Us</a>
          <a href="#">Privacy Policy</a>
          <a href="#">Terms</a>
          <a href="#">Careers</a>
        </div>

      </div>

      <div class="footer-bottom">
        © 2026 NexusShop. All rights reserved.
      </div>

    </div>

  </footer>

  <!-- TOAST -->
  <div class="toast" id="toast"></div>

  <script>

    /* ================= PRODUCT DATA ================= */

    const products = [

      {
        name: "Wireless Noise Cancelling Headphones",
        category: "electronics",
        price: 8999,
        oldPrice: 11999,
        discount: "25% OFF",
        rating: 4.8,
        image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=80"
      },

      {
        name: "Smart Watch Pro",
        category: "electronics",
        price: 4999,
        oldPrice: 6999,
        discount: "29% OFF",
        rating: 4.7,
        image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=80"
      },

      {
        name: "Premium Running Shoes",
        category: "sports",
        price: 3299,
        oldPrice: 4499,
        discount: "27% OFF",
        rating: 4.9,
        image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=80"
      },

      {
        name: "Minimalist Backpack",
        category: "fashion",
        price: 1899,
        oldPrice: 2599,
        discount: "27% OFF",
        rating: 4.6,
        image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=80"
      },

      {
        name: "Modern Table Lamp",
        category: "home",
        price: 1299,
        oldPrice: 1799,
        discount: "28% OFF",
        rating: 4.5,
        image: "https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=800&q=80"
      },

      {
        name: "Premium Sunglasses",
        category: "fashion",
        price: 1599,
        oldPrice: 2299,
        discount: "30% OFF",
        rating: 4.7,
        image: "https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=800&q=80"
      },

      {
        name: "Wireless Gaming Controller",
        category: "electronics",
        price: 2499,
        oldPrice: 3299,
        discount: "24% OFF",
        rating: 4.8,
        image: "https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?auto=format&fit=crop&w=800&q=80"
      },

      {
        name: "Fitness Training Set",
        category: "sports",
        price: 2199,
        oldPrice: 2999,
        discount: "27% OFF",
        rating: 4.6,
        image: "https://images.unsplash.com/photo-1517836357463-d25dfeac3438?auto=format&fit=crop&w=800&q=80"
      }

    ];

    let cartCount = 0;

    /* ================= RENDER PRODUCTS ================= */

    function renderProducts(list = products) {

      const grid = document.getElementById("productGrid");

      if (!list.length) {
        grid.innerHTML = `
          <div style="
            grid-column:1/-1;
            background:white;
            border:1px solid var(--border);
            padding:40px;
            border-radius:18px;
            text-align:center;
          ">
            <i class="fa-solid fa-box-open"
               style="font-size:40px;color:var(--primary);margin-bottom:15px;">
            </i>

            <h3 style="color:var(--dark);">
              No products found
            </h3>

            <p style="color:var(--muted);">
              Try another search or category.
            </p>
          </div>
        `;

        return;
      }

      grid.innerHTML = list.map((product, index) => `

        <article class="product-card">

          <div class="product-image">

            <img
              src="${product.image}"
              alt="${product.name}"
              loading="lazy"
            >

            <span class="discount">
              ${product.discount}
            </span>

            <button
              class="wishlist"
              onclick="toggleWishlist(this)"
              title="Add to wishlist">
              <i class="fa-regular fa-heart"></i>
            </button>

          </div>

          <div class="product-info">

            <div class="product-category">
              ${product.category}
            </div>

            <h3 class="product-title">
              ${product.name}
            </h3>

            <div class="rating">
              ★★★★★
              <span style="color:#888;">
                ${product.rating}
              </span>
            </div>

            <div class="price-row">

              <div>
                <span class="price">
                  ₹${product.price.toLocaleString("en-IN")}
                </span>

                <span class="old-price">
                  ₹${product.oldPrice.toLocaleString("en-IN")}
                </span>
              </div>

              <button
                class="add-cart"
                onclick="addToCart('${product.name}')"
                title="Add to cart">

                <i class="fa-solid fa-cart-plus"></i>

              </button>

            </div>

          </div>

        </article>

      `).join("");
    }

    /* ================= FILTER ================= */

    function filterProducts(category, button) {

      document.querySelectorAll(".filter-btn")
        .forEach(btn => btn.classList.remove("active"));

      if (button) {
        button.classList.add("active");
      }

      const filtered =
        category === "all"
          ? products
          : products.filter(p => p.category === category);

      renderProducts(filtered);
    }

    function filterCategory(category) {

      document.getElementById("products")
        .scrollIntoView({ behavior: "smooth" });

      const buttons = document.querySelectorAll(".filter-btn");

      buttons.forEach(btn => btn.classList.remove("active"));

      const target =
        [...buttons].find(btn =>
          btn.textContent.toLowerCase().includes(category)
        );

      if (target) {
        target.classList.add("active");
      }

      renderProducts(
        products.filter(product =>
          product.category === category
        )
      );
    }

    /* ================= SEARCH ================= */

    function searchProducts() {

      const query =
        document.getElementById("searchInput")
          .value
          .toLowerCase()
          .trim();

      if (!query) {
        renderProducts(products);
        return;
      }

      const filtered = products.filter(product =>
        product.name.toLowerCase().includes(query) ||
        product.category.toLowerCase().includes(query)
      );

      renderProducts(filtered);

      document.getElementById("products")
        .scrollIntoView({ behavior: "smooth" });
    }

    /* ================= CART ================= */

    function addToCart(name) {

      cartCount++;

      document.getElementById("cartCount")
        .textContent = cartCount;

      showToast(`${name} added to cart`);
    }

    /* ================= WISHLIST ================= */

    function toggleWishlist(button) {

      button.classList.toggle("active");

      const icon = button.querySelector("i");

      if (button.classList.contains("active")) {

        icon.classList.remove("fa-regular");
        icon.classList.add("fa-solid");

        showToast("Added to wishlist");

      } else {

        icon.classList.remove("fa-solid");
        icon.classList.add("fa-regular");

        showToast("Removed from wishlist");
      }
    }

    /* ================= TOAST ================= */

    let toastTimer;

    function showToast(message) {

      const toast = document.getElementById("toast");

      toast.textContent = message;
      toast.classList.add("show");

      clearTimeout(toastTimer);

      toastTimer = setTimeout(() => {
        toast.classList.remove("show");
      }, 2500);
    }

    /* ================= MOBILE MENU ================= */

    function toggleMenu() {

      document
        .getElementById("navigation")
        .classList.toggle("open");
    }

    /* ================= COUNTDOWN ================= */

    let remainingSeconds = 12 * 60 * 60 + 30 * 60 + 45;

    function updateTimer() {

      if (remainingSeconds <= 0) {
        remainingSeconds = 12 * 60 * 60;
      }

      const hours =
        Math.floor(remainingSeconds / 3600);

      const minutes =
        Math.floor((remainingSeconds % 3600) / 60);

      const seconds =
        remainingSeconds % 60;

      document.getElementById("hours")
        .textContent = String(hours).padStart(2, "0");

      document.getElementById("minutes")
        .textContent = String(minutes).padStart(2, "0");

      document.getElementById("seconds")
        .textContent = String(seconds).padStart(2, "0");

      remainingSeconds--;
    }

    setInterval(updateTimer, 1000);

    updateTimer();

    /* ================= NEWSLETTER ================= */

    function subscribe(event) {

      event.preventDefault();

      const email =
        document.getElementById("email").value;

      if (email) {

        showToast("Thanks for subscribing!");

        document.getElementById("email").value = "";
      }
    }

    /* ================= INITIAL LOAD ================= */

    renderProducts();

  </script>

</body>
</html>
