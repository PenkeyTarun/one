<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>NexusShop — Shop Smarter</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root{
    --bg:#f7f9fc;
    --surface:#fff;
    --ink:#10233f;
    --muted:#6b778c;
    --line:#e8edf4;
    --brand:#5b4cf0;
    --brand2:#7b61ff;
    --success:#16a36a;
    --danger:#ef476f;
    --shadow:0 12px 35px rgba(16,35,63,.08);
    --radius:18px;
    --container:1240px;
}

*{
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    margin:0;
    font-family:Inter,system-ui,sans-serif;
    color:var(--ink);
    background:var(--bg);
    line-height:1.5;
}

button,
input{
    font:inherit;
}

button{
    cursor:pointer;
}

a{
    text-decoration:none;
    color:inherit;
}

.container{
    width:min(100% - 32px,var(--container));
    margin:auto;
}

/* ================= HEADER ================= */

header{
    position:sticky;
    top:0;
    z-index:50;
    background:rgba(255,255,255,.94);
    backdrop-filter:blur(14px);
    border-bottom:1px solid var(--line);
}

.header-inner{
    min-height:74px;
    display:flex;
    align-items:center;
    gap:22px;
}

.brand{
    font:800 23px Poppins,sans-serif;
    white-space:nowrap;
}

.brand span{
    color:var(--brand);
}

.main-nav{
    display:flex;
    flex:1;
    justify-content:center;
}

.main-nav ul{
    display:flex;
    gap:5px;
    list-style:none;
    margin:0;
    padding:0;
}

.main-nav a{
    display:flex;
    gap:7px;
    align-items:center;
    padding:9px 12px;
    border-radius:10px;
    font-weight:600;
    color:#44516a;
}

.main-nav a:hover,
.main-nav a.active{
    background:#f0efff;
    color:var(--brand);
}

.search{
    display:flex;
    align-items:center;
    width:270px;
    background:#f3f5f9;
    border:1px solid transparent;
    border-radius:12px;
    padding:0 12px;
}

.search:focus-within{
    background:#fff;
    border-color:#d7d2ff;
    box-shadow:0 0 0 4px #f0eeff;
}

.search input{
    width:100%;
    border:0;
    outline:0;
    background:transparent;
    padding:11px 8px;
    font-size:14px;
}

.icon-btn{
    width:40px;
    height:40px;
    border:0;
    background:transparent;
    border-radius:10px;
    color:#42506a;
}

.icon-btn:hover{
    background:#f1f3f8;
    color:var(--brand);
}

.header-actions{
    display:flex;
    align-items:center;
    gap:4px;
}

.cart{
    position:relative;
}

.cart-count{
    position:absolute;
    right:-2px;
    top:-2px;
    background:var(--danger);
    color:#fff;
    width:19px;
    height:19px;
    border-radius:50%;
    display:grid;
    place-items:center;
    font-size:10px;
    font-weight:800;
}

.mobile-toggle{
    display:none;
    border:0;
    background:transparent;
    font-size:20px;
    color:var(--ink);
}

/* ================= HERO ================= */

.hero{
    margin:24px auto 0;
    border-radius:24px;
    overflow:hidden;
    min-height:470px;
    display:grid;
    place-items:center;
    text-align:center;
    color:#fff;
    padding:60px 22px;

    background:
        linear-gradient(
            110deg,
            rgba(16,35,63,.91),
            rgba(91,76,240,.68)
        ),
        url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85')
        center/cover;
}

.hero-content{
    max-width:800px;
}

.eyebrow{
    display:inline-flex;
    gap:8px;
    align-items:center;
    background:rgba(255,255,255,.14);
    border:1px solid rgba(255,255,255,.2);
    padding:7px 12px;
    border-radius:999px;
    font-size:13px;
    font-weight:700;
    margin-bottom:15px;
}

.hero h1{
    font:800 clamp(34px,5vw,58px)/1.08 Poppins;
    margin:0 0 16px;
    letter-spacing:-1.5px;
}

.hero p{
    font-size:17px;
    opacity:.93;
    max-width:690px;
    margin:0 auto 28px;
}

.hero-actions{
    display:flex;
    justify-content:center;
    gap:12px;
    flex-wrap:wrap;
}

/* ================= BUTTONS ================= */

.btn{
    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:9px;
    border:0;
    border-radius:12px;
    padding:12px 18px;
    font-weight:700;
    transition:.18s;
}

.btn:hover{
    transform:translateY(-1px);
}

.btn-primary{
    background:var(--brand);
    color:#fff;
}

.hero .btn-primary{
    background:#fff;
    color:var(--brand);
}

.btn-light{
    background:rgba(255,255,255,.12);
    color:#fff;
    border:1px solid rgba(255,255,255,.3);
}

/* ================= SECTIONS ================= */

.section{
    padding:56px 0;
}

.section-head{
    display:flex;
    justify-content:space-between;
    align-items:end;
    gap:20px;
    margin-bottom:22px;
}

.section-title{
    margin:0;
    font:700 28px Poppins;
}

.section-head p{
    margin:5px 0 0;
    color:var(--muted);
}

.view-all{
    color:var(--brand);
    font-weight:700;
    font-size:14px;
}

/* ================= CATEGORIES ================= */

.categories{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:14px;
}

.cat-card{
    background:var(--surface);
    border:1px solid var(--line);
    border-radius:16px;
    padding:22px 12px;
    text-align:center;
    transition:.2s;
    box-shadow:0 5px 18px rgba(16,35,63,.03);
}

.cat-card:hover{
    transform:translateY(-4px);
    border-color:#d7d2ff;
    box-shadow:var(--shadow);
}

.cat-icon{
    width:52px;
    height:52px;
    margin:auto;
    border-radius:15px;
    background:#f0efff;
    color:var(--brand);
    display:grid;
    place-items:center;
    font-size:22px;
}

.cat-card h4{
    margin:12px 0 3px;
}

.cat-card small{
    color:var(--muted);
}

/* ================= FILTERS ================= */

.toolbar{
    display:flex;
    gap:10px;
    align-items:center;
    margin-bottom:18px;
    flex-wrap:wrap;
}

.filter-pill{
    border:1px solid var(--line);
    background:#fff;
    padding:8px 12px;
    border-radius:999px;
    color:#526078;
    font-weight:600;
    font-size:13px;
}

.filter-pill.active{
    background:var(--brand);
    border-color:var(--brand);
    color:#fff;
}

/* ================= PRODUCTS ================= */

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:18px;
}

.product{
    background:#fff;
    border:1px solid var(--line);
    border-radius:18px;
    overflow:hidden;
    position:relative;
    display:flex;
    flex-direction:column;
    transition:.2s;
}

.product:hover{
    transform:translateY(-4px);
    box-shadow:var(--shadow);
}

.product-media{
    position:relative;
    background:#f4f6f9;
}

.product img{
    display:block;
    width:100%;
    height:225px;
    object-fit:cover;
}

.badge{
    position:absolute;
    left:12px;
    top:12px;
    background:var(--success);
    color:#fff;
    border-radius:8px;
    padding:5px 8px;
    font-size:11px;
    font-weight:800;
    z-index:2;
}

.wish{
    position:absolute;
    right:10px;
    top:10px;
    width:36px;
    height:36px;
    border:0;
    border-radius:50%;
    background:#fff;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
    color:#66738b;
    z-index:2;
}

.product-body{
    padding:15px 16px 10px;
    flex:1;
}

.product h3{
    font-size:15px;
    margin:0 0 5px;
}

.category{
    font-size:12px;
    color:var(--muted);
    text-transform:capitalize;
}

.price-row{
    display:flex;
    justify-content:space-between;
    align-items:end;
    gap:10px;
    margin-top:12px;
}

.price{
    font-size:18px;
    font-weight:800;
}

.old-price{
    color:#98a1b1;
    text-decoration:line-through;
    font-size:12px;
    margin-left:5px;
}

.rating{
    font-size:12px;
    color:#f3aa24;
    white-space:nowrap;
}

.rating span{
    color:#8a95a8;
}

.product-footer{
    display:flex;
    gap:8px;
    padding:12px 16px 16px;
}

.add-btn{
    flex:1;
    background:var(--ink);
    color:#fff;
    border:0;
    border-radius:10px;
    padding:10px;
    font-weight:700;
}

.add-btn:hover{
    background:var(--brand);
}

.wish-btn{
    width:42px;
    background:#fff;
    border:1px solid var(--line);
    border-radius:10px;
    color:#58657b;
}

/* ================= DEAL ================= */

.deal{
    display:grid;
    grid-template-columns:1fr 1fr;
    background:#fff;
    border:1px solid var(--line);
    border-radius:20px;
    overflow:hidden;
    box-shadow:var(--shadow);
}

.deal img{
    width:100%;
    height:360px;
    object-fit:cover;
}

.deal-content{
    padding:38px;
    display:flex;
    flex-direction:column;
    justify-content:center;
}

.deal-kicker{
    color:var(--brand);
    font-weight:800;
    font-size:13px;
    text-transform:uppercase;
    letter-spacing:.08em;
}

.deal h3{
    font:700 30px Poppins;
    margin:8px 0;
}

.deal p{
    color:var(--muted);
}

.timer{
    display:flex;
    gap:8px;
    margin:18px 0;
}

.time-box{
    min-width:65px;
    padding:10px 7px;
    background:#f2f1ff;
    border-radius:10px;
    text-align:center;
    color:var(--brand);
    font-weight:800;
}

.time-box small{
    display:block;
    color:#69758a;
    font-size:10px;
    font-weight:600;
}

.deal-price{
    font-size:25px;
    font-weight:800;
}

.discount{
    display:inline-block;
    background:#ffe8ee;
    color:#d82e55;
    padding:4px 8px;
    border-radius:7px;
    font-size:12px;
    margin-left:8px;
}

/* ================= WHY US ================= */

.features{
    grid-template-columns:repeat(3,1fr);
}

/* ================= TESTIMONIALS ================= */

.testimonials{
    display:grid;
    grid-template-columns:repeat(2,1fr);
    gap:16px;
}

.testimonial{
    background:#fff;
    border:1px solid var(--line);
    border-radius:16px;
    padding:22px;
    box-shadow:0 5px 18px rgba(16,35,63,.03);
}

.stars{
    color:#f3aa24;
    letter-spacing:2px;
}

.quote{
    color:#526078;
}

.person{
    display:flex;
    align-items:center;
    gap:10px;
    margin-top:16px;
}

.person img{
    width:42px;
    height:42px;
    border-radius:50%;
    object-fit:cover;
}

.person strong{
    display:block;
}

.person small{
    color:var(--muted);
}

/* ================= NEWSLETTER ================= */

.newsletter{
    background:linear-gradient(120deg,#10233f,#5b4cf0);
    border-radius:20px;
    padding:38px;
    color:#fff;
    text-align:center;
}

.newsletter h2{
    font:700 28px Poppins;
    margin:0 0 5px;
}

.newsletter p{
    opacity:.85;
}

.newsletter form{
    display:flex;
    max-width:540px;
    margin:20px auto 0;
    background:#fff;
    padding:5px;
    border-radius:12px;
}

.newsletter input{
    flex:1;
    border:0;
    outline:0;
    padding:10px 12px;
    min-width:0;
}

.newsletter .btn{
    border-radius:9px;
}

.newsletter-msg{
    margin-top:10px;
    font-size:13px;
    display:none;
}

/* ================= FOOTER ================= */

footer{
    background:#fff;
    border-top:1px solid var(--line);
    margin-top:30px;
    padding:40px 0 20px;
}

.footer-grid{
    display:grid;
    grid-template-columns:1.5fr 1fr 1fr 1fr;
    gap:30px;
}

.footer-title{
    font-weight:800;
    margin-bottom:10px;
}

.footer-links{
    display:grid;
    gap:8px;
    color:var(--muted);
    font-size:14px;
}

.footer-links a:hover{
    color:var(--brand);
}

.social{
    display:flex;
    gap:7px;
    margin-top:16px;
}

.copyright{
    text-align:center;
    border-top:1px solid var(--line);
    margin-top:28px;
    padding-top:18px;
    color:var(--muted);
    font-size:12px;
}

/* ================= TOAST ================= */

.toast{
    position:fixed;
    right:20px;
    bottom:20px;
    z-index:100;
    background:#10233f;
    color:#fff;
    padding:13px 16px;
    border-radius:12px;
    box-shadow:var(--shadow);
    transform:translateY(20px);
    opacity:0;
    pointer-events:none;
    transition:.25s;
    font-size:14px;
}

.toast.show{
    transform:none;
    opacity:1;
}

/* ================= RESPONSIVE ================= */

@media(max-width:1050px){

    .categories{
        grid-template-columns:repeat(3,1fr);
    }

    .products{
        grid-template-columns:repeat(3,1fr);
    }

    .main-nav{
        display:none;
    }

    .mobile-toggle{
        display:block;
    }

    .search{
        margin-left:auto;
    }
}

@media(max-width:760px){

    .container{
        width:min(100% - 24px,var(--container));
    }

    .header-inner{
        gap:8px;
    }

    .search{
        width:auto;
        flex:1;
        min-width:0;
    }

    .header-actions .account-link,
    .header-actions .wish-link{
        display:none;
    }

    .hero{
        margin-top:12px;
        min-height:430px;
    }

    .section{
        padding:42px 0;
    }

    .section-head{
        align-items:start;
    }

    .deal{
        grid-template-columns:1fr;
    }

    .deal img{
        height:250px;
    }

    .deal-content{
        padding:25px;
    }

    .testimonials{
        grid-template-columns:1fr;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }
}

@media(max-width:560px){

    .categories,
    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .products{
        gap:10px;
    }

    .product img{
        height:170px;
    }

    .product-body{
        padding:12px;
    }

    .product-footer{
        padding:10px;
    }

    .hero h1{
        font-size:34px;
    }

    .hero p{
        font-size:15px;
    }

    .timer{
        gap:5px;
    }

    .time-box{
        min-width:58px;
    }

    .footer-grid{
        grid-template-columns:1fr;
    }

    .newsletter form{
        background:transparent;
        display:grid;
        gap:8px;
    }

    .newsletter input{
        border-radius:10px;
    }

    .newsletter .btn{
        width:100%;
    }
}
</style>
</head>

<body>

<header>

    <div class="container header-inner">

        <button
            class="mobile-toggle"
            id="mobileToggle"
            aria-label="Open menu">
            <i class="fas fa-bars"></i>
        </button>

        <a class="brand" href="#">
            Nexus<span>Shop</span>
        </a>

        <nav class="main-nav" aria-label="Primary navigation">

            <ul>

                <li>
                    <a class="active" href="#">
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                </li>

                <li>
                    <a href="#categories">
                        <i class="fas fa-layer-group"></i>
                        Categories
                    </a>
                </li>

                <li>
                    <a href="#products">
                        <i class="fas fa-fire"></i>
                        Trending
                    </a>
                </li>

                <li>
                    <a href="#deals">
                        <i class="fas fa-tag"></i>
                        Deals
                    </a>
                </li>

                <li>
                    <a href="#about">
                        <i class="fas fa-circle-info"></i>
                        About
                    </a>
                </li>

            </ul>

        </nav>

        <div class="search">

            <i class="fas fa-search"></i>

            <input
                id="searchInput"
                type="search"
                placeholder="Search products..."
                aria-label="Search products">

        </div>

        <div class="header-actions">

            <a
                class="icon-btn account-link"
                title="Account"
                href="#about">
                <i class="far fa-user"></i>
            </a>

            <a
                class="icon-btn wish-link"
                title="Wishlist"
                href="#">
                <i class="far fa-heart"></i>
            </a>

            <button
                class="icon-btn cart"
                id="cartBtn"
                title="Cart"
                aria-label="View cart">

                <i class="fas fa-shopping-bag"></i>

                <span
                    class="cart-count"
                    id="cartCount">
                    0
                </span>

            </button>

        </div>

    </div>

    <div
        id="mobileMenu"
        style="display:none">

        <div
            class="container"
            style="padding:12px 0 16px">

            <nav>

                <div
                    style="display:grid;gap:4px">

                    <a href="#">Home</a>
                    <a href="#categories">Categories</a>
                    <a href="#products">Trending</a>
                    <a href="#deals">Deals</a>
                    <a href="#about">About</a>

                </div>

            </nav>

        </div>

    </div>

</header>


<main>

    <!-- HERO -->

    <section class="hero container">

        <div class="hero-content">

            <div class="eyebrow">

                <i class="fas fa-sparkles"></i>

                Fresh picks, better prices

            </div>

            <h1>
                Find products you'll love.
            </h1>

            <p>
                Shop phones, laptops, fashion, gadgets and everyday
                essentials — all in one simple, modern store.
            </p>

            <div class="hero-actions">

                <button
                    class="btn btn-primary"
                    id="shopNow">

                    Shop products

                    <i class="fas fa-arrow-right"></i>

                </button>

                <button
                    class="btn btn-light"
                    id="exploreDeals">

                    Today's deals

                </button>

            </div>

        </div>

    </section>


    <!-- CATEGORIES -->

    <section
        class="section container"
        id="categories">

        <div class="section-head">

            <div>

                <h2 class="section-title">
                    Shop by category
                </h2>

                <p>
                    Start with what you're looking for.
                </p>

            </div>

        </div>

        <div
            class="categories"
            id="categoriesGrid">
        </div>

    </section>


    <!-- PRODUCTS -->

    <section
        class="section container"
        id="products">

        <div class="section-head">

            <div>

                <h2 class="section-title">
                    Trending products
                </h2>

                <p>
                    Popular picks from our collection.
                </p>

            </div>

            <button
                class="view-all"
                id="clearFilter"
                style="border:0;background:none">

                View all

            </button>

        </div>


        <div
            class="toolbar"
            id="filterBar">

            <button
                class="filter-pill active"
                data-filter="all">
                All
            </button>

            <button
                class="filter-pill"
                data-filter="phones">
                Phones
            </button>

            <button
                class="filter-pill"
                data-filter="laptops">
                Laptops
            </button>

            <button
                class="filter-pill"
                data-filter="gadgets">
                Gadgets
            </button>

            <button
                class="filter-pill"
                data-filter="footwear">
                Footwear
            </button>

            <button
                class="filter-pill"
                data-filter="accessories">
                Accessories
            </button>

        </div>


        <div
            class="products"
            id="productsGrid">
        </div>

        <p
            id="emptyState"
            style="
                display:none;
                text-align:center;
                color:var(--muted);
                padding:35px;
            ">

            No products found.
            Try another search.

        </p>

    </section>


    <!-- DEAL -->

    <section
        class="section container"
        id="deals">

        <div class="section-head">

            <div>

                <h2 class="section-title">
                    Deal of the day
                </h2>

                <p>
                    Limited-time savings on a customer favorite.
                </p>

            </div>

        </div>


        <div class="deal">

            <img
                src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85"
                alt="MacBook Air">

            <div class="deal-content">

                <div class="deal-kicker">
                    Limited offer
                </div>

                <h3>
                    MacBook Air M2
                </h3>

                <p>
                    Thin, light and powerful — with M2 performance
                    for work, study and creativity.
                </p>


                <div class="timer">

                    <div class="time-box">
                        <span id="dealDays">0</span>
                        <small>Days</small>
                    </div>

                    <div class="time-box">
                        <span id="dealHours">00</span>
                        <small>Hours</small>
                    </div>

                    <div class="time-box">
                        <span id="dealMinutes">00</span>
                        <small>Minutes</small>
                    </div>

                    <div class="time-box">
                        <span id="dealSeconds">00</span>
                        <small>Seconds</small>
                    </div>

                </div>


                <div>

                    <span class="deal-price">
                        $999
                    </span>

                    <span class="old-price">
                        $1,199
                    </span>

                    <span class="discount">
                        -17%
                    </span>

                </div>

                <p>
                    <strong>Only 12</strong>
                    items left at this price.
                </p>

                <button
                    class="btn btn-primary"
                    id="buyDeal"
                    style="align-self:flex-start">

                    Add deal to cart

                </button>

            </div>

        </div>

    </section>


    <!-- FEATURES -->

    <section
        class="section container"
        id="about">

        <div class="section-head">

            <div>

                <h2 class="section-title">
                    Why shoppers choose us
                </h2>

                <p>
                    A cleaner shopping experience from discovery
                    to checkout.
                </p>

            </div>

        </div>


        <div class="categories features">

            <div class="cat-card">

                <div class="cat-icon">
                    <i class="fas fa-truck-fast"></i>
                </div>

                <h4>
                    Fast delivery
                </h4>

                <small>
                    Free shipping on selected items.
                </small>

            </div>


            <div class="cat-card">

                <div class="cat-icon">
                    <i class="fas fa-shield-halved"></i>
                </div>

                <h4>
                    Secure shopping
                </h4>

                <small>
                    Simple and protected checkout experience.
                </small>

            </div>


            <div class="cat-card">

                <div class="cat-icon">
                    <i class="fas fa-headset"></i>
                </div>

                <h4>
                    Helpful support
                </h4>

                <small>
                    We're here when you need us.
                </small>

            </div>

        </div>

    </section>


    <!-- TESTIMONIALS -->

    <section class="section container">

        <div class="section-head">

            <div>

                <h2 class="section-title">
                    What customers say
                </h2>

                <p>
                    Feedback from verified buyers.
                </p>

            </div>

        </div>


        <div class="testimonials">

            <article class="testimonial">

                <div class="stars">
                    ★★★★★
                </div>

                <p class="quote">
                    “Fast shipping and excellent customer support.
                    The product exceeded my expectations!”
                </p>

                <div class="person">

                    <img
                        src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80"
                        alt="">

                    <div>

                        <strong>
                            Ava Martin
                        </strong>

                        <small>
                            Verified buyer
                        </small>

                    </div>

                </div>

            </article>


            <article class="testimonial">

                <div class="stars">
                    ★★★★☆
                </div>

                <p class="quote">
                    “Great selection and the checkout was smooth.
                    Will shop again.”
                </p>

                <div class="person">

                    <img
                        src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80"
                        alt="">

                    <div>

                        <strong>
                            Michael Lee
                        </strong>

                        <small>
                            Frequent buyer
                        </small>

                    </div>

                </div>

            </article>

        </div>

    </section>


    <!-- NEWSLETTER -->

    <section class="section container">

        <div class="newsletter">

            <h2>
                Get the good stuff first
            </h2>

            <p>
                New arrivals, useful picks and exclusive offers —
                straight to your inbox.
            </p>

            <form id="newsletterForm">

                <input
                    id="newsletterEmail"
                    type="email"
                    placeholder="Your email address"
                    aria-label="Email address"
                    required>

                <button
                    class="btn btn-primary"
                    type="submit">

                    Subscribe

                </button>

            </form>

            <div
                class="newsletter-msg"
                id="newsletterMsg">
            </div>

        </div>

    </section>

</main>


<!-- FOOTER -->

<footer>

    <div class="container footer-grid">

        <div>

            <div class="brand">
                Nexus<span>Shop</span>
            </div>

            <p
                style="
                    color:var(--muted);
                    max-width:330px;
                ">

                A friendly, modern e-commerce experience
                built for easy discovery and simple shopping.

            </p>

            <div class="social">

                <button class="icon-btn">
                    <i class="fab fa-facebook-f"></i>
                </button>

                <button class="icon-btn">
                    <i class="fab fa-instagram"></i>
                </button>

                <button class="icon-btn">
                    <i class="fab fa-x-twitter"></i>
                </button>

            </div>

        </div>


        <div>

            <div class="footer-title">
                Shop
            </div>

            <div class="footer-links">

                <a href="#categories">
                    Categories
                </a>

                <a href="#products">
                    Trending
                </a>

                <a href="#deals">
                    Deals
                </a>

            </div>

        </div>


        <div>

            <div class="footer-title">
                Help
            </div>

            <div class="footer-links">

                <a href="#about">
                    About us
                </a>

                <a href="#">
                    Shipping & Returns
                </a>

                <a href="#">
                    Contact
                </a>

            </div>

        </div>


        <div>

            <div class="footer-title">
                Account
            </div>

            <div class="footer-links">

                <a href="#">
                    My account
                </a>

                <a href="#">
                    Wishlist
                </a>

                <a href="#">
                    Order history
                </a>

            </div>

        </div>

    </div>


    <div class="container copyright">

        ©
        <span id="year"></span>
        NexusShop.
        All rights reserved.

    </div>

</footer>


<div
    class="toast"
    id="toast"
    role="status">
</div>


<script>

/* ================= DATA ================= */

const CATEGORIES = [

    {
        id:'phones',
        name:'Smartphones',
        icon:'fa-mobile-screen-button'
    },

    {
        id:'laptops',
        name:'Laptops',
        icon:'fa-laptop'
    },

    {
        id:'clothing',
        name:'Clothing',
        icon:'fa-shirt'
    },

    {
        id:'gadgets',
        name:'Gadgets',
        icon:'fa-headphones'
    },

    {
        id:'footwear',
        name:'Footwear',
        icon:'fa-shoe-prints'
    },

    {
        id:'accessories',
        name:'Accessories',
        icon:'fa-watch'
    }

];


const PRODUCTS = [

    {
        id:1,
        title:'iPhone 14 Pro Max',
        price:1099,
        oldPrice:1199,
        rating:5,
        reviews:128,
        badge:'New',
        img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
        category:'phones'
    },

    {
        id:2,
        title:'MacBook Pro 14"',
        price:1999,
        rating:4,
        reviews:86,
        img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
        category:'laptops'
    },

    {
        id:3,
        title:'Apple Watch Series 8',
        price:349,
        oldPrice:399,
        rating:5,
        reviews:214,
        badge:'-25%',
        img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
        category:'accessories'
    },

    {
        id:4,
        title:'Nike Air Max 270',
        price:150,
        rating:4,
        reviews:53,
        img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
        category:'footwear'
    },

    {
        id:5,
        title:'Sony A7 IV Camera',
        price:2499,
        rating:5,
        reviews:42,
        img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
        category:'gadgets'
    },

    {
        id:6,
        title:'Chanel No. 5',
        price:120,
        rating:5,
        reviews:189,
        img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
        category:'accessories'
    },

    {
        id:7,
        title:'Travel Backpack',
        price:79,
        oldPrice:99,
        rating:4,
        reviews:67,
        img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
        category:'accessories'
    },

    {
        id:8,
        title:'Sony WH-1000XM5',
        price:399,
        rating:5,
        reviews:156,
        img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
        category:'gadgets'
    }

];


/* ================= ELEMENTS ================= */

const categoriesGrid =
    document.getElementById('categoriesGrid');

const productsGrid =
    document.getElementById('productsGrid');

const searchInput =
    document.getElementById('searchInput');

const cartCountEl =
    document.getElementById('cartCount');

const emptyState =
    document.getElementById('emptyState');

const toast =
    document.getElementById('toast');

let cartCount = 0;

let currentFilter = 'all';


/* ================= HELPERS ================= */

function escapeHtml(text){

    return String(text).replace(
        /[&<>"']/g,
        s => ({
            '&':'&amp;',
            '<':'&lt;',
            '>':'&gt;',
            '"':'&quot;',
            "'":'&#39;'
        }[s])
    );

}


function notify(message){

    toast.textContent = message;

    toast.classList.add('show');

    clearTimeout(window.toastTimer);

    window.toastTimer =
        setTimeout(
            () => toast.classList.remove('show'),
            2200
        );

}


/* ================= CART ================= */

function addToCart(id){

    const product =
        PRODUCTS.find(
            product => product.id === id
        );

    if(!product){
        return;
    }

    cartCount++;

    cartCountEl.textContent =
        cartCount;

    notify(
        `${product.title} added to your cart`
    );

}


/* ================= CATEGORIES ================= */

function renderCategories(){

    categoriesGrid.innerHTML =
        CATEGORIES.map(category => `

            <button
                class="cat-card"
                data-cat="${category.id}"
                style="
                    border:1px solid var(--line);
                    font:inherit;
                    color:inherit;
                ">

                <div class="cat-icon">

                    <i
                        class="fas ${category.icon}">
                    </i>

                </div>

                <h4>
                    ${category.name}
                </h4>

                <small>
                    Explore products
                </small>

            </button>

        `).join('');


    categoriesGrid
        .querySelectorAll('[data-cat]')
        .forEach(button => {

            button.onclick = () => {

                setFilter(
                    button.dataset.cat
                );

                document
                    .getElementById('products')
                    .scrollIntoView({
                        behavior:'smooth'
                    });

            };

        });

}


/* ================= PRODUCTS ================= */

function renderProducts(list){

    productsGrid.innerHTML =
        list.map(product => `

            <article class="product">

                <div class="product-media">

                    ${
                        product.badge
                        ?
                        `
                        <span class="badge">
                            ${escapeHtml(product.badge)}
                        </span>
                        `
                        :
                        ''
                    }

                    <button
                        class="wish"
                        aria-label="Add to wishlist">

                        <i class="far fa-heart"></i>

                    </button>

                    <img
                        src="${product.img}"
                        alt="${escapeHtml(product.title)}"
                        loading="lazy">

                </div>


                <div class="product-body">

                    <h3>
                        ${escapeHtml(product.title)}
                    </h3>

                    <div class="category">
                        ${escapeHtml(product.category)}
                    </div>


                    <div class="price-row">

                        <div>

                            <span class="price">
                                $${product.price.toLocaleString()}
                            </span>

                            ${
                                product.oldPrice
                                ?
                                `
                                <span class="old-price">
                                    $${product.oldPrice.toLocaleString()}
                                </span>
                                `
                                :
                                ''
                            }

                        </div>


                        <div class="rating">

                            ${'★'.repeat(
                                Math.round(product.rating)
                            )}

                            <span>
                                (${product.reviews})
                            </span>

                        </div>

                    </div>

                </div>


                <div class="product-footer">

                    <button
                        class="add-btn"
                        data-id="${product.id}">

                        <i class="fas fa-plus"></i>

                        Add to cart

                    </button>


                    <button
                        class="wish-btn"
                        aria-label="Wishlist">

                        <i class="far fa-heart"></i>

                    </button>

                </div>

            </article>

        `).join('');


    emptyState.style.display =
        list.length ? 'none' : 'block';


    productsGrid
        .querySelectorAll('.add-btn')
        .forEach(button => {

            button.onclick = () =>
                addToCart(
                    Number(button.dataset.id)
                );

        });


    productsGrid
        .querySelectorAll(
            '.wish,.wish-btn'
        )
        .forEach(button => {

            button.onclick = () => {

                button.innerHTML =
                    '<i class="fas fa-heart"></i>';

                notify(
                    'Added to wishlist'
                );

            };

        });

}


/* ================= FILTERS ================= */

function setFilter(filter){

    currentFilter = filter;

    document
        .querySelectorAll('.filter-pill')
        .forEach(button => {

            button.classList.toggle(
                'active',
                button.dataset.filter === filter
            );

        });

    applyFilters();

}


function applyFilters(){

    const query =
        searchInput.value
            .trim()
            .toLowerCase();


    const filtered =
        PRODUCTS.filter(product => {

            const matchesFilter =
                currentFilter === 'all' ||
                product.category === currentFilter;


            const matchesSearch =
                !query ||
                product.title
                    .toLowerCase()
                    .includes(query) ||

                product.category
                    .toLowerCase()
                    .includes(query);


            return matchesFilter &&
                   matchesSearch;

        });


    renderProducts(filtered);

}


document
    .querySelectorAll('.filter-pill')
    .forEach(button => {

        button.onclick = () =>
            setFilter(
                button.dataset.filter
            );

    });


searchInput.addEventListener(
    'input',
    applyFilters
);


document
    .getElementById('clearFilter')
    .onclick = () => {

        searchInput.value = '';

        setFilter('all');

    };


/* ================= HERO ================= */

document
    .getElementById('shopNow')
    .onclick = () => {

        document
            .getElementById('products')
            .scrollIntoView({
                behavior:'smooth'
            });

    };


document
    .getElementById('exploreDeals')
    .onclick = () => {

        document
            .getElementById('deals')
            .scrollIntoView({
                behavior:'smooth'
            });

    };


/* ================= DEAL ================= */

document
    .getElementById('buyDeal')
    .onclick = () => {

        cartCount++;

        cartCountEl.textContent =
            cartCount;

        notify(
            'MacBook Air M2 added to your cart'
        );

    };


/* ================= CART ================= */

document
    .getElementById('cartBtn')
    .onclick = () => {

        if(cartCount){

            notify(
                `You have ${cartCount} item${
                    cartCount > 1 ? 's' : ''
                } in your cart`
            );

        }else{

            notify(
                'Your cart is empty'
            );

        }

    };


/* ================= MOBILE MENU ================= */

document
    .getElementById('mobileToggle')
    .onclick = () => {

        const menu =
            document.getElementById(
                'mobileMenu'
            );

        menu.style.display =
            menu.style.display === 'block'
                ? 'none'
                : 'block';

    };


/* ================= NEWSLETTER ================= */

document
    .getElementById('newsletterForm')
    .onsubmit = event => {

        event.preventDefault();

        const email =
            document.getElementById(
                'newsletterEmail'
            );

        const message =
            document.getElementById(
                'newsletterMsg'
            );


        if(
            !email.value ||
            !email.checkValidity()
        ){

            message.textContent =
                'Please enter a valid email address.';

            message.style.display =
                'block';

            return;

        }


        message.textContent =
            'Thanks! You are subscribed.';

        message.style.display =
            'block';

        email.value = '';


        setTimeout(
            () =>
                message.style.display = 'none',
            3000
        );

    };


/* ================= COUNTDOWN ================= */

(function setupTimer(){

    const target =
        Date.now() +
        ((24 * 60 + 36) * 60 * 1000);


    function tick(){

        let difference =
            Math.max(
                0,
                target - Date.now()
            );


        const days =
            Math.floor(
                difference / 86400000
            );


        const hours =
            Math.floor(
                difference % 86400000 /
                3600000
            );


        const minutes =
            Math.floor(
                difference % 3600000 /
                60000
            );


        const seconds =
            Math.floor(
                difference % 60000 /
                1000
            );


        document.getElementById(
            'dealDays'
        ).textContent = days;


        document.getElementById(
            'dealHours'
        ).textContent =
            String(hours).padStart(2,'0');


        document.getElementById(
            'dealMinutes'
        ).textContent =
            String(minutes).padStart(2,'0');


        document.getElementById(
            'dealSeconds'
        ).textContent =
            String(seconds).padStart(2,'0');


        if(difference <= 0){

            clearInterval(timer);

        }

    }


    tick();

    const timer =
        setInterval(
            tick,
            1000
        );

})();


/* ================= INIT ================= */

renderCategories();

renderProducts(PRODUCTS);

document.getElementById(
    'year'
).textContent =
    new Date().getFullYear();

</script>

</body>
</html>
