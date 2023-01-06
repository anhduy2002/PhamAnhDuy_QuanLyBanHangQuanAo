<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang chủ</title>
<style>

/*****************globals*************/
body {
  font-family: 'open sans';
  overflow-x: hidden; }

img {
  max-width: 100%; }

.preview {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }
  @media screen and (max-width: 996px) {
    .preview {
      margin-bottom: 20px; } }

.preview-pic {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.preview-thumbnail.nav-tabs {
  border: none;
  margin-top: 15px; }
  .preview-thumbnail.nav-tabs li {
    width: 18%;
    margin-right: 2.5%; }
    .preview-thumbnail.nav-tabs li img {
      max-width: 100%;
      display: block; }
    .preview-thumbnail.nav-tabs li a {
      padding: 0;
      margin: 0; }
    .preview-thumbnail.nav-tabs li:last-of-type {
      margin-right: 0; }

.tab-content {
  overflow: hidden; }
  .tab-content img {
    width: 100%;
    -webkit-animation-name: opacity;
            animation-name: opacity;
    -webkit-animation-duration: .3s;
            animation-duration: .3s; }

.card {
  margin-top: 50px;
  background: #eee;
  padding: 3em;
  line-height: 1.5em; }

@media screen and (min-width: 997px) {
  .wrapper {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex; } }

.details {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }

.colors {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.product-title, .price, .sizes, .colors {
  text-transform: UPPERCASE;
  font-weight: bold; }

.checked, .price span {
  color: #ff9f1a; }

.product-title, .rating, .product-description, .price, .vote, .sizes {
  margin-bottom: 15px; }

.product-title {
  margin-top: 0; }

.size {
  margin-right: 10px; }
  .size:first-of-type {
    margin-left: 40px; }

.color {
  display: inline-block;
  vertical-align: middle;
  margin-right: 10px;
  height: 2em;
  width: 2em;
  border-radius: 2px; }
  .color:first-of-type {
    margin-left: 20px; }

.add-to-cart, .like {
  background: #ff9f1a;
  padding: 1.2em 1.5em;
  border: none;
  text-transform: UPPERCASE;
  font-weight: bold;
  color: #fff;
  -webkit-transition: background .3s ease;
          transition: background .3s ease; }
  .add-to-cart:hover, .like:hover {
    background: #b36800;
    color: #fff; }

.not-available {
  text-align: center;
  line-height: 2em; }
  .not-available:before {
    font-family: fontawesome;
    content: "\f00d";
    color: #fff; }

.orange {
  background: #ff9f1a; }

.green {
  background: #85ad00; }

.blue {
  background: #0076ad; }

.tooltip-inner {
  padding: 1.3em; }

@-webkit-keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

@keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

/*# sourceMappingURL=style.css.map */
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
	integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
	crossorigin="anonymous"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="../css/style.css">
<script>
	var dropdownElementList = [].slice.call(document
			.querySelectorAll('.dropdown-toggle'))
	var dropdownList = dropdownElementList.map(function(dropdownToggleEl) {
		return new bootstrap.Dropdown(dropdownToggleEl)
	})
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>eCommerce Product Detail</title>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700"
	rel="stylesheet">
</head>
<body>
		<header>
				<nav class="navbar navbar-expand-lg navbar-dark navbar-light"
					style="background-color: black; height: 140px">
					<div class="container-fluid">
						<a class="navbar-brand " href="/home/index">FPT POLYTECHNIC</a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarScroll"
							aria-controls="navbarScroll" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarScroll">
							<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
								style="-bs-scroll-height: 100px;">
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">Home</a></li>
								<li class="nav-item"><a class="nav-link" href="#sp">Sản
										phẩm</a></li>
								<li class="nav-item"><a class="nav-link" href="#tt"
									tabindex="-1" aria-disabled="true">Tin tức</a></li>
								<li class="nav-item"><a class="nav-link" href="#dc"
									tabindex="-1" aria-disabled="true">Địa chỉ</a></li>
								<li class="nav-item"><a class="nav-link"
									href="/mailer/mailer" tabindex="-1" aria-disabled="true">Liên
										hệ</a></li>
							</ul>
							<form class="d-flex">
								<form action="/home/index">
									<input class="form-control me-2" type="search"
										placeholder=" Search" aria-label="Search"
										name="keywords"> 
										<button type="submit" style="width: 150px;" class="form-control"> <i class="fa fa-search" aria-hidden="true"></i> </button>
								</form>
							</form>
							<h5 class="nav-link" style="color: red;">
								<a href="/logout/${username}">${username}</a>
							</h5>
							<form class="d-flex">
								<a href="/accountuser/${username}"><img
									src="https://img.icons8.com/bubbles/2x/user.png" alt=""
									style="width: 70px; height: 70px; margin-top: 5px;"> </a>
							</form>


							<form class="d-flex">
								<a href="/cart/view"><img
									src="https://img.icons8.com/bubbles/2x/buy.png" alt=""
									style="width: 70px; height: 70px; margin-top: 5px;"> </a>
							</form>
							<form class="d-flex">
								<a href="/account/login"><img
									src="https://laodongnhatban.com.vn/images/2017/09/01/2-serv.png" alt=""
									style="width: 60px; height: 60px; margin-top: 4px;"> </a>
							</form>
						</div>
					</div>
			</nav>

		</header>
		<main>
			<c:forEach var="item" items="${items}">
				<form action="/cart/add/${item.id}">
					<div class="card pt-4">
						<div class="container-fliud">
							<div class="wrapper row">
								<div class="preview col-md-6">
									<div class="preview-pic tab-content">
										<div class="tab-pane active" id="pic-1">
											<img style="position: relative;max-height: 800px;max-width: 550px;left: 5cm;margin-top:-25px"
												src="/images/${item.image}" />
										</div>
									</div>
								</div>
								<div class="details col-md-6">
									<h3 class="product-title">${item.name}</h3>
									<div class="rating">
										<div class="stars">
											<span class="fa fa-star checked"></span> <span
												class="fa fa-star checked"></span> <span
												class="fa fa-star checked"></span> <span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
										</div>
										<span class="review-no">41 reviews</span>
									</div>
									<p class="product-description">${item.describe }</p>
									<h4 class="price">
										current price: <span>${item.price} VNĐ</span>
									</h4>
									<p class="vote">
										<strong>91%</strong> of buyers enjoyed this product! <strong>(87
											votes)</strong>
									</p>
									<h5 class="sizes">
										sizes: <span class="size" data-toggle="tooltip" title="small">s</span>
										<span class="size" data-toggle="tooltip" title="medium">m</span>
										<span class="size" data-toggle="tooltip" title="large">l</span>
										<span class="size" data-toggle="tooltip" title="xtra large">xl</span>
									</h5>
									<h5 class="colors">
										colors: <span class="color orange not-available"
											data-toggle="tooltip" title="Not In store"></span> <span
											class="color green"></span> <span class="color blue"></span>
									</h5>
									<div class="action">
										<button class="btn btn-primary" type="submit"> <i class="fa fa-cart-arrow-down" aria-hidden="true"></i> add
											to cart</button>
										<button class="like btn btn-default" type="button">
											<span class="fa fa-heart"></span>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</c:forEach>
		</main>
		<jsp:include page="footer.jsp"/>
	<script>
		var header = document.getElementById('header');
		var mobileMenu = document.getElementById('mobile-menu');
		var headerHeight = header.clientHeight;
		//  đsong mở mobile menu
		mobileMenu.onclick = function() {
			var isClosed = header.clientHeight === headerHeight;
			if (isClosed) {
				header.style.height = 'auto';
			} else {
				header.style.height = null;
			}
		}
		// tự động đóng khi chọn menu
		var menuItems = document.querySelectorAll('#nav li a[href*="#"]');
		for (var i = 0; i < menuItems.length; i++) {
			var menuItem = menuItems[i];
			menuItem.onclick = function(event) {

				var isParentMenu = this.nextElementSibling
						&& this.nextElementSibling.classList.contains('subnav');
				if (isParentMenu) {
					event.preventDefault();
				} else {
					header.style.height = null;

				}

			}
		}
	</script>
	<script>
		wow = new WOW({
			animateClass : 'animated',
			offset : 100,
			callback : function(box) {
				console.log("WOW: animating <" + box.tagName.toLowerCase()
						+ ">")
			}
		});
		wow.init();
		document.getElementById('moar').onclick = function() {
			var section = document.createElement('section');
			section.className = 'section--purple wow fadeInDown';
			this.parentNode.insertBefore(section, this);
		};
	</script>
</body>
</html>
