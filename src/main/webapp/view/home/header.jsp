<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<header>
			<nav class="navbar navbar-expand-lg navbar-dark navbar-light"
					style="background-color: black;">
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
										placeholder="Bạn tìm gì..." aria-label="Search"
										name="keywords"> 
										<button type="submit" style="width: 150px;" class="form-control"> <i class="fa fa-search" aria-hidden="true"></i> </button>
								</form>
							</form>
							<form >
							<h5 class="nav-link" style="color: red;">
								<a href="/logout/${username}">${username}</a>
							</h5></form>
							<form class="d-flex">
								<a href="/accountuser/${username}"><img
									src="https://img.icons8.com/bubbles/2x/user.png" alt=""
									style="width: 70px; height: 70px; margin-top: 30px;"> </a>
							</form>
							<form class="d-flex">
								<a href="/cart/view"><img
									src="https://img.icons8.com/bubbles/2x/buy.png" alt=""
									style="width: 70px; height: 70px; margin-top: 30px;"> </a>
							</form>
							<form class="d-flex">
								<a href="/account/login"><img
									src="https://laodongnhatban.com.vn/images/2017/09/01/2-serv.png" alt=""
									style="width: 56px; height: 56px; margin-top: 30px;"> </a>
							</form>
						</div>
					</div>
			</nav>
		</header>