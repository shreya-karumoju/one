<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="NexusShop - modern, user-friendly e-commerce experience" />

  <title>Shreya Store and all items are avaialble here</title>

  <!-- =========================
       GOOGLE FONTS
  ========================== -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

  <link
    href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@500;600;700&family=Manrope:wght@400;500;600;700;800&display=swap"
    rel="stylesheet"
  >

  <!-- Font Awesome -->
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
  >

  <style>

    /* =====================================================
       GLOBAL VARIABLES
    ===================================================== */

    :root {
      --primary: #635bff;
      --primary-dark: #4f46e5;
      --primary-soft: #eeedff;

      --ink: #16181d;
      --text: #30343b;
      --muted: #737983;

      --surface: #ffffff;
      --surface-2: #f7f8fa;

      --line: #e8e9ed;

      --success: #16a34a;
      --danger: #e5484d;
      --warning: #f59e0b;

      --shadow-sm:
        0 2px 10px rgba(22, 24, 29, 0.05);

      --shadow-md:
        0 14px 40px rgba(22, 24, 29, 0.10);

      --radius: 18px;

      --container: 1180px;
    }


    /* =====================================================
       RESET
    ===================================================== */

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: "Manrope", sans-serif;
      background: var(--surface-2);
      color: var(--text);
      line-height: 1.55;
    }

    body.no-scroll {
      overflow: hidden;
    }

    button,
    input {
      font: inherit;
    }

    button {
      cursor: pointer;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    img {
      display: block;
      max-width: 100%;
    }

    .container {
      width: min(92%, var(--container));
      margin-inline: auto;
    }


    /* =====================================================
       ACCESSIBILITY
    ===================================================== */

    .skip-link {
      position: fixed;
      left: 16px;
      top: -60px;
      z-index: 5000;

      padding: 10px 14px;

      border-radius: 10px;

      background: var(--ink);
      color: #fff;
    }

    .skip-link:focus {
      top: 16px;
    }

    :focus-visible {
      outline: 3px solid rgba(99, 91, 255, 0.35);
      outline-offset: 3px;
    }


    /* =====================================================
       TOP STRIP
    ===================================================== */

    .top-strip {
      background: var(--ink);
      color: #fff;

      font-size: 12px;
      font-weight: 700;

      text-align: center;

      padding: 9px 16px;
    }

    .top-strip span {
      opacity: 0.85;
      margin: 0 8px;
    }


    /* =====================================================
       HEADER
    ===================================================== */

    header {
      position: sticky;
      top: 0;
      z-index: 1000;

      background: rgba(255, 255, 255, 0.94);

      backdrop-filter: blur(14px);

      border-bottom: 1px solid var(--line);
    }

    .nav {
      min-height: 76px;

      display: flex;
      align-items: center;

      gap: 22px;
    }


    /* LOGO */

    .brand {
      display: flex;
      align-items: center;

      gap: 9px;

      flex-shrink: 0;

      font-family: "DM Sans", sans-serif;

      font-size: 23px;
      font-weight: 700;

      color: var(--ink);
    }

    .brand-mark {
      width: 36px;
      height: 36px;

      border-radius: 11px;

      display: grid;
      place-items: center;

      color: #fff;

      background:
        linear-gradient(
          135deg,
          var(--primary),
          #8b5cf6
        );

      box-shadow:
        0 7px 18px rgba(99, 91, 255, 0.25);
    }

    .brand em {
      color: var(--primary);
      font-style: normal;
    }


    /* DESKTOP NAV */

    .desktop-nav {
      display: flex;
      gap: 4px;
    }

    .desktop-nav a {
      padding: 9px 12px;

      border-radius: 10px;

      color: #555a63;

      font-size: 13px;
      font-weight: 700;
    }

    .desktop-nav a:hover,
    .desktop-nav a.active {
      background: var(--primary-soft);
      color: var(--primary-dark);
    }


    /* HEADER ACTIONS */

    .header-actions {
      margin-left: auto;

      display: flex;
      align-items: center;

      gap: 9px;
    }


    /* SEARCH */

    .search {
      width: 280px;
      height: 44px;

      display: flex;
      align-items: center;

      background: var(--surface-2);

      border: 1px solid transparent;

      border-radius: 13px;

      padding: 0 12px;

      transition: 0.2s;
    }

    .search:focus-within {
      background: #fff;

      border-color: #c9c6ff;

      box-shadow:
        0 0 0 4px rgba(99, 91, 255, 0.08);
    }

    .search i {
      color: #9297a0;
    }

    .search input {
      width: 100%;

      border: 0;
      outline: 0;

      background: transparent;

      padding: 0 9px;

      font-size: 13px;
    }

    .search button {
      border: 0;
      background: transparent;

      color: var(--primary);
    }


    /* ICON BUTTON */

    .icon-btn {
      width: 42px;
      height: 42px;

      border: 1px solid var(--line);

      background: #fff;

      border-radius: 12px;

      color: var(--ink);

      position: relative;

      display: grid;
      place-items: center;
    }

    .icon-btn:hover {
      border-color: #c9c6ff;

      color: var(--primary);

      background: var(--primary-soft);
    }


    /* BADGE */

    .badge-count {
      position: absolute;

      top: -5px;
      right: -5px;

      min-width: 19px;
      height: 19px;

      padding: 0 5px;

      display: grid;
      place-items: center;

      border-radius: 99px;

      background: var(--primary);

      color: #fff;

      font-size: 10px;
      font-weight: 800;

      border: 2px solid #fff;
    }

    .mobile-menu-btn {
      display: none;
    }


    /* =====================================================
       HERO
    ===================================================== */

    .hero {
      margin-top: 26px;

      min-height: 470px;

      border-radius: 28px;

      overflow: hidden;

      position: relative;

      display: flex;
      align-items: center;

      color: #fff;

      background:
        linear-gradient(
          90deg,
          rgba(15, 16, 24, 0.93) 0%,
          rgba(15, 16, 24, 0.72) 45%,
          rgba(15, 16, 24, 0.18) 100%
        ),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
        center/cover;

      box-shadow: var(--shadow-md);
    }

    .hero-content {
      max-width: 650px;

      padding: 60px;
    }

    .eyebrow {
      display: inline-flex;
      align-items: center;

      gap: 7px;

      color: #d9d6ff;

      font-size: 11px;

      font-weight: 800;

      letter-spacing: 1.5px;

      text-transform: uppercase;
    }

    .eyebrow::before {
      content: "";

      width: 7px;
      height: 7px;

      border-radius: 50%;

      background: #a78bfa;
    }

    .hero h1 {
      font-family: "DM Sans", sans-serif;

      font-size: clamp(42px, 6vw, 68px);

      line-height: 1.02;

      letter-spacing: -2.5px;

      margin: 14px 0 18px;
    }

    .hero p {
      max-width: 560px;

      color: #e8e8ed;

      font-size: 16px;

      line-height: 1.8;
    }

    .hero-actions {
      display: flex;

      gap: 11px;

      flex-wrap: wrap;

      margin-top: 27px;
    }


    /* =====================================================
       BUTTONS
    ===================================================== */

    .btn {
      min-height: 44px;

      padding: 11px 17px;

      border: 0;

      border-radius: 11px;

      font-weight: 800;

      font-size: 13px;

      display: inline-flex;

      align-items: center;

      justify-content: center;

      gap: 8px;

      transition: 0.2s;
    }

    .btn:hover {
      transform: translateY(-1px);
    }

    .btn-primary {
      color: #fff;

      background: var(--primary);

      box-shadow:
        0 8px 18px rgba(99, 91, 255, 0.22);
    }

    .btn-primary:hover {
      background: var(--primary-dark);
    }

    .btn-light {
      color: var(--ink);

      background: #fff;
    }

    .btn-outline-light {
      color: #fff;

      border: 1px solid rgba(255, 255, 255, 0.35);

      background: rgba(255, 255, 255, 0.08);
    }

    .btn-outline-light:hover {
      background: rgba(255, 255, 255, 0.15);
    }


    /* =====================================================
       SECTIONS
    ===================================================== */

    .section {
      padding: 64px 0 0;
    }

    .section-head {
      display: flex;

      align-items: end;

      justify-content: space-between;

      gap: 20px;

      margin-bottom: 22px;
    }

    .section-head h2 {
      font-family: "DM Sans", sans-serif;

      color: var(--ink);

      font-size: 28px;

      line-height: 1.15;

      letter-spacing: -0.7px;
    }

    .section-head p {
      color: var(--muted);

      font-size: 13px;

      margin-top: 5px;
    }

    .link-btn {
      border: 0;

      background: transparent;

      color: var(--primary-dark);

      font-size: 13px;

      font-weight: 800;
    }

    .link-btn:hover {
      text-decoration: underline;
    }


    /* =====================================================
       CATEGORIES
    ===================================================== */

    .categories {
      display: grid;

      grid-template-columns: repeat(6, 1fr);

      gap: 13px;
    }

    .category {
      padding: 21px 12px;

      text-align: center;

      background: #fff;

      border: 1px solid var(--line);

      border-radius: 16px;

      transition: 0.2s;

      cursor: pointer;
    }

    .category:hover,
    .category.active {
      transform: translateY(-3px);

      border-color: #c9c6ff;

      box-shadow: var(--shadow-sm);
    }

    .category.active {
      background: #fbfaff;
    }

    .category-icon {
      width: 50px;
      height: 50px;

      margin: auto;

      border-radius: 14px;

      display: grid;
      place-items: center;

      background: var(--primary-soft);

      color: var(--primary-dark);

      font-size: 19px;
    }

    .category h3 {
      color: var(--ink);

      font-size: 13px;

      margin-top: 12px;
    }

    .category small {
      color: var(--muted);

      font-size: 10px;
    }


    /* =====================================================
       PRODUCTS TOOLBAR
    ===================================================== */

    .toolbar {
      display: flex;

      align-items: center;

      justify-content: space-between;

      gap: 12px;

      margin-bottom: 18px;

      padding: 12px 14px;

      background: #fff;

      border: 1px solid var(--line);

      border-radius: 14px;
    }

    .result-count {
      font-size: 12px;

      color: var(--muted);
    }

    .result-count strong {
      color: var(--ink);
    }

    .clear-filter {
      display: none;
    }

    .clear-filter.show {
      display: inline-flex;
    }


    /* =====================================================
       PRODUCTS
    ===================================================== */

    .products {
      display: grid;

      grid-template-columns: repeat(4, 1fr);

      gap: 18px;
    }

    .product {
      background: #fff;

      border: 1px solid var(--line);

      border-radius: 18px;

      overflow: hidden;

      transition: 0.22s;

      position: relative;
    }

    .product:hover {
      transform: translateY(-4px);

      box-shadow: var(--shadow-md);
    }

    .product-image {
      height: 225px;

      background: #f1f2f5;

      position: relative;

      overflow: hidden;
    }

    .product-image img {
      width: 100%;
      height: 100%;

      object-fit: cover;

      transition: 0.4s;
    }

    .product:hover .product-image img {
      transform: scale(1.045);
    }

    .product-badge {
      position: absolute;

      top: 12px;
      left: 12px;

      z-index: 2;

      padding: 5px 8px;

      border-radius: 7px;

      background: var(--ink);

      color: #fff;

      font-size: 9px;

      font-weight: 800;
    }

    .product-badge.sale {
      background: var(--danger);
    }

    .favorite {
      position: absolute;

      top: 10px;
      right: 10px;

      z-index: 2;

      width: 36px;
      height: 36px;

      border: 0;

      border-radius: 50%;

      background: rgba(255,255,255,0.95);

      color: #5d626b;

      display: grid;
      place-items: center;

      box-shadow:
        0 4px 12px rgba(0,0,0,0.08);
    }

    .favorite.active {
      color: var(--danger);
    }

    .product-body {
      padding: 15px;
    }

    .product-category {
      color: #9297a0;

      text-transform: uppercase;

      letter-spacing: 1px;

      font-size: 9px;

      font-weight: 800;
    }

    .product h3 {
      color: var(--ink);

      font-size: 14px;

      margin-top: 5px;

      min-height: 22px;
    }

    .rating {
      color: var(--warning);

      font-size: 11px;

      margin-top: 8px;
    }

    .rating span {
      color: var(--muted);

      margin-left: 4px;
    }

    .price-row {
      display: flex;

      align-items: center;

      justify-content: space-between;

      gap: 10px;

      margin-top: 12px;
    }

    .price {
      color: var(--ink);

      font-size: 18px;

      font-weight: 800;
    }

    .old-price {
      color: #a1a5ad;

      font-size: 11px;

      text-decoration: line-through;

      margin-left: 5px;
    }

    .add-cart {
      width: calc(100% - 30px);

      margin: 0 15px 15px;

      min-height: 41px;

      border: 0;

      border-radius: 10px;

      background: #f0f1f4;

      color: var(--ink);

      font-weight: 800;

      font-size: 12px;
    }

    .add-cart:hover {
      color: #fff;

      background: var(--primary);
    }

    .add-cart.added {
      background: var(--success);

      color: #fff;
    }


    /* EMPTY SEARCH */

    .empty {
      display: none;

      padding: 50px 20px;

      text-align: center;

      background: #fff;

      border: 1px dashed #d7d9df;

      border-radius: 18px;

      color: var(--muted);
    }

    .empty.show {
      display: block;
    }

    .empty i {
      font-size: 30px;

      color: #aaa;

      margin-bottom: 12px;
    }


    /* =====================================================
       DEAL SECTION
    ===================================================== */

    .deal {
      display: grid;

      grid-template-columns: 1fr 1fr;

      overflow: hidden;

      border-radius: 24px;

      background: var(--ink);

      color: #fff;

      box-shadow: var(--shadow-md);
    }

    .deal-image {
      min-height: 390px;

      width: 100%;
      height: 100%;

      object-fit: cover;
    }

    .deal-content {
      padding: 48px;

      display: flex;

      flex-direction: column;

      justify-content: center;
    }

    .deal-badge {
      width: max-content;

      padding: 5px 8px;

      border-radius: 6px;

      background: var(--danger);

      font-size: 9px;

      font-weight: 800;
    }

    .deal-content h2 {
      font-family: "DM Sans", sans-serif;

      font-size: 38px;

      line-height: 1.08;

      margin: 15px 0 12px;
    }

    .deal-content p {
      color: #c8cad0;

      font-size: 14px;

      line-height: 1.8;
    }


    /* COUNTDOWN */

    .countdown {
      display: flex;

      gap: 10px;

      margin: 24px 0;
    }

    .time-box {
      width: 58px;

      padding: 9px 5px;

      text-align: center;

      border: 1px solid rgba(255,255,255,0.12);

      border-radius: 10px;

      background: rgba(255,255,255,0.06);
    }

    .time-box strong {
      display: block;

      font-size: 19px;
    }

    .time-box span {
      display: block;

      color: #9ea2aa;

      font-size: 8px;

      text-transform: uppercase;
    }


    /* =====================================================
       REVIEWS
    ===================================================== */

    .reviews {
      display: grid;

      grid-template-columns: repeat(3, 1fr);

      gap: 16px;
    }

    .review {
      background: #fff;

      border: 1px solid var(--line);

      border-radius: 17px;

      padding: 22px;
    }

    .review-stars {
      color: var(--warning);

      font-size: 12px;
    }

    .review p {
      margin-top: 12px;

      color: #555b64;

      font-size: 13px;

      line-height: 1.8;
    }

    .review-user {
      display: flex;

      align-items: center;

      gap: 10px;

      margin-top: 18px;
    }

    .avatar {
      width: 36px;
      height: 36px;

      border-radius: 50%;

      display: grid;
      place-items: center;

      background: var(--primary-soft);

      color: var(--primary-dark);

      font-weight: 800;
    }

    .review-user strong {
      display: block;

      color: var(--ink);

      font-size: 12px;
    }

    .review-user span {
      color: var(--muted);

      font-size: 10px;
    }


    /* =====================================================
       NEWSLETTER
    ===================================================== */

    .newsletter {
      margin-top: 64px;

      padding: 42px;

      border-radius: 24px;

      background:
        linear-gradient(
          135deg,
          #f0efff,
          #ffffff
        );

      border: 1px solid #dddafe;

      text-align: center;
    }

    .newsletter h2 {
      font-family: "DM Sans", sans-serif;

      color: var(--ink);

      font-size: 30px;
    }

    .newsletter p {
      max-width: 550px;

      margin: 8px auto 22px;

      color: var(--muted);

      font-size: 13px;
    }

    .newsletter-form {
      max-width: 500px;

      margin: auto;

      display: flex;

      gap: 8px;
    }

    .newsletter-form input {
      flex: 1;

      height: 46px;

      border: 1px solid var(--line);

      border-radius: 11px;

      padding: 0 14px;

      outline: none;

      background: #fff;
    }

    .newsletter-form input:focus {
      border-color: var(--primary);
    }


    /* =====================================================
       FOOTER
    ===================================================== */

    footer {
      margin-top: 70px;

      padding: 45px 0 25px;

      background: var(--ink);

      color: #fff;
    }

    .footer-grid {
      display: grid;

      grid-template-columns: 2fr 1fr 1fr 1fr;

      gap: 40px;
    }

    .footer-brand p {
      max-width: 330px;

      color: #9ea2aa;

      font-size: 12px;

      line-height: 1.8;

      margin-top: 12px;
    }

    footer h4 {
      font-size: 12px;

      margin-bottom: 15px;
    }

    footer ul {
      list-style: none;
    }

    footer li {
      margin-bottom: 9px;
    }

    footer li a {
      color: #9ea2aa;

      font-size: 11px;
    }

    footer li a:hover {
      color: #fff;
    }

    .footer-bottom {
      margin-top: 35px;

      padding-top: 20px;

      border-top: 1px solid rgba(255,255,255,0.1);

      display: flex;

      justify-content: space-between;

      color: #858991;

      font-size: 10px;
    }


    /* =====================================================
       CART DRAWER
    ===================================================== */

    .overlay {
      position: fixed;

      inset: 0;

      background: rgba(0,0,0,0.45);

      opacity: 0;

      pointer-events: none;

      transition: 0.25s;

      z-index: 1999;
    }

    .overlay.show {
      opacity: 1;

      pointer-events: auto;
    }

    .cart-drawer {
      position: fixed;

      top: 0;
      right: -420px;

      width: min(92vw, 420px);

      height: 100vh;

      background: #fff;

      z-index: 2000;

      box-shadow:
        -15px 0 40px rgba(0,0,0,0.15);

      display: flex;

      flex-direction: column;

      transition: right 0.3s ease;
    }

    .cart-drawer.open {
      right: 0;
    }

    .cart-header {
      padding: 20px;

      border-bottom: 1px solid var(--line);

      display: flex;

      align-items: center;

      justify-content: space-between;
    }

    .cart-header h3 {
      font-family: "DM Sans", sans-serif;

      font-size: 20px;
    }

    .close-cart {
      width: 36px;
      height: 36px;

      border: 0;

      border-radius: 10px;

      background: var(--surface-2);
    }

    .cart-items {
      flex: 1;

      overflow-y: auto;

      padding: 20px;
    }

    .cart-item {
      display: flex;

      gap: 12px;

      padding-bottom: 15px;

      margin-bottom: 15px;

      border-bottom: 1px solid var(--line);
    }

    .cart-item img {
      width: 70px;
      height: 70px;

      border-radius: 10px;

      object-fit: cover;
    }

    .cart-item-info {
      flex: 1;
    }

    .cart-item-info strong {
      display: block;

      color: var(--ink);

      font-size: 12px;
    }

    .cart-item-info span {
      display: block;

      margin-top: 5px;

      color: var(--muted);

      font-size: 11px;
    }

    .remove-item {
      border: 0;

      background: transparent;

      color: var(--danger);

      font-size: 12px;
    }

    .cart-footer {
      padding: 20px;

      border-top: 1px solid var(--line);
    }

    .subtotal {
      display: flex;

      justify-content: space-between;

      margin-bottom: 15px;

      color: var(--ink);

      font-weight: 800;
    }

    .empty-cart {
      text-align: center;

      padding: 50px 20px;

      color: var(--muted);

      font-size: 13px;
    }

    .empty-cart i {
      display: block;

      margin-bottom: 12px;

      font-size: 35px;

      color: #bbb;
    }


    /* =====================================================
       TOAST
    ===================================================== */

    .toast {
      position: fixed;

      bottom: 25px;
      left: 50%;

      transform: translate(-50%, 80px);

      background: var(--ink);

      color: #fff;

      padding: 12px 18px;

      border-radius: 10px;

      font-size: 12px;

      opacity: 0;

      pointer-events: none;

      transition: 0.3s;

      z-index: 5000;
    }

    .toast.show {
      opacity: 1;

      transform: translate(-50%, 0);
    }


    /* =====================================================
       MOBILE NAV
    ===================================================== */

    .mobile-nav {
      display: none;

      padding: 10px 0 18px;

      border-top: 1px solid var(--line);
    }

    .mobile-nav.open {
      display: block;
    }

    .mobile-nav a {
      display: block;

      padding: 12px;

      border-radius: 10px;

      font-size: 13px;

      font-weight: 700;
    }

    .mobile-nav a:hover {
      background: var(--primary-soft);

      color: var(--primary-dark);
    }


    /* =====================================================
       RESPONSIVE
    ===================================================== */

    @media (max-width: 1050px) {

      .desktop-nav {
        display: none;
      }

      .mobile-menu-btn {
        display: grid;
      }

      .categories {
        grid-template-columns: repeat(3, 1fr);
      }

      .products {
        grid-template-columns: repeat(3, 1fr);
      }

      .search {
        width: 220px;
      }

    }


    @media (max-width: 800px) {

      .hero {
        min-height: 520px;
      }

      .hero-content {
        padding: 35px;
      }

      .products {
        grid-template-columns: repeat(2, 1fr);
      }

      .deal {
        grid-template-columns: 1fr;
      }

      .deal-image {
        min-height: 260px;
      }

      .reviews {
        grid-template-columns: 1fr;
      }

      .footer-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .header-actions .search {
        display: none;
      }

    }


    @media (max-width: 550px) {

      .nav {
        min-height: 65px;
      }

      .brand {
        font-size: 20px;
      }

      .brand-mark {
        width: 32px;
        height: 32px;
      }

      .categories {
        grid-template-columns: repeat(2, 1fr);
      }

      .products {
        grid-template-columns: 1fr;
      }

      .section {
        padding-top: 45px;
      }

      .section-head {
        align-items: flex-start;

        flex-direction: column;
      }

      .hero {
        margin-top: 15px;

        border-radius: 20px;

        min-height: 550px;
      }

      .hero-content {
        padding: 28px 22px;
      }

      .hero h1 {
        font-size: 42px;

        letter-spacing: -1.5px;
      }

      .hero p {
        font-size: 14px;
      }

      .deal-content {
        padding: 30px 24px;
      }

      .deal-content h2 {
        font-size: 31px;
      }

      .newsletter {
        padding: 30px 20px;
      }

      .newsletter-form {
        flex-direction: column;
      }

      .newsletter-form .btn {
        width: 100%;
      }

      .footer-grid {
        grid-template-columns: 1fr;
      }

      .footer-bottom {
        flex-direction: column;

        gap: 8px;
      }

    }

  </style>
</head>


<body>

  <!-- ACCESSIBILITY -->
  <a class="skip-link" href="#main">
    Skip to content
  </a>


  <!-- TOP BAR -->
  <div class="top-strip">
    Free shipping on orders over $50
    <span>•</span>
    Easy 30-day returns
  </div>


  <!-- =====================================================
       HEADER
  ====================================================== -->

  <header>

    <div class="container nav">

      <!-- LOGO -->
      <a href="#" class="brand">

        <span class="brand-mark">
          <i class="fa-solid fa-bag-shopping"></i>
        </span>

        Nexus<em>Shop</em>

      </a>


      <!-- DESKTOP NAV -->
      <nav class="desktop-nav">

        <a href="#home" class="active">
          Home
        </a>

        <a href="#categories">
          Categories
        </a>

        <a href="#products">
          Products
        </a>

        <a href="#deals">
          Deals
        </a>

        <a href="#reviews">
          Reviews
        </a>

      </nav>


      <!-- HEADER ACTIONS -->
      <div class="header-actions">

        <!-- SEARCH -->
        <div class="search">

          <i class="fa-solid fa-magnifying-glass"></i>

          <input
            type="search"
            id="searchInput"
            placeholder="Search products..."
            aria-label="Search products"
          >

          <button
            id="clearSearch"
            type="button"
            aria-label="Clear search"
          >
            <i class="fa-solid fa-xmark"></i>
          </button>

        </div>


        <!-- WISHLIST -->
        <button
          class="icon-btn"
          id="wishlistBtn"
          aria-label="Wishlist"
        >

          <i class="fa-regular fa-heart"></i>

          <span
            class="badge-count"
            id="wishlistCount"
          >
            0
          </span>

        </button>


        <!-- CART -->
        <button
          class="icon-btn"
          id="cartBtn"
          aria-label="Shopping cart"
        >

          <i class="fa-solid fa-cart-shopping"></i>

          <span
            class="badge-count"
            id="cartCount"
          >
            0
          </span>

        </button>


        <!-- MOBILE MENU -->
        <button
          class="icon-btn mobile-menu-btn"
          id="mobileMenuBtn"
          aria-label="Open menu"
        >

          <i class="fa-solid fa-bars"></i>

        </button>

      </div>

    </div>


    <!-- MOBILE NAV -->
    <div
      class="container mobile-nav"
      id="mobileNav"
    >

      <a href="#home">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Products</a>
      <a href="#deals">Deals</a>
      <a href="#reviews">Reviews</a>

    </div>

  </header>


  <!-- =====================================================
       MAIN
  ====================================================== -->

  <main id="main">


    <!-- HERO -->
    <section
      class="container hero"
      id="home"
    >

      <div class="hero-content">

        <div class="eyebrow">
          New season collection
        </div>

        <h1>
          Shop smarter.<br>
          Live better.
        </h1>

        <p>
          Discover thoughtfully selected products for your everyday life.
          From technology and fashion to home essentials, find everything
          you need in one simple place.
        </p>

        <div class="hero-actions">

          <a
            href="#products"
            class="btn btn-primary"
          >
            Shop now
            <i class="fa-solid fa-arrow-right"></i>
          </a>

          <a
            href="#categories"
            class="btn btn-outline-light"
          >
            Explore categories
          </a>

        </div>

      </div>

    </section>


    <!-- =====================================================
         CATEGORIES
    ====================================================== -->

    <section
      class="container section"
      id="categories"
    >

      <div class="section-head">

        <div>

          <h2>
            Shop by category
          </h2>

          <p>
            Find what you're looking for faster.
          </p>

        </div>

      </div>


      <div class="categories">

        <div
          class="category active"
          data-category="all"
        >

          <div class="category-icon">
            <i class="fa-solid fa-border-all"></i>
          </div>

          <h3>All products</h3>

          <small>Everything</small>

        </div>


        <div
          class="category"
          data-category="electronics"
        >

          <div class="category-icon">
            <i class="fa-solid fa-laptop"></i>
          </div>

          <h3>Electronics</h3>

          <small>Tech & gadgets</small>

        </div>


        <div
          class="category"
          data-category="fashion"
        >

          <div class="category-icon">
            <i class="fa-solid fa-shirt"></i>
          </div>

          <h3>Fashion</h3>

          <small>Style & clothing</small>

        </div>


        <div
          class="category"
          data-category="home"
        >

          <div class="category-icon">
            <i class="fa-solid fa-house"></i>
          </div>

          <h3>Home</h3>

          <small>Home essentials</small>

        </div>


        <div
          class="category"
          data-category="beauty"
        >

          <div class="category-icon">
            <i class="fa-solid fa-sparkles"></i>
          </div>

          <h3>Beauty</h3>

          <small>Care & beauty</small>

        </div>


        <div
          class="category"
          data-category="sports"
        >

          <div class="category-icon">
            <i class="fa-solid fa-dumbbell"></i>
          </div>

          <h3>Sports</h3>

          <small>Fitness & outdoor</small>

        </div>

      </div>

    </section>


    <!-- =====================================================
         PRODUCTS
    ====================================================== -->

    <section
      class="container section"
      id="products"
    >

      <div class="section-head">

        <div>

          <h2>
            Popular products
          </h2>

          <p>
            Customer favourites picked for you.
          </p>

        </div>

        <button
          class="link-btn"
          id="showAll"
        >
          View all
          <i class="fa-solid fa-arrow-right"></i>
        </button>

      </div>


      <!-- TOOLBAR -->

      <div class="toolbar">

        <div class="result-count">

          Showing
          <strong id="resultCount">
            8
          </strong>
          products

        </div>

        <button
          class="btn btn-primary clear-filter"
          id="clearFilter"
        >
          Clear filter
        </button>

      </div>


      <!-- PRODUCTS GRID -->

      <div
        class="products"
        id="productGrid"
      >


        <!-- PRODUCT 1 -->

        <article
          class="product"
          data-category="electronics"
          data-name="Wireless Headphones"
        >

          <div class="product-image">

            <span class="product-badge">
              Popular
            </span>

            <button
              class="favorite"
              aria-label="Add Wireless Headphones to wishlist"
            >
              <i class="fa-regular fa-heart"></i>
            </button>

            <img
              src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=85"
              alt="Wireless headphones"
              loading="lazy"
            >

          </div>


          <div class="product-body">

            <div class="product-category">
              Electronics
            </div>

            <h3>
              Wireless Headphones
            </h3>

            <div class="rating">
              ★★★★★
              <span>(128)</span>
            </div>

            <div class="price-row">

              <div class="price">
                $79
              </div>

            </div>

          </div>


          <button
            class="add-cart"
            data-product="Wireless Headphones"
          >
            <i class="fa-solid fa-cart-plus"></i>
            Add to cart
          </button>

        </article>


        <!-- PRODUCT 2 -->

        <article
          class="product"
          data-category="electronics"
          data-name="Smart Watch"
        >

          <div class="product-image">

            <span class="product-badge sale">
              Sale
            </span>

            <button
              class="favorite"
              aria-label="Add Smart Watch to wishlist"
            >
              <i class="fa-regular fa-heart"></i>
            </button>

            <img
              src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=800&q=85"
              alt="Smart watch"
              loading="lazy"
            >

          </div>


          <div class="product-body">

            <div class="product-category">
              Electronics
            </div>

            <h3>
              Smart Watch
            </h3>

            <div class="rating">
              ★★★★★
              <span>(94)</span>
            </div>

            <div class="price-row">

              <div class="price">
                $129
                <span class="old-price">
                  $159
                </span>
              </div>

            </div>

          </div>


          <button
            class="add-cart"
            data-product="Smart Watch"
          >
            <i class="fa-solid fa-cart-plus"></i>
            Add to cart
          </button>

        </article>


        <!-- PRODUCT 3 -->

        <article
          class="product"
          data-category="fashion"
          data-name="Classic Sneakers"
        >

          <div class="product-image">

            <button
              class="favorite"
              aria-label="Add Classic Sneakers to wishlist"
            >
              <i class="fa-regular fa-heart"></i>
            </button>

            <img
              src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85"
              alt="Classic sneakers"
              loading="lazy"
            >

          </div>


          <div class="product-body">

            <div class="product-category">
              Fashion
            </div>

            <h3>
              Classic Sneakers
            </h3>

            <div class="rating">
              ★★★★☆
              <span>(76)</span>
            </div>

            <div class="price-row">

              <div class="price">
                $89
              </div>

            </div>

          </div>


          <button
            class="add-cart"
            data-product="Classic Sneakers"
          >
            <i class="fa-solid fa-cart-plus"></i>
            Add to cart
          </button>

        </article>


        <!-- PRODUCT 4 -->

        <article
          class="product"
          data-category="home"
          data-name="Minimal Desk Lamp"
        >

          <div class="product-image">

            <span class="product-badge">
              New
            </span>

            <button
              class="favorite"
              aria-label="Add Minimal Desk Lamp to wishlist"
            >
              <i class="fa-regular fa-heart"></i>
            </button>

            <img
              src="https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=800&q=85"
              alt="Minimal desk lamp"
              loading="lazy"
            >

          </div>


          <div class="product-body">

            <div class="product-category">
              Home
            </div>

            <h3>
              Minimal Desk Lamp
            </h3>

            <div class="rating">
              ★★★★★
              <span>(51)</span>
            </div>

            <div class="price-row">

              <div class="price">
                $45
              </div>

            </div>

          </div>


          <button
            class="add-cart"
            data-product="Minimal Desk Lamp"
          >
            <i class="fa-solid fa-cart-plus"></i>
            Add to cart
          </button>

        </article>


        <!-- PRODUCT 5 -->

        <article
          class="product"
          data-category="beauty"
          data-name="Skin Care Set"
        >

          <div class="product-image">

            <button
              class="favorite"
              aria-label="Add Skin Care Set to wishlist"
            >
              <i class="fa-regular fa-heart"></i>
            </button>

            <img
              src="https://images.unsplash.com/photo-1556228578-8c89e6adf883?auto=format&fit=crop&w=800&q=85"
              alt="Skin care products"
              loading="lazy"
            >

          </div>


          <div class="product-body">

            <div class="product-category">
              Beauty
            </div>

            <h3>
              Skin Care Set
            </h3>

            <div class="rating">
              ★★★★★
              <span>(83)</span>
            </div>

            <div class="price-row">

              <div class="price">
                $59
              </div>

            </div>

          </div>


          <button
            class="add-cart"
            data-product="Skin Care Set"
          >
            <i class="fa-solid fa-cart-plus"></i>
            Add to cart
          </button>

        </article>


        <!-- PRODUCT 6 -->

        <article
          class="product"
          data-category="sports"
          data-name="Fitness Backpack"
        >

          <div class="product-image">

            <span class="product-badge">
              Popular
            </span>

            <button
              class="favorite"
              aria-label="Add Fitness Backpack to wishlist"
            >
              <i class="fa-regular fa-heart"></i>
            </button>

            <img
              src="https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=85"
              alt="Fitness backpack"
              loading="lazy"
            >

          </div>


          <div class="product-body">

            <div class="product-category">
              Sports
            </div>

            <h3>
              Fitness Backpack
            </h3>

            <div class="rating">
              ★★★★☆
              <span>(64)</span>
            </div>

            <div class="price-row">

              <div class="price">
                $69
              </div>

            </div>

          </div>


          <button
            class="add-cart"
            data-product="Fitness Backpack"
          >
            <i class="fa-solid fa-cart-plus"></i>
            Add to cart
          </button>

        </article>


        <!-- PRODUCT 7 -->

        <article
          class="product"
          data-category="fashion"
          data-name="Premium Sunglasses"
        >

          <div class="product-image">

            <span class="product-badge sale">
              -20%
            </span>

            <button
              class="favorite"
              aria-label="Add Premium Sunglasses to wishlist"
            >
              <i class="fa-regular fa-heart"></i>
            </button>

            <img
              src="https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=800&q=85"
              alt="Premium sunglasses"
              loading="lazy"
            >

          </div>


          <div class="product-body">

            <div class="product-category">
              Fashion
            </div>

            <h3>
              Premium Sunglasses
            </h3>

            <div class="rating">
              ★★★★★
              <span>(41)</span>
            </div>

            <div class="price-row">

              <div class="price">
                $64
                <span class="old-price">
                  $80
                </span>
              </div>

            </div>

          </div>


          <button
            class="add-cart"
            data-product="Premium Sunglasses"
          >
            <i class="fa-solid fa-cart-plus"></i>
            Add to cart
          </button>

        </article>


        <!-- PRODUCT 8 -->

        <article
          class="product"
          data-category="home"
          data-name="Ceramic Coffee Set"
        >

          <div class="product-image">

            <button
              class="favorite"
              aria-label="Add Ceramic Coffee Set to wishlist"
            >
              <i class="fa-regular fa-heart"></i>
            </button>

            <img
              src="https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?auto=format&fit=crop&w=800&q=85"
              alt="Ceramic coffee set"
              loading="lazy"
            >

          </div>


          <div class="product-body">

            <div class="product-category">
              Home
            </div>

            <h3>
              Ceramic Coffee Set
            </h3>

            <div class="rating">
              ★★★★★
              <span>(38)</span>
            </div>

            <div class="price-row">

              <div class="price">
                $39
              </div>

            </div>

          </div>


          <button
            class="add-cart"
            data-product="Ceramic Coffee Set"
          >
            <i class="fa-solid fa-cart-plus"></i>
            Add to cart
          </button>

        </article>

      </div>


      <!-- EMPTY SEARCH -->
      <div
        class="empty"
        id="emptyState"
      >

        <i class="fa-solid fa-box-open"></i>

        <h3>
          No products found
        </h3>

        <p>
          Try another search or choose a different category.
        </p>

      </div>

    </section>


    <!-- =====================================================
         DEAL
    ====================================================== -->

    <section
      class="container section"
      id="deals"
    >

      <div class="deal">

        <img
          class="deal-image"
          src="https://images.unsplash.com/photo-1517336714739-489689fd1ca8?auto=format&fit=crop&w=1000&q=85"
          alt="MacBook laptop"
          loading="lazy"
        >

        <div class="deal-content">

          <span class="deal-badge">
            LIMITED TIME DEAL
          </span>

          <h2>
            MacBook Air<br>
            M2
          </h2>

          <p>
            Powerful performance, beautiful design and all-day battery
            life. Grab this special offer before the countdown ends.
          </p>


          <div
            class="countdown"
            id="countdown"
          >

            <div class="time-box">
              <strong id="days">00</strong>
              <span>Days</span>
            </div>

            <div class="time-box">
              <strong id="hours">00</strong>
              <span>Hours</span>
            </div>

            <div class="time-box">
              <strong id="minutes">00</strong>
              <span>Minutes</span>
            </div>

            <div class="time-box">
              <strong id="seconds">00</strong>
              <span>Seconds</span>
            </div>

          </div>


          <button
            class="btn btn-light"
            id="dealBtn"
          >
            Shop deal
            <i class="fa-solid fa-arrow-right"></i>
          </button>

        </div>

      </div>

    </section>


    <!-- =====================================================
         REVIEWS
    ====================================================== -->

    <section
      class="container section"
      id="reviews"
    >

      <div class="section-head">

        <div>

          <h2>
            What customers say
          </h2>

          <p>
            Real feedback from our happy shoppers.
          </p>

        </div>

      </div>


      <div class="reviews">


        <article class="review">

          <div class="review-stars">
            ★★★★★
          </div>

          <p>
            "The website is really easy to use. I found what I wanted
            quickly and checkout was super simple."
          </p>

          <div class="review-user">

            <div class="avatar">
              A
            </div>

            <div>
              <strong>
                Ananya
              </strong>

              <span>
                Verified customer
              </span>
            </div>

          </div>

        </article>


        <article class="review">

          <div class="review-stars">
            ★★★★★
          </div>

          <p>
            "Great product quality and very fast delivery. The product
            descriptions were clear and helpful."
          </p>

          <div class="review-user">

            <div class="avatar">
              R
            </div>

            <div>
              <strong>
                Rahul
              </strong>

              <span>
                Verified customer
              </span>
            </div>

          </div>

        </article>


        <article class="review">

          <div class="review-stars">
            ★★★★★
          </div>

          <p>
            "I love the clean design. Everything feels simple and
            organized, especially on mobile."
          </p>

          <div class="review-user">

            <div class="avatar">
              P
            </div>

            <div>
              <strong>
                Priya
              </strong>

              <span>
                Verified customer
              </span>
            </div>

          </div>

        </article>

      </div>

    </section>


    <!-- =====================================================
         NEWSLETTER
    ====================================================== -->

    <section
      class="container newsletter"
    >

      <h2>
        Stay in the loop
      </h2>

      <p>
        Subscribe for new arrivals, exclusive offers and useful shopping
        updates.
      </p>


      <form
        class="newsletter-form"
        id="newsletterForm"
      >

        <input
          type="email"
          id="emailInput"
          placeholder="Enter your email address"
          required
        >

        <button
          class="btn btn-primary"
          type="submit"
        >
          Subscribe
        </button>

      </form>

    </section>

  </main>


  <!-- =====================================================
       FOOTER
  ====================================================== -->

  <footer>

    <div class="container">

      <div class="footer-grid">


        <div class="footer-brand">

          <a href="#" class="brand">

            <span class="brand-mark">
              <i class="fa-solid fa-bag-shopping"></i>
            </span>

            Nexus<em>Shop</em>

          </a>

          <p>
            A simple and modern online shopping experience designed
            to help you discover products you love.
          </p>

        </div>


        <div>

          <h4>
            Shop
          </h4>

          <ul>

            <li>
              <a href="#products">
                All products
              </a>
            </li>

            <li>
              <a href="#categories">
                Categories
              </a>
            </li>

            <li>
              <a href="#deals">
                Deals
              </a>
            </li>

          </ul>

        </div>


        <div>

          <h4>
            Help
          </h4>

          <ul>

            <li>
              <a href="#">
                Contact us
              </a>
            </li>

            <li>
              <a href="#">
                Shipping
              </a>
            </li>

            <li>
              <a href="#">
                Returns
              </a>
            </li>

          </ul>

        </div>


        <div>

          <h4>
            Follow us
          </h4>

          <ul>

            <li>
              <a href="#">
                Instagram
              </a>
            </li>

            <li>
              <a href="#">
                Facebook
              </a>
            </li>

            <li>
              <a href="#">
                Twitter
              </a>
            </li>

          </ul>

        </div>

      </div>


      <div class="footer-bottom">

        <span>
          © 2026 NexusShop. All rights reserved.
        </span>

        <span>
          Made with care for better shopping.
        </span>

      </div>

    </div>

  </footer>


  <!-- =====================================================
       CART OVERLAY
  ====================================================== -->

  <div
    class="overlay"
    id="overlay"
  ></div>


  <!-- =====================================================
       CART DRAWER
  ====================================================== -->

  <aside
    class="cart-drawer"
    id="cartDrawer"
    aria-label="Shopping cart"
  >

    <div class="cart-header">

      <h3>
        Your Cart
      </h3>

      <button
        class="close-cart"
        id="closeCart"
        aria-label="Close cart"
      >
        <i class="fa-solid fa-xmark"></i>
      </button>

    </div>


    <div
      class="cart-items"
      id="cartItems"
    >

      <div class="empty-cart">

        <i class="fa-solid fa-cart-shopping"></i>

        Your cart is empty.

      </div>

    </div>


    <div class="cart-footer">

      <div class="subtotal">

        <span>
          Subtotal
        </span>

        <span id="subtotal">
          $0
        </span>

      </div>

      <button
        class="btn btn-primary"
        style="width:100%;"
        id="checkoutBtn"
      >
        Proceed to checkout
      </button>

    </div>

  </aside>


  <!-- TOAST -->
  <div
    class="toast"
    id="toast"
  ></div>


  <!-- =====================================================
       JAVASCRIPT
  ====================================================== -->

  <script>

    /* =====================================================
       ELEMENTS
    ===================================================== */

    const searchInput =
      document.getElementById("searchInput");

    const clearSearch =
      document.getElementById("clearSearch");

    const productGrid =
      document.getElementById("productGrid");

    const products =
      [...document.querySelectorAll(".product")];

    const categories =
      [...document.querySelectorAll(".category")];

    const resultCount =
      document.getElementById("resultCount");

    const emptyState =
      document.getElementById("emptyState");

    const clearFilter =
      document.getElementById("clearFilter");

    const cartBtn =
      document.getElementById("cartBtn");

    const cartDrawer =
      document.getElementById("cartDrawer");

    const closeCart =
      document.getElementById("closeCart");

    const overlay =
      document.getElementById("overlay");

    const cartItems =
      document.getElementById("cartItems");

    const cartCount =
      document.getElementById("cartCount");

    const wishlistCount =
      document.getElementById("wishlistCount");

    const subtotal =
      document.getElementById("subtotal");

    const toast =
      document.getElementById("toast");

    const mobileMenuBtn =
      document.getElementById("mobileMenuBtn");

    const mobileNav =
      document.getElementById("mobileNav");


    /* =====================================================
       STATE
    ===================================================== */

    let activeCategory = "all";

    let cart = [];

    let wishlist = [];


    /* =====================================================
       TOAST MESSAGE
    ===================================================== */

    function showToast(message) {

      toast.textContent = message;

      toast.classList.add("show");

      setTimeout(() => {

        toast.classList.remove("show");

      }, 2200);
    }


    /* =====================================================
       PRODUCT FILTER
    ===================================================== */

    function filterProducts() {

      const searchTerm =
        searchInput.value
          .trim()
          .toLowerCase();


      let visibleCount = 0;


      products.forEach(product => {

        const name =
          product.dataset.name.toLowerCase();

        const category =
          product.dataset.category;


        const matchesSearch =
          name.includes(searchTerm);

        const matchesCategory =
          activeCategory === "all" ||
          category === activeCategory;


        const visible =
          matchesSearch &&
          matchesCategory;


        product.style.display =
          visible ? "" : "none";


        if (visible) {
          visibleCount++;
        }

      });


      resultCount.textContent =
        visibleCount;


      emptyState.classList.toggle(
        "show",
        visibleCount === 0
      );


      clearFilter.classList.toggle(
        "show",
        activeCategory !== "all"
      );

    }


    /* =====================================================
       SEARCH
    ===================================================== */

    searchInput.addEventListener(
      "input",
      filterProducts
    );


    clearSearch.addEventListener(
      "click",
      () => {

        searchInput.value = "";

        filterProducts();

        searchInput.focus();

      }
    );


    /* =====================================================
       CATEGORY FILTER
    ===================================================== */

    categories.forEach(category => {

      category.addEventListener(
        "click",
        () => {

          categories.forEach(item => {

            item.classList.remove("active");

          });


          category.classList.add("active");


          activeCategory =
            category.dataset.category;


          filterProducts();


          document
            .getElementById("products")
            .scrollIntoView({
              behavior: "smooth"
            });

        }
      );

    });


    /* =====================================================
       CLEAR FILTER
    ===================================================== */

    clearFilter.addEventListener(
      "click",
      () => {

        activeCategory = "all";

        categories.forEach(item => {

          item.classList.remove("active");

        });


        document
          .querySelector(
            '.category[data-category="all"]'
          )
          .classList.add("active");


        searchInput.value = "";

        filterProducts();

      }
    );


    /* =====================================================
       SHOW ALL
    ===================================================== */

    document
      .getElementById("showAll")
      .addEventListener(
        "click",
        () => {

          activeCategory = "all";

          searchInput.value = "";

          categories.forEach(item => {

            item.classList.remove("active");

          });


          document
            .querySelector(
              '.category[data-category="all"]'
            )
            .classList.add("active");


          filterProducts();

          document
            .getElementById("products")
            .scrollIntoView({
              behavior: "smooth"
            });

        }
      );


    /* =====================================================
       WISHLIST
    ===================================================== */

    document
      .querySelectorAll(".favorite")
      .forEach(button => {

        button.addEventListener(
          "click",
          () => {

            const product =
              button
                .closest(".product")
                .dataset.name;


            const isActive =
              button.classList.toggle("active");


            const icon =
              button.querySelector("i");


            if (isActive) {

              icon.classList.remove(
                "fa-regular"
              );

              icon.classList.add(
                "fa-solid"
              );


              wishlist.push(product);

              showToast(
                product +
                " added to wishlist"
              );

            } else {

              icon.classList.remove(
                "fa-solid"
              );

              icon.classList.add(
                "fa-regular"
              );


              wishlist =
                wishlist.filter(
                  item => item !== product
                );

              showToast(
                product +
                " removed from wishlist"
              );

            }


            wishlistCount.textContent =
              wishlist.length;

          }
        );

      });


    /* =====================================================
       ADD TO CART
    ===================================================== */

    document
      .querySelectorAll(".add-cart")
      .forEach(button => {

        button.addEventListener(
          "click",
          () => {

            const productCard =
              button.closest(".product");


            const productName =
              button.dataset.product;


            const image =
              productCard
                .querySelector("img")
                .src;


            const existing =
              cart.find(
                item =>
                  item.name === productName
              );


            if (existing) {

              existing.quantity++;

            } else {

              cart.push({
                name: productName,
                image: image,
                price: getProductPrice(productCard),
                quantity: 1
              });

            }


            button.classList.add("added");

            button.innerHTML =
              '<i class="fa-solid fa-check"></i> Added';


            setTimeout(() => {

              button.classList.remove("added");

              button.innerHTML =
                '<i class="fa-solid fa-cart-plus"></i> Add to cart';

            }, 1200);


            updateCart();

            showToast(
              productName +
              " added to cart"
            );

          }
        );

      });


    /* =====================================================
       GET PRODUCT PRICE
    ===================================================== */

    function getProductPrice(card) {

      const priceElement =
        card.querySelector(".price");


      const priceText =
        priceElement.textContent
          .replace("$", "")
          .replace(",", "")
          .trim();


      const price =
        parseFloat(
          priceText.split(/\s+/)[0]
        );


      return price || 0;

    }


    /* =====================================================
       UPDATE CART
    ===================================================== */

    function updateCart() {

      cartItems.innerHTML = "";


      if (cart.length === 0) {

        cartItems.innerHTML = `
          <div class="empty-cart">
            <i class="fa-solid fa-cart-shopping"></i>
            Your cart is empty.
          </div>
        `;

      } else {

        cart.forEach(
          (item, index) => {

            const cartItem =
              document.createElement("div");


            cartItem.className =
              "cart-item";


            cartItem.innerHTML = `

              <img
                src="${item.image}"
                alt="${item.name}"
              >

              <div class="cart-item-info">

                <strong>
                  ${item.name}
                </strong>

                <span>
                  $${item.price}
                  ×
                  ${item.quantity}
                </span>

                <strong style="margin-top:5px;">
                  $${item.price * item.quantity}
                </strong>

              </div>

              <button
                class="remove-item"
                data-index="${index}"
                aria-label="Remove ${item.name}"
              >
                <i class="fa-solid fa-trash"></i>
              </button>

            `;


            cartItems.appendChild(
              cartItem
            );

          }
        );

      }


      const totalQuantity =
        cart.reduce(
          (total, item) =>
            total + item.quantity,
          0
        );


      const totalPrice =
        cart.reduce(
          (total, item) =>
            total +
            item.price *
            item.quantity,
          0
        );


      cartCount.textContent =
        totalQuantity;


      subtotal.textContent =
        "$" +
        totalPrice.toFixed(2);


      document
        .querySelectorAll(".remove-item")
        .forEach(button => {

          button.addEventListener(
            "click",
            () => {

              const index =
                Number(
                  button.dataset.index
                );


              const removed =
                cart[index];


              cart.splice(index, 1);


              updateCart();


              showToast(
                removed.name +
                " removed from cart"
              );

            }
          );

        });

    }


    /* =====================================================
       OPEN CART
    ===================================================== */

    function openCart() {

      cartDrawer.classList.add(
        "open"
      );

      overlay.classList.add(
        "show"
      );

      document.body.classList.add(
        "no-scroll"
      );

    }


    /* =====================================================
       CLOSE CART
    ===================================================== */

    function closeCartDrawer() {

      cartDrawer.classList.remove(
        "open"
      );

      overlay.classList.remove(
        "show"
      );

      document.body.classList.remove(
        "no-scroll"
      );

    }


    cartBtn.addEventListener(
      "click",
      openCart
    );


    closeCart.addEventListener(
      "click",
      closeCartDrawer
    );


    overlay.addEventListener(
      "click",
      closeCartDrawer
    );


    /* =====================================================
       MOBILE MENU
    ===================================================== */

    mobileMenuBtn.addEventListener(
      "click",
      () => {

        mobileNav.classList.toggle(
          "open"
        );


        const icon =
          mobileMenuBtn.querySelector("i");


        if (
          mobileNav.classList.contains(
            "open"
          )
        ) {

          icon.classList.remove(
            "fa-bars"
          );

          icon.classList.add(
            "fa-xmark"
          );

        } else {

          icon.classList.remove(
            "fa-xmark"
          );

          icon.classList.add(
            "fa-bars"
          );

        }

      }
    );


    /* Close mobile menu after click */

    mobileNav
      .querySelectorAll("a")
      .forEach(link => {

        link.addEventListener(
          "click",
          () => {

            mobileNav.classList.remove(
              "open"
            );

            const icon =
              mobileMenuBtn.querySelector(
                "i"
              );


            icon.classList.remove(
              "fa-xmark"
            );

            icon.classList.add(
              "fa-bars"
            );

          }
        );

      });


    /* =====================================================
       NEWSLETTER
    ===================================================== */

    document
      .getElementById("newsletterForm")
      .addEventListener(
        "submit",
        event => {

          event.preventDefault();


          const email =
            document
              .getElementById("emailInput")
              .value
              .trim();


          if (!email) {

            showToast(
              "Please enter your email"
            );

            return;

          }


          showToast(
            "Thanks for subscribing!"
          );


          event.target.reset();

        }
      );


    /* =====================================================
       DEAL BUTTON
    ===================================================== */

    document
      .getElementById("dealBtn")
      .addEventListener(
        "click",
        () => {

          showToast(
            "Deal added to your shopping list!"
          );

        }
      );


    /* =====================================================
       CHECKOUT
    ===================================================== */

    document
      .getElementById("checkoutBtn")
      .addEventListener(
        "click",
        () => {

          if (cart.length === 0) {

            showToast(
              "Your cart is empty"
            );

            return;

          }


          showToast(
            "Checkout feature coming soon!"
          );

        }
      );


    /* =====================================================
       COUNTDOWN
    ===================================================== */

    const dealEnd =
      new Date(
        Date.now() +
        3 * 24 * 60 * 60 * 1000
      );


    function updateCountdown() {

      const now =
        new Date();


      const difference =
        dealEnd - now;


      if (difference <= 0) {

        document
          .getElementById("days")
          .textContent = "00";

        document
          .getElementById("hours")
          .textContent = "00";

        document
          .getElementById("minutes")
          .textContent = "00";

        document
          .getElementById("seconds")
          .textContent = "00";

        return;

      }


      const days =
        Math.floor(
          difference /
          (1000 * 60 * 60 * 24)
        );


      const hours =
        Math.floor(
          (difference /
            (1000 * 60 * 60)) %
          24
        );


      const minutes =
        Math.floor(
          (difference /
            (1000 * 60)) %
          60
        );


      const seconds =
        Math.floor(
          (difference / 1000) %
          60
        );


      document
        .getElementById("days")
        .textContent =
        String(days).padStart(2, "0");


      document
        .getElementById("hours")
        .textContent =
        String(hours).padStart(2, "0");


      document
        .getElementById("minutes")
        .textContent =
        String(minutes).padStart(2, "0");


      document
        .getElementById("seconds")
        .textContent =
        String(seconds).padStart(2, "0");

    }


    updateCountdown();

    setInterval(
      updateCountdown,
      1000
    );


    /* =====================================================
       INITIALIZE
    ===================================================== */

    filterProducts();

    updateCart();

  </script>

</body>
</html>
