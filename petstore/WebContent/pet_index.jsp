<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
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
<script
	src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Furnyish Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.useso.com/css?family=Montserrat|Raleway:400,200,300,500,600,700,800,900,100' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Aladin' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/menu_jquery.js"></script>
<script src="js/simpleCart.min.js"> </script>
  <script src="js/responsiveslides.min.js"></script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
      // Slideshow 1
      $("#slider1").responsiveSlides({
         auto: true,
		 nav: true,
		 speed: 500,
		 namespace: "callbacks",
      });
    });
  </script>

</head>
<body>
<!-- 首页获取用户登录信息 -->
    <%
    Users user=new Users();
	user = (Users)session.getAttribute("userinfo");
    %>

	<!-- 是否接收到session中的用户登录数据 -->>
	<%
	
	Users user_a=new Users();
	//没有收到数据
	if(user==null) {
		out.print("unknow user");
		user_a.setId("0000001");
		user_a.setName("unKnow");
		user_a.setPwd("null");
		user_a.setPhone("null");
		user_a.setAdmin(2);

		System.out.print("用户尚未接入"+user_a.getName());

	}
	//接收到了用户数据
	else {
		user_a=user;
		out.print("检测到用户接入:"+user_a.getName());
	}
	%>
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
					<li class="top_link">用户:<a href=""><%=user_a.getName() %></a></li>
					<li class="top_link"><a href="fjcorder?action=queryorder&user_id=<%=user_a.getId()%>">订单追踪</a></li>	
							<li class="top_link"><a href="login.jsp">还没有账户?</a></li>		
				</ul>
				
			</div>
				<div class="clearfix"> </div>
		</div>
	</div>
</div>
<div class="header_top">
	 <div class="container">
		 <div class="logo">
		 	<a href="index.html"><img src="image/pet.jpg" width="50px" height="50px"></a>			 
		 </div>
		 <br>
		 <h4>猫咪尾巴	</h4>
	
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
			 <li class="active grid"><a class="color1" href="fjcpet?action=queryallpets">喵咪尾巴</a></li>
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
    				</div>
				</li>
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
    				</div>
				</li>				
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
    				</div>
				</li>
			<!-- 导航结束位置 当前位置插入 -->				
			  </ul> 
			   <div class="search">
				 <form>
					<input type="text" value="" placeholder="Search...">
					<input type="submit" value="">
					</form>
			 </div>
			 <div class="clearfix"></div>
		 </div>
	  </div>
</div>


<!---->
<div class="new">
	 <div class="container">
		 <h3>热门宠物</h3>
		 <div class="new-products">
		 <div class="new-items">
			 <div class="item1">
				 <a href="products.html"><img src="image/cat/buou/1.jpg" class="img-responsive img-thumbnail" style="width: 500px;height: 250px" alt="img04"></a>
				 <div class="item-info">
					 <h4><a href="fjcpet?action=querypet&pet_id=1">布偶猫</a></h4>
					 <span>6000-20000元</span>
					 <a href="fjcpet?action=querypet&pet_id=1">查看</a>
				 </div>
			 </div>
		 </div>
		 		 <div class="new-items">
		 
			  	<div class="item1">
				 <a href="products.html"><img src="image/cat/duanmao/2.jpg" class="img-responsive img-thumbnail" style="width: 500px;height: 250px" alt="img04"></a>
				 <div class="item-info">
					 <h4><a href="products.html">英国短毛猫猫</a></h4>
					 <span>2200-6000元</span>
					 <a href="single.html">查看</a>
				 </div>
			 </div>
					 </div>
				 		 <div class="new-items">
		
			 <div class="item1">
				 <a href="products.html"><img src="image/dog/taidi/1.jpg" class="img-responsive img-thumbnail" style="width: 500px;height: 250px" alt="img04"></a>
				 <div class="item-info">
					 <h4><a href="products.html">泰迪</a></h4>
					 <span>1500-4000元</span>
					 <a href="single.html">查看</a>
				 </div>
			 </div>
			 					 </div>
			 				 		 <div class="new-items">
			 
			
				 
			 </div>
		
		 <div class="clearfix"></div>	
		 </div>
	 </div>		 
</div>
<!---->

				 				 
<div class="top-sellers">
	 <div class="container">
		 <h3>热度</h3>
		 <div class="seller-grids">
			 <div class="col-md-3 seller-grid">
				 <a href="products.html"><img src="image/cat/jiafei/3.jpg" class="img-responsive img-thumbnail" style="width: 250px;height: 250px" alt="img04"></a>
				 <h4><a href="products.html">加菲猫</a></h4>
				 <span>2000-5000元</span>
				 <p>纯种</p>
			 </div>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<!---->
<div class="recommendation">
	 <div class="container">
		 <div class="recmnd-head">
			 <h3>推荐</h3>
		 </div>
		 <div class="bikes-grids">			 
			 <ul id="flexiselDemo1">
				 <li>
					 <a href="products.html"><img src="images/ts1.jpg" alt=""/></a>	
					 <h4><a href="products.html">埃及猫</a></h4>	
					 <p>2000-6000元</p>
				 </li>
			
		    </ul>
			<script type="text/javascript">
			 $(window).load(function() {			
			  $("#flexiselDemo1").flexisel({
				visibleItems: 5,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover:true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: { 
					portrait: { 
						changePoint:480,
						visibleItems: 1
					}, 
					landscape: { 
						changePoint:640,
						visibleItems: 2
					},
					tablet: { 
						changePoint:768,
						visibleItems: 3
					}
				}
			});
			});
			</script>
			<script type="text/javascript" src="js/jquery.flexisel.js"></script>			 
	 </div>
	 </div>
</div>
<!---->
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

</body>
</html>
