<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop</title>

  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
  />

  <link
    href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap"
    rel="stylesheet"
  />

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --primary: #6c4cf1;
      --primary-dark: #5535db;
      --dark: #171329;
      --text: #1f2937;
      --muted: #6b7280;
      --light: #f6f7fb;
      --white: #ffffff;
      --border: #e5e7eb;
      --danger: #ef4444;
      --success: #22c55e;
    }

    body {
      font-family: "Inter", sans-serif;
      background: var(--light);
      color: var(--text);
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    button {
      font-family: inherit;
      cursor: pointer;
    }

    .container {
      width: 92%;
      max-width: 1250px;
      margin: auto;
    }

    /* TOP BAR */

    .topbar {
      background: var(--dark);
      color: white;
      text-align: center;
      padding: 9px;
      font-size: 13px;
    }

    /* HEADER */

    header {
      background: rgba(255, 255, 255, 0.96);
      backdrop-filter: blur(10px);
      position: sticky;
      top: 0;
      z-index: 1000;
      border-bottom: 1px solid var(--border);
    }

    .navbar {
      min-height: 75px;
      display: flex;
      align-items: center;
      gap: 30px;
    }

    .logo {
      font-family: "Poppins";
      font-size: 25px;
      font-weight: 800;
    }

    .logo span {
      color: var(--primary);
    }

    .nav-links {
      display: flex;
      gap: 10px;
    }

    .nav-links a {
      padding: 10px 14px;
      border-radius: 10px;
      font-size: 14px;
      font-weight: 600;
      color: #4b5563;
    }

    .nav-links a:hover,
    .nav-links a.active {
      background: #efecff;
      color: var(--primary);
    }

    .header-right {
      margin-left: auto;
      display: flex;
      gap: 10px;
      align-items: center;
    }

    .search {
      width: 270px;
      background: #f3f4f6;
      display: flex;
      align-items: center;
      padding: 0 14px;
      height: 44px;
      border-radius: 13px;
    }

    .search input {
      width: 100%;
      border: none;
      outline: none;
      background: none;
      padding: 0 10px;
    }

    .search button {
      border: none;
      background: none;
    }

    .icon-button {
      width: 43px;
      height: 43px;
      border: none;
      border-radius: 50%;
      background: #f3f4f6;
      position: relative;
    }

    .cart-count {
      position: absolute;
      right: -3px;
      top: -5px;
      width: 20px;
      height: 20px;
      background: var(--primary);
      color: white;
      border-radius: 50%;
      font-size: 10px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    /* HERO */

    .hero {
      min-height: 500px;
      margin-top: 28px;
      border-radius: 30px;
      overflow: hidden;
      display: flex;
      align-items: center;
      color: white;

      background:
        linear-gradient(
          90deg,
          rgba(20, 15, 46, 0.9),
          rgba(20, 15, 46, 0.3)
        ),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80")
          center/cover;
    }

    .hero-content {
      max-width: 680px;
      padding: 70px;
    }

    .hero-tag {
      text-transform: uppercase;
      letter-spacing: 2px;
      color: #c4b5fd;
      font-size: 12px;
      font-weight: 700;
    }

    .hero h1 {
      font-family: "Poppins";
      font-size: 62px;
      line-height: 1.08;
      margin: 12px 0 20px;
    }

    .hero p {
      color: #e5e7eb;
      font-size: 17px;
      line-height: 1.7;
    }

    .hero-buttons {
      margin-top: 28px;
      display: flex;
      gap: 12px;
    }

    .btn {
      padding: 13px 21px;
      border-radius: 12px;
      border: none;
      font-weight: 700;
    }

    .btn-light {
      background: white;
      color: var(--dark);
    }

    .btn-outline {
      background: transparent;
      color: white;
      border: 1px solid rgba(255, 255, 255, 0.4);
    }

    .btn-primary {
      background: var(--primary);
      color: white;
    }

    /* SECTION */

    .section {
      padding: 65px 0;
    }

    .section-header {
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
      margin-bottom: 25px;
    }

    .section-header h2 {
      font-family: "Poppins";
      font-size: 28px;
    }

    .section-header p {
      color: var(--muted);
      font-size: 14px;
      margin-top: 5px;
    }

    /* CATEGORIES */

    .categories {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 15px;
    }

    .category {
      background: white;
      padding: 25px 15px;
      text-align: center;
      border-radius: 18px;
      border: 1px solid var(--border);
      transition: 0.3s;
      cursor: pointer;
    }

    .category:hover {
      transform: translateY(-7px);
      box-shadow: 0 15px 35px rgba(0, 0, 0, 0.08);
      border-color: #c4b5fd;
    }

    .category-icon {
      width: 55px;
      height: 55px;
      margin: auto;
      border-radius: 16px;
      background: #efecff;
      color: var(--primary);
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 22px;
    }

    .category h4 {
      margin-top: 14px;
      font-size: 14px;
    }

    .category span {
      font-size: 11px;
      color: var(--muted);
    }

    /* PRODUCTS */

    .products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 22px;
    }

    .product {
      background: white;
      border-radius: 20px;
      overflow: hidden;
      border: 1px solid var(--border);
      transition: 0.3s;
      position: relative;
    }

    .product:hover {
      transform: translateY(-6px);
      box-shadow: 0 18px 40px rgba(0, 0, 0, 0.08);
    }

    .product-image {
      height: 245px;
      overflow: hidden;
      position: relative;
      background: #f3f4f6;
    }

    .product-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.4s;
    }

    .product:hover img {
      transform: scale(1.05);
    }

    .badge {
      position: absolute;
      left: 14px;
      top: 14px;
      background: var(--dark);
      color: white;
      padding: 6px 9px;
      border-radius: 7px;
      font-size: 10px;
      font-weight: 700;
      z-index: 1;
    }

    .heart {
      position: absolute;
      right: 14px;
      top: 14px;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      border: none;
      background: white;
      z-index: 1;
    }

    .product-content {
      padding: 17px;
    }

    .product-category {
      font-size: 10px;
      text-transform: uppercase;
      letter-spacing: 1px;
      color: var(--muted);
    }

    .product h3 {
      font-size: 15px;
      margin-top: 6px;
    }

    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 15px;
    }

    .price {
      font-size: 19px;
      font-weight: 700;
    }

    .old-price {
      text-decoration: line-through;
      color: var(--muted);
      font-size: 12px;
      margin-left: 6px;
    }

    .rating {
      color: #f59e0b;
      font-size: 11px;
    }

    .add-cart {
      width: calc(100% - 34px);
      margin: 0 17px 17px;
      padding: 12px;
      border: none;
      border-radius: 11px;
      background: var(--dark);
      color: white;
      font-weight: 700;
    }

    .add-cart:hover {
      background: var(--primary);
    }

    /* DEAL */

    .deal {
      display: grid;
      grid-template-columns: 1fr 1fr;
      background: var(--dark);
      color: white;
      border-radius: 28px;
      overflow: hidden;
    }

    .deal img {
      width: 100%;
      height: 400px;
      object-fit: cover;
    }

    .deal-content {
      padding: 50px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-badge {
      width: max-content;
      background: var(--danger);
      padding: 6px 10px;
      border-radius: 7px;
      font-size: 11px;
      font-weight: 700;
    }

    .deal h2 {
      font-family: "Poppins";
      font-size: 36px;
      margin: 15px 0 5px;
    }

    .deal p {
      color: #c4c2ce;
    }

    .timer {
      display: flex;
      gap: 10px;
      margin: 25px 0;
    }

    .timer-box {
      background: #29233c;
      padding: 12px;
      min-width: 70px;
      text-align: center;
      border-radius: 12px;
    }

    .timer-box strong {
      display: block;
      font-size: 20px;
    }

    .timer-box span {
      font-size: 9px;
      color: #aaa6b7;
    }

    /* TESTIMONIALS */

    .reviews {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 20px;
    }

    .review {
      background: white;
      border: 1px solid var(--border);
      padding: 25px;
      border-radius: 18px;
    }

    .review p {
      font-size: 13px;
      color: var(--muted);
      line-height: 1.7;
      margin: 12px 0;
    }

    /* NEWSLETTER */

    .newsletter {
      text-align: center;
      padding: 50px;
      border-radius: 25px;
      background: linear-gradient(
        130deg,
        #201a43,
        var(--primary)
      );
      color: white;
    }

    .newsletter h2 {
      font-family: "Poppins";
      font-size: 28px;
    }

    .newsletter p {
      margin-top: 8px;
      color: #ddd6fe;
    }

    .newsletter-form {
      margin-top: 20px;
      display: flex;
      justify-content: center;
      gap: 8px;
    }

    .newsletter input {
      width: 350px;
      max-width: 100%;
      padding: 13px 15px;
      border-radius: 11px;
      border: none;
      outline: none;
    }

    /* FOOTER */

    footer {
      background: white;
      border-top: 1px solid var(--border);
      margin-top: 40px;
      padding: 40px 0 20px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr;
      gap: 40px;
    }

    footer p,
    footer a {
      color: var(--muted);
      font-size: 13px;
      line-height: 2;
    }

    .copyright {
      text-align: center;
      border-top: 1px solid var(--border);
      padding-top: 20px;
      margin-top: 30px;
      color: var(--muted);
      font-size: 12px;
    }

    /* RESPONSIVE */

    @media (max-width: 1000px) {
      .nav-links {
        display: none;
      }

      .categories {
        grid-template-columns: repeat(3, 1fr);
      }

      .products {
        grid-template-columns: repeat(2, 1fr);
      }

      .reviews {
        grid-template-columns: repeat(2, 1fr);
      }

      .deal {
        grid-template-columns: 1fr;
      }
    }

    @media (max-width: 650px) {
      .search {
        display: none;
      }

      .hero {
        min-height: 520px;
      }

      .hero-content {
        padding: 35px;
      }

      .hero h1 {
        font-size: 42px;
      }

      .hero-buttons {
        flex-direction: column;
      }

      .categories {
        grid-template-columns: repeat(2, 1fr);
      }

      .products,
      .reviews {
        grid-template-columns: 1fr;
      }

      .newsletter-form {
        flex-direction: column;
      }

      .newsletter input {
        width: 100%;
      }

      .footer-grid {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>

<body>

<div class="topbar">
  🚚 Free Shipping Over $50 &nbsp; • &nbsp;
  🔄 30-Day Returns &nbsp; • &nbsp;
  🔒 Secure Checkout
</div>

<header>
  <div class="container navbar">

    <a href="#" class="logo">
      Nexus<span>Shop</span>
    </a>

    <nav class="nav-links">
      <a href="#" class="active">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Trending</a>
      <a href="#deal">Deals</a>
      <a href="#reviews">Reviews</a>
    </nav>

    <div class="header-right">

      <div class="search">
        <i class="fas fa-search"></i>

        <input
          type="search"
          id="searchInput"
          placeholder="Search products..."
        />

        <button onclick="searchProducts()">
          <i class="fas fa-arrow-right"></i>
        </button>
      </div>

      <button class="icon-button">
        <i class="far fa-user"></i>
      </button>

      <button class="icon-button">
        <i class="far fa-heart"></i>
      </button>

      <button class="icon-button">
        <i class="fas fa-shopping-bag"></i>
        <span class="cart-count" id="cartCount">0</span>
      </button>

    </div>

  </div>
</header>

<main>

  <!-- HERO -->

  <section class="hero container">

    <div class="hero-content">

      <div class="hero-tag">
        New Season • Premium Picks
      </div>

      <h1>
        Find what<br />
        moves you.
      </h1>

      <p>
        Discover hand-picked fashion, technology,
        accessories and everyday essentials with
        exclusive deals.
      </p>

      <div class="hero-buttons">

        <button
          class="btn btn-light"
          onclick="scrollToProducts()"
        >
          Shop Collection
          <i class="fas fa-arrow-right"></i>
        </button>

        <button
          class="btn btn-outline"
          onclick="location.href='#deal'"
        >
          View Deals
        </button>

      </div>

    </div>

  </section>


  <!-- CATEGORIES -->

  <section class="section container" id="categories">

    <div class="section-header">
      <div>
        <h2>Shop by Category</h2>
        <p>Everything you need, organized your way.</p>
      </div>
    </div>

    <div class="categories" id="categoryContainer"></div>

  </section>


  <!-- PRODUCTS -->

  <section class="section container" id="products">

    <div class="section-header">

      <div>
        <h2>Trending Right Now</h2>
        <p>Popular picks our customers are loving.</p>
      </div>

    </div>

    <div class="products" id="productContainer"></div>

  </section>


  <!-- DEAL -->

  <section class="section container" id="deal">

    <div class="deal">

      <img
        src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80"
        alt="MacBook"
      />

      <div class="deal-content">

        <div class="deal-badge">
          17% OFF
        </div>

        <h2>MacBook Air M2</h2>

        <p>
          Thin, light and powerful. Get M2 performance
          at a limited-time special price.
        </p>

        <div class="timer">

          <div class="timer-box">
            <strong id="days">00</strong>
            <span>DAYS</span>
          </div>

          <div class="timer-box">
            <strong id="hours">00</strong>
            <span>HOURS</span>
          </div>

          <div class="timer-box">
            <strong id="minutes">00</strong>
            <span>MINUTES</span>
          </div>

          <div class="timer-box">
            <strong id="seconds">00</strong>
            <span>SECONDS</span>
          </div>

        </div>

        <h2>
          $999
          <del
            style="
              font-size:15px;
              color:#888;
              margin-left:10px;
            "
          >
            $1,199
          </del>
        </h2>

        <button
          onclick="addDealToCart()"
          class="btn btn-primary"
          style="width:max-content;margin-top:15px"
        >
          Buy Now
        </button>

      </div>

    </div>

  </section>


  <!-- REVIEWS -->

  <section class="section container" id="reviews">

    <div class="section-header">

      <div>
        <h2>Loved by Shoppers</h2>
        <p>Real feedback from our customers.</p>
      </div>

    </div>

    <div class="reviews">

      <div class="review">
        ⭐⭐⭐⭐⭐

        <p>
          Fast shipping and excellent customer support.
          The product exceeded my expectations.
        </p>

        <strong>Ava Martin</strong>
      </div>

      <div class="review">
        ⭐⭐⭐⭐⭐

        <p>
          Great selection of products and the shopping
          experience was really smooth.
        </p>

        <strong>Michael Lee</strong>
      </div>

      <div class="review">
        ⭐⭐⭐⭐⭐

        <p>
          Beautiful website and quick delivery.
          I will definitely shop here again.
        </p>

        <strong>Sophia Chen</strong>
      </div>

    </div>

  </section>


  <!-- NEWSLETTER -->

  <section class="section container">

    <div class="newsletter">

      <h2>Stay in the Loop</h2>

      <p>
        Get exclusive offers, new arrivals and sale updates.
      </p>

      <div class="newsletter-form">

        <input
          type="email"
          id="email"
          placeholder="Enter your email address"
        />

        <button
          class="btn btn-light"
          onclick="subscribe()"
        >
          Subscribe
        </button>

      </div>

      <p id="newsletterMessage"></p>

    </div>

  </section>

</main>


<footer>

  <div class="container footer-grid">

    <div>

      <div class="logo">
        Nexus<span>Shop</span>
      </div>

      <p>
        A modern e-commerce shopping experience
        built using HTML, CSS and JavaScript.
      </p>

    </div>

    <div>

      <h4>Company</h4>

      <a href="#">About</a><br />
      <a href="#">Careers</a><br />
      <a href="#">Press</a>

    </div>

    <div>

      <h4>Support</h4>

      <a href="#">Help Center</a><br />
      <a href="#">Shipping</a><br />
      <a href="#">Contact</a>

    </div>

  </div>

  <div class="container copyright">

    © <span id="year"></span>
    NexusShop. All Rights Reserved.

  </div>

</footer>


<script>

  const categories = [
    {
      name: "Smartphones",
      icon: "fa-mobile-screen-button",
      category: "phones"
    },
    {
      name: "Laptops",
      icon: "fa-laptop",
      category: "laptops"
    },
    {
      name: "Fashion",
      icon: "fa-shirt",
      category: "fashion"
    },
    {
      name: "Gadgets",
      icon: "fa-headphones",
      category: "gadgets"
    },
    {
      name: "Footwear",
      icon: "fa-shoe-prints",
      category: "footwear"
    },
    {
      name: "Accessories",
      icon: "fa-clock",
      category: "accessories"
    }
  ];


  const products = [

    {
      id: 1,
      title: "iPhone 14 Pro Max",
      category: "phones",
      price: 1099,
      oldPrice: 1199,
      rating: 5,
      badge: "NEW",
      image:
        "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80"
    },

    {
      id: 2,
      title: 'MacBook Pro 14"',
      category: "laptops",
      price: 1999,
      rating: 5,
      image:
        "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80"
    },

    {
      id: 3,
      title: "Apple Watch Series 8",
      category: "accessories",
      price: 349,
      oldPrice: 399,
      rating: 5,
      badge: "SALE",
      image:
        "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80"
    },

    {
      id: 4,
      title: "Nike Air Max",
      category: "footwear",
      price: 150,
      rating: 4,
      image:
        "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80"
    },

    {
      id: 5,
      title: "Sony Camera",
      category: "gadgets",
      price: 2499,
      rating: 5,
      image:
        "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=600&q=80"
    },

    {
      id: 6,
      title: "Wireless Headphones",
      category: "gadgets",
      price: 399,
      rating: 5,
      image:
        "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80"
    },

    {
      id: 7,
      title: "Travel Backpack",
      category: "accessories",
      price: 79,
      oldPrice: 99,
      rating: 4,
      image:
        "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80"
    },

    {
      id: 8,
      title: "Premium Fashion",
      category: "fashion",
      price: 120,
      rating: 5,
      image:
        "https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=600&q=80"
    }

  ];


  let cartCount = 0;


  function renderCategories() {

    const container =
      document.getElementById("categoryContainer");

    container.innerHTML = "";

    categories.forEach(category => {

      container.innerHTML += `

        <div
          class="category"
          onclick="filterCategory('${category.category}')"
        >

          <div class="category-icon">
            <i class="fas ${category.icon}"></i>
          </div>

          <h4>${category.name}</h4>

          <span>
            Explore Collection
          </span>

        </div>

      `;

    });

  }


  function renderProducts(productList) {

    const container =
      document.getElementById("productContainer");

    container.innerHTML = "";


    productList.forEach(product => {

      const oldPrice = product.oldPrice
        ? `<span class="old-price">$${product.oldPrice}</span>`
        : "";


      const badge = product.badge
        ? `<span class="badge">${product.badge}</span>`
        : "";


      container.innerHTML += `

        <div class="product">

          <div class="product-image">

            ${badge}

            <button class="heart">
              <i class="far fa-heart"></i>
            </button>

            <img
              src="${product.image}"
              alt="${product.title}"
            />

          </div>


          <div class="product-content">

            <div class="product-category">
              ${product.category}
            </div>

            <h3>
              ${product.title}
            </h3>


            <div class="price-row">

              <div>

                <span class="price">
                  $${product.price}
                </span>

                ${oldPrice}

              </div>


              <div class="rating">

                ${"★".repeat(product.rating)}

              </div>

            </div>

          </div>


          <button
            class="add-cart"
            onclick="addToCart(${product.id}, this)"
          >

            <i class="fas fa-shopping-bag"></i>

            Add to Cart

          </button>

        </div>

      `;

    });

  }


  function filterCategory(category) {

    const filtered = products.filter(
      product =>
        product.category === category
    );

    renderProducts(filtered);

    document
      .getElementById("products")
      .scrollIntoView({
        behavior: "smooth"
      });

  }


  function searchProducts() {

    const search =
      document
        .getElementById("searchInput")
        .value
        .toLowerCase();


    const filtered = products.filter(product =>

      product.title
        .toLowerCase()
        .includes(search)

      ||

      product.category
        .toLowerCase()
        .includes(search)

    );


    renderProducts(filtered);

  }


  document
    .getElementById("searchInput")
    .addEventListener(
      "keyup",
      function(event) {

        if (event.key === "Enter") {
          searchProducts();
        }

      }
    );


  function addToCart(id, button) {

    cartCount++;

    document.getElementById(
      "cartCount"
    ).innerText = cartCount;


    const previous =
      button.innerHTML;


    button.innerHTML =
      '<i class="fas fa-check"></i> Added';


    button.style.background =
      "#22c55e";


    setTimeout(() => {

      button.innerHTML = previous;

      button.style.background = "";

    }, 1200);

  }


  function addDealToCart() {

    cartCount++;

    document.getElementById(
      "cartCount"
    ).innerText = cartCount;

    alert(
      "MacBook Air M2 added to your cart!"
    );

  }


  function scrollToProducts() {

    document
      .getElementById("products")
      .scrollIntoView({
        behavior: "smooth"
      });

  }


  function subscribe() {

    const email =
      document
        .getElementById("email")
        .value;


    const message =
      document.getElementById(
        "newsletterMessage"
      );


    if (
      email === "" ||
      !email.includes("@")
    ) {

      message.innerText =
        "Please enter a valid email address.";

      return;

    }


    message.innerText =
      "Thank you! You are now subscribed.";

    document.getElementById(
      "email"
    ).value = "";

  }


  // COUNTDOWN

  const endTime =
    new Date().getTime()
    + 25 * 60 * 60 * 1000;


  setInterval(() => {

    const now =
      new Date().getTime();

    const difference =
      endTime - now;


    const days =
      Math.floor(
        difference /
        (1000 * 60 * 60 * 24)
      );


    const hours =
      Math.floor(
        (difference %
          (1000 * 60 * 60 * 24))
          /
          (1000 * 60 * 60)
      );


    const minutes =
      Math.floor(
        (difference %
          (1000 * 60 * 60))
          /
          (1000 * 60)
      );


    const seconds =
      Math.floor(
        (difference %
          (1000 * 60))
          /
          1000
      );


    document.getElementById(
      "days"
    ).innerText =
      String(days).padStart(2, "0");


    document.getElementById(
      "hours"
    ).innerText =
      String(hours).padStart(2, "0");


    document.getElementById(
      "minutes"
    ).innerText =
      String(minutes).padStart(2, "0");


    document.getElementById(
      "seconds"
    ).innerText =
      String(seconds).padStart(2, "0");


  }, 1000);


  document.getElementById(
    "year"
  ).innerText =
    new Date().getFullYear();


  renderCategories();

  renderProducts(products);

</script>

</body>
</html>
