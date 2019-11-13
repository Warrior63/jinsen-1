<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.dao.PetDao"%>
<%@ page import="com.dao.impl.PetDaoImpl"%>

<%@ page import="com.entity.Users"%>
<%@ page import="com.entity.Pet"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Furnyish Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link
	href='http://fonts.useso.com/css?family=Montserrat|Raleway:400,200,300,500,600,700,800,900,100'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.useso.com/css?family=Playfair+Display:400,700,900'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Aladin' rel='stylesheet'
	type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<script src="js/menu_jquery.js"></script>
<script src="js/simpleCart.min.js">
	
</script>
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<!--etalage-->
<link rel="stylesheet" href="css/etalage.css">
<script src="js/jquery.etalage.min.js"></script>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script>
	jQuery(document)
			.ready(
					function($) {

						$('#etalage')
								.etalage(
										{
											thumb_image_width : 300,
											thumb_image_height : 400,
											source_image_width : 900,
											source_image_height : 1200,
											show_hint : true,
											click_callback : function(
													image_anchor, instance_id) {
												alert('Callback example:\nYou clicked on an image with the anchor: "'
														+ image_anchor
														+ '"\n(in Etalage instance: "'
														+ instance_id + '")');
											}
										});

					});
</script>


<!-- //etalage-->

</head>
<script type="text/javascript">
	function addOrder() {
		var order_name = $("#order_name").val();
		var address = $("#address").val();
		var phone = $("#phone").val();
		var price = $("#price").val();
		var pet_id = $("#pet_id").val();
		var user_id = $("#user_id").val();

		$.post("fjcorder", {
			"order_name" : order_name,
			"address" : address,
			"phone" : phone,
			"price" : price,
			"pet_id" : pet_id,
			"user_id" : user_id,
			"action" : "addorder"
		}, function(data) {
			if (data == "true") {
				alert("支付成功，等待商家同意订单");
				window.location.href = 'fjcpet?action=updatePetNumber&pet_id='+pet_id;
			} else
				alert("支付失败");
			window.location.href = 'fjcpet?action=querypet&pet_id='+pet_id;

		});
	}
</script>
<body>

	<!-- header -->
	<div class="top_bg">
		<div class="container">
			<div class="header_top-sec">
				<div class="top_right">
					<ul>
						<li><a href="#">首页</a></li>
						<li><a href="contact.html">Contact</a></li>
						<li><a href="login.html">Track Order</a></li>
					</ul>
				</div>
				<div class="top_left">
					<ul>
						<li class="top_link">用户:<a href="">匿名用户</a></li>
						<li class="top_link"><a href="login.jsp">订单追踪</a></li>
						<li class="top_link"><a href="reg.jsp">还没有账户?</a></li>
					</ul>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="header_top">
		<div class="container">
			<div class="logo">
				<a href="index.html"><img src="image/pet.jpg" width="50px"
					height="50px"></a>
			</div>
			<br>
			<h4>猫咪尾巴</h4>

			<div class="clearfix"></div>
		</div>
	</div>
	<!--cart-->

	<!------>
	<div class="mega_nav">
		<div class="container">
			<div class="menu_sec">
				<!-- start header menu -->
				<ul class="megamenu skyblue">
					<li class="active grid"><a class="color1" href="pet_index.jsp">喵咪尾巴</a></li>
					<li class="grid"><a class="color2" href="detile">看喵咪</a>
						<div class="megapanel">
							<div class="row">
								<div class="col1">
									<div class="h_nav">
										<h4>品种</h4>
										<ul>
											<li><a href="products.html">英国短毛猫</a></li>
											<li><a href="products.html">布偶猫</a></li>
											<li><a href="products.html">加菲猫</a></li>
											<li><a href="products.html">暹罗猫</a></li>
											<li><a href="products.html">波斯猫</a></li>
											<li><a href="products.html">苏格兰折耳猫</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>价格</h4>
										<ul>
											<li><a href="products.html">0-500</a></li>
											<li><a href="products.html">500-700</a></li>
											<li><a href="products.html">700-1300</a></li>
											<li><a href="products.html">1300-2100</a></li>
											<li><a href="products.html">2100-4200</a></li>
											<li><a href="products.html">4200以上</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>性别</h4>
										<ul>
											<li><a href="products.html">雄</a></li>
											<li><a href="products.html">雌</a></li>
											<li><a href="products.html">其他</a></li>

										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>是否绝育</h4>
										<ul>
											<li><a href="products.html">绝育</a></li>
											<li><a href="products.html">未绝育</a></li>

										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>是否纯种</h4>
										<ul>
											<li><a href="products.html">纯种</a></li>
											<li><a href="products.html">非纯种</a></li>

										</ul>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col2"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
							</div>
						</div></li>
					<li><a class="color4" href="#">看狗狗</a>
						<div class="megapanel">
							<div class="row">
								<div class="col1">
									<div class="h_nav">
										<h4>品种</h4>
										<ul>
											<li><a href="products.html">All Sofas</a></li>
											<li><a href="products.html">Fabric Sofas</a></li>
											<li><a href="products.html">Leather Sofas</a></li>
											<li><a href="products.html">L-shaped Sofas</a></li>
											<li><a href="products.html">Love Seats</a></li>
											<li><a href="products.html">Wooden Sofas</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>价格</h4>
										<ul>
											<li><a href="products.html">0-500</a></li>
											<li><a href="products.html">500-700</a></li>
											<li><a href="products.html">700-1300</a></li>
											<li><a href="products.html">1300-2100</a></li>
											<li><a href="products.html">2100-4200</a></li>
											<li><a href="products.html">4200以上</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>性别</h4>
										<ul>
											<li><a href="products.html">雄</a></li>
											<li><a href="products.html">雌</a></li>
											<li><a href="products.html">其他</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>是否绝育</h4>
										<ul>
											<li><a href="products.html">绝育</a></li>
											<li><a href="products.html">未绝育</a></li>

										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>是否纯种</h4>
										<ul>
											<li><a href="products.html">纯种</a></li>
											<li><a href="products.html">非纯种</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col2"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
							</div>
						</div></li>
					<li><a class="color5" href="#">喵咪大百科</a>
						<div class="megapanel">
							<div class="row">
								<div class="col1">
									<div class="h_nav">
										<h4>Sofas</h4>
										<ul>
											<li><a href="products.html">All Sofas</a></li>
											<li><a href="products.html">Fabric Sofas</a></li>
											<li><a href="products.html">Leather Sofas</a></li>
											<li><a href="products.html">L-shaped Sofas</a></li>
											<li><a href="products.html">Love Seats</a></li>
											<li><a href="products.html">Wooden Sofas</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>Tables</h4>
										<ul>
											<li><a href="products.html">Coffee Tables</a></li>
											<li><a href="products.html">Dinning Tables</a></li>
											<li><a href="products.html">Study Tables</a></li>
											<li><a href="products.html">Wooden Tables</a></li>
											<li><a href="products.html">Study Tables</a></li>
											<li><a href="products.html">Bar & Unit Stools</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>Beds</h4>
										<ul>
											<li><a href="products.html">Single Bed</a></li>
											<li><a href="products.html">Poster Bed</a></li>
											<li><a href="products.html">Sofa Cum Bed</a></li>
											<li><a href="products.html">Bunk Bed</a></li>
											<li><a href="products.html">King Size Bed</a></li>
											<li><a href="products.html">Metal Bed</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>Seating</h4>
										<ul>
											<li><a href="products.html">Wing Chair</a></li>
											<li><a href="products.html">Accent Chair</a></li>
											<li><a href="products.html">Arm Chair</a></li>
											<li><a href="products.html">Mettal Chair</a></li>
											<li><a href="products.html">Folding Chair</a></li>
											<li><a href="products.html">Bean Bags</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>Solid Woods</h4>
										<ul>
											<li><a href="products.html">Side Tables</a></li>
											<li><a href="products.html">T.v Units</a></li>
											<li><a href="products.html">Dressing Tables</a></li>
											<li><a href="products.html">Wardrobes</a></li>
											<li><a href="products.html">Shoe Racks</a></li>
											<li><a href="products.html">Console Tables</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col2"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
								<div class="col1"></div>
							</div>
						</div></li>
					<!-- 导航结束位置 当前位置插入 -->
				</ul>
				<div class="search">
					<form>
						<input type="text" value="" placeholder="Search..."> <input
							type="submit" value="">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- 首页获取用户登录信息 -->
	<%
		Users user = new Users();
		user = (Users) session.getAttribute("userinfo");
	%>
	<!-- 是否接收到session中的用户登录数据 -->
	>
	<%
		Users user_a = new Users();
		//没有收到数据
		if (user == null) {
			out.print("unknow user");
			user_a.setId("0000001");
			user_a.setName("unKnow");
			user_a.setPwd("null");
			user_a.setPhone("null");
			user_a.setAdmin(2);

			System.out.print("用户尚未接入" + user_a.getName());

		}
		//接收到了用户数据
		else {
			user_a = user;
			out.print("检测到用户接入:" + user_a.getName());
		}
	%>
	<!--  接收session -->
	<%
		Pet pet = new Pet();
		pet = (Pet) session.getAttribute("onepet");
	%>
	<!---->
	<div class="single-sec">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index.html"><%=user_a.getName() %></a></li>
				<li class="active">宠物信息</li>
			</ol>
			<!-- start content -->
			<div class="col-md-9 det">
				<div class="single_left">
					<div class="grid images_3_of_2">
						<ul id="etalage">

							<li><img class="etalage_thumb_image"
								src="<%=pet.getPic()%>" class="img-responsive" /> <img
								class="etalage_source_image" src="<%=pet.getPic()%>"
								class="img-responsive" title="" /></li>

						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="single-right">
					<h3><%=pet.getPet_kind()%></h3>
					<div class="id">
						<h4>
							剩余数量:
							<%=pet.getNumber()%></h4>
					</div>
					<form action="" class="sky-form">
						<fieldset>
							<section>
								<div class="rating">
									<input type="radio" name="stars-rating" id="stars-rating-5">
									<label for="stars-rating-5"><i class="icon-star"></i></label> <input
										type="radio" name="stars-rating" id="stars-rating-4">
									<label for="stars-rating-4"><i class="icon-star"></i></label> <input
										type="radio" name="stars-rating" id="stars-rating-3">
									<label for="stars-rating-3"><i class="icon-star"></i></label> <input
										type="radio" name="stars-rating" id="stars-rating-2">
									<label for="stars-rating-2"><i class="icon-star"></i></label> <input
										type="radio" name="stars-rating" id="stars-rating-1">
									<label for="stars-rating-1"><i class="icon-star"></i></label>
									<div class="clearfix"></div>
								</div>
							</section>
						</fieldset>
					</form>
					<div class="item-list">
						<ul>
							<li>宠物所在地:<%=pet.getArea()%></li>
							<li>仅支持托运</li>
							<li>务必联系商家后下订单</li>
							<li>下订单后默认签署宠物交易协议</li>
							<li>无法支持退货服务</li>
						</ul>
					</div>
					<div class="cost">
						<div class="prdt-cost">
							<ul>
								<li>价格:</li>
								<li class="active">预估价 <%=pet.getPrice()%></li>
								<!-- 下订单弹出类似隐私框，用于输入用户的地址，并且异步刷新，使剩余数量减1，并且把按钮隐藏，变成已支付状态，点击前往订单状态查看 -->
								<li>
								<%if(pet.getNumber()!=0){ %>
								<a href="" role="button" data-toggle="modal"
									data-target="#myModal">下订单</a>
									<%} else{%>
									<a href="#" role="button">暂无,请等待商家发布</a>
									<%} %>
									
								</li>
							</ul>

						</div>

						<div class="clearfix"></div>
					</div>

					<div class="single-bottom1">
						<h6>小提示</h6>
						<p class="prod-desc"><%=pet.getDisc()%></p>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="sofaset-info">
					<h4>宠物基本信息</h4>
					<ul>
						<li>宠物类型:<%=pet.getPet_kind()%></li>
						<li>宠物年龄:<%=pet.getPet_age()%></li>
						<li>宠物性别:<%=pet.getPet_sex()%></li>
						<li>疫苗状况:<%=pet.getVaccine()%></li>
						<li>驱虫情况:<%=pet.getExpell()%></li>
						<li>是否纯种:<%=pet.getIspurebred()%></li>
						<li>所在地区:<%=pet.getArea()%></li>
					</ul>
				</div>
			</div>
			<div class="rsidebar span_1_of_left"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- -->

	<!-- -->
	<div class="footer-content">
		<div class="container">
			<div class="ftr-grids">
				<div class="col-md-3 ftr-grid">
					<h4>About Us</h4>
					<ul>
						<li><a href="#">Who We Are</a></li>
						<li><a href="contact.html">Contact Us</a></li>
						<li><a href="#">Our Sites</a></li>
						<li><a href="#">In The News</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Carrers</a></li>
					</ul>
				</div>
				<div class="col-md-3 ftr-grid">
					<h4>Customer service</h4>
					<ul>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Shipping</a></li>
						<li><a href="#">Cancellation</a></li>
						<li><a href="#">Returns</a></li>
						<li><a href="#">Bulk Orders</a></li>
						<li><a href="#">Buying Guides</a></li>
					</ul>
				</div>
				<div class="col-md-3 ftr-grid">
					<h4>Your account</h4>
					<ul>
						<li><a href="account.html">Your Account</a></li>
						<li><a href="#">Personal Information</a></li>
						<li><a href="#">Addresses</a></li>
						<li><a href="#">Discount</a></li>
						<li><a href="#">Track your order</a></li>
					</ul>
				</div>
				<div class="col-md-3 ftr-grid">
					<h4>Categories</h4>
					<ul>
						<li><a href="#">> Furinture</a></li>
						<li><a href="#">> Bean Bags</a></li>
						<li><a href="#">> Decor</a></li>
						<li><a href="#">> Kichen & Dinning</a></li>
						<li><a href="#">> Bed & Bath</a></li>
						<li><a href="#">...More</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- Modal -->

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">获取订单</h4>
				</div>
				<div class="modal-body">

					<div class="row">
						<div class="col-md-6">
							<div class="sofaset-info">
								<h4>宠物基本信息</h4>
								<ul>
									<li>宠物类型:<%=pet.getPet_kind()%></li>
									<li>宠物年龄:<%=pet.getPet_age()%></li>
									<li>宠物性别:<%=pet.getPet_sex()%></li>
									<li>疫苗状况:<%=pet.getVaccine()%></li>
									<li>驱虫情况:<%=pet.getExpell()%></li>
									<li>是否纯种:<%=pet.getIspurebred()%></li>
									<li>所在地区:<%=pet.getArea()%></li>
									<li>仅支持托运</li>
									<li>务必联系商家后下订单</li>
									<li>下订单后默认签署宠物交易协议</li>
									<li>无法支持退货服务</li>
									<li>应付金额:<%=pet.getPrice()%></li>
								</ul>
							</div>

						</div>
						<div class="col-md-6">
							<br>
							<br>
							<br> <img class="" src="<%=pet.getPic()%>" width="240px"
								height="280px" />

						</div>
					</div>
					<form action="fjcorder?action=addorder" method="post" role="form">
						<div class="form-group">
							<label for="order_name">收货人姓名</label> <input type="text"
								id="order_name" name="order_name" class="form-control"
								placeholder="收货人姓名">
						</div>
						<div class="form-group">
							<label for="address">收货人地址</label> <input type="text"
								id="address" name="address" class="form-control"
								placeholder="收货人姓名">
						</div>
						<div class="form-group">
							<label for="phone">手机号码</label> <input type="text" id="phone"
								name="phone" class="form-control" placeholder="请输入手机号码">
						</div>
						<input id="price" name="price" value=<%=pet.getPrice()%>
							type="hidden" /> <input id="pet_id" name="pet_id"
							value=<%=pet.getPet_id()%> type="hidden" /> <input id="user_id"
							name="user_id" value=<%=user_a.getId()%> type="hidden" />

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						onclick="addOrder();">支付</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>

	<!---->
	<div class="footer">
		<div class="container">
			<div class="store">
				<ul>
					<li class="active">OUR STORE LOCATOR::</li>
					<li><a href="#">Noida</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Belgium</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">China</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Thane</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Chennai</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Armenia</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Kolkata</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Malaysia</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Indonesia</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Mumbai</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Kerala</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Spain</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Northern Ireland</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Mohali</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Gurgaon</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Panchkula</a></li>
					<li><a href="#">|</a></li>
					<li><a href="#">Ambala</a></li>
				</ul>
			</div>
			<div class="copywrite">
				<p>
					Copyright © 2015 Furnyish All rights reserved | Design by <a
						href="http://w3layouts.com">W3layouts</a>
				</p>
			</div>
		</div>
	</div>
	<!---->
</body>
</html>
