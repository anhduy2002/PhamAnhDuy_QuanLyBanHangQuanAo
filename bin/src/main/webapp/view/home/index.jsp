<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang chủ</title>
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
<link rel="stylesheet" type="text/css" href="/css/time.css">
<script>
	var dropdownElementList = [].slice.call(document
			.querySelectorAll('.dropdown-toggle'))
	var dropdownList = dropdownElementList.map(function(dropdownToggleEl) {
		return new bootstrap.Dropdown(dropdownToggleEl)
	})
</script>


</head>

<body>
	<div class="container">
		<jsp:include page="header.jsp"/>
		<main>
			<!--Hình header-->
			<img src="/home/1.jpg" alt="" style="margin-top: 90px;"><br>&ensp;
			<!--end header-->
			<div class="heading wow lightSpeedIn pt-5" data-wow-duration="1.25s">
			<h1 style="left 20px;position: flex;">TIME</h1>
				<jsp:include page="/common/time.jsp"></jsp:include>
				</div>
			<!--Sản phẩm-->
			<div class="heading wow lightSpeedIn pt-5" data-wow-duration="1.25s"
				id="sp">
				<h1>SẢN PHẨM</h1>
				<p style="text-align: center;">Tổng số trang: ${page.totalPages}</p>
			</div>
			<div class="container wow bounceInRight" data-wow-duration="1.25s">
				<h3 class="h3">Sản phẩm tiêu biểu</h3>
				<p>Số trang hiện tại: ${page.number+1}</p>
				<ul class="nav">
					<li class="nav-item">
					    <a class="nav-link" href="/loaihang/aothun"> <img src="../images/aothunicon.jpg" alt="" style=height:70px ;"> </a>
					</li>
					<li class="nav-item">
					  <a class="nav-link" href="/loaihang/aokhoac"> <img src="../images/aokhoac.jpg" alt="" style=height:70px ;"></a>
					</li>
					<li class="nav-item">
					  <a class="nav-link" href="/loaihang/quan"><img src="../images/8.jpg" alt="" style=height:70px ;"></a>
					</li>
					<li class="nav-item">
					    <a class="nav-link" href="/loaihang/giay"><img src="../images/giayicon.jpg" alt="" style=height:70px ;"></a>
					</li>
				  </ul>
				  <p>Phân loại sản phẩn theo giá tiền</p>
				  <form action="/giatien" >
						<input type="checkbox" name="max" value="${30000.0 }">300000 VNĐ &ensp;
						<input type="checkbox" name="max" value="${50000.0 }">50000.0 VNĐ &ensp;
						<input type="checkbox" name="max" value="${80000.0 }">80000.0 VNĐ &ensp;
						<input type="checkbox" name="max" value="${100000.0 }">100000.0 VNĐ
						<br> <br>
						<button class="btn btn-primary" type="submit"> <i class="fa fa-search" aria-hidden="true"></i> Lọc</button>
				</form>
				<div class="row">
					<c:forEach var="item" items="${page.content}">
						<div class="col-md-3 col-sm-6" style="margin-top: 30px;">
							<div class="product-grid6">
								<div class="product-image6">
									<a href="/cart/chitiet/${item.id}"> <img class="pic-1"
										src="../images/${item.image}">
									</a>
								</div>
								<div class="product-content">
									<h3 class="title">${item.name}</h3>
									<div class="price">${item.price} VND</div>
								</div>
								<ul class="social">
									<li><a href="/cart/add/${item.id}" data-tip="Add to Cart"><i
											class="fa fa-shopping-cart"></i></a></li>
								</ul>
							</div>
						</div>
					</c:forEach>
				</div>

				<center style="margin-top: 40px;">
					<a class="btn btn-dark" href="/home/index?p=0">First</a> <a
						class="btn btn-dark" href="/home/index?p=${page.number-1}">Previous</a>
					<a class="btn btn-dark" href="/home/index?p=${page.number+1}">Next</a>
					<a class="btn btn-dark" href="/home/index?p=${page.totalPages-1}">Last</a>
				</center>
			</div>
			<!-- End Sản phẩm-->
		</main>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
<script>
	var dropdownElementList = [].slice.call(document
			.querySelectorAll('.dropdown-toggle'))
	var dropdownList = dropdownElementList.map(function(dropdownToggleEl) {
		return new bootstrap.Dropdown(dropdownToggleEl)
	})
</script>
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
			console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
		}
	});
	wow.init();
	document.getElementById('moar').onclick = function() {
		var section = document.createElement('section');
		section.className = 'section--purple wow fadeInDown';
		this.parentNode.insertBefore(section, this);
	};
</script>
<script>
          setInterval(() =>{
            let hours = document.getElementById("hours");
          let minutes = document.getElementById("minutes");
          let seconds = document.getElementById("seconds");
          let ampm = document.getElementById("ampm");

          let hh = document.getElementById("hh");
          let mm = document.getElementById("mm");
          let ss = document.getElementById("ss");

          let hr_dot = document.querySelector('.hr_dot');
          let min_dot = document.querySelector('.min_dot');
          let sec_dot = document.querySelector('.sec_dot');


          let h = new Date().getHours();
          let m = new Date().getMinutes();
          let s = new Date().getSeconds();
          let am = h >= 12 ? "PM" : "AM";
            //
         /*   if(h > 12){
                h = h - 12;
            }*/
            //
            h = (h < 10)? "0" + h : h;
            m = (m < 10)? "0" + m : m;
            s = (s < 10)? "0" + s : s;


          hours.innerHTML = h;
          minutes.innerHTML = m;
          seconds.innerHTML = s;
          ampm.innerHTML = am;

          //hh
          hh.style.strokeDashoffset = 440 - (440 * h) / 24;
            //mm
          mm.style.strokeDashoffset = 440 - (440 * m) / 60;
            //ss
          ss.style.strokeDashoffset = 440 - (440 * s) / 60;



          hr_dot.style.transform = `rotate(${h * 30}deg)`;
          min_dot.style.transform = `rotate(${m * 6}deg)`;
          sec_dot.style.transform = `rotate(${s * 6}deg)`;
          })

         

      </script>


</html>