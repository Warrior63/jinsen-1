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
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
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
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />

  
</head>
<body>
</head>
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
<!--header//-->
	<!-- list all pet  -->
	<%
		//servlet
		List<Pet> pets=new ArrayList<Pet>();
		pets = (ArrayList<Pet>)session.getAttribute("allpets");
		request.setAttribute("petlist", pets);
	    
	%> 	
<!--header//-->
<div class="product-model">	 
	 <div class="container">
			<ol class="breadcrumb">
		  <li><a href="index.html">匿名用户</a></li>
		  <li class="active">宠物</li>
		 </ol>
			<h2>宠物</h2>			
		 <div class="col-md-9 product-model-sec">
					 <a href="fjcpet?action=querypet&pet_id=${pl.pet_id}"><div class="product-grid love-grid">
						<div class="more-product"><span> </span></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
							<img src="image/123.gif" class="img-responsive" alt=""/>
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button class="btns"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Quick View</button>
							</h4>
							</div>
						</div></a>						
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>喵咪尾巴	</h4>
								<p>共:<%=pets.size() %>种类型的喵咪</p>
								<span class="item_price">快来购买吧</span>								

							</div>													
							<div class="clearfix"> </div>
						</div>
					</div>	
					<!-- 未知标签错误，请勿修复 -->
					<c:forEach items="${petlist}" var="pl">
					 <a href="fjcpet?action=querypet&pet_id=${pl.pet_id}">
					 <div class="product-grid love-grid">
						<div class="more-product"><span> </span></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
							<img src="${pl.pic}"  alt="" height="230px" >
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button class="btns"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>查看更多</button>
							</h4>
							</div>
						</div></a>					
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust">
								<h4>${pl.pet_kind}</h4>
								<p>数量: ${pl.number}</p>
								<span class="item_price">¥:${pl.price}<br>${pl.pic} </span>
								<form action="fjcpet?action=querypet&pet_id=${pl.pet_id}" method="post">
								<input type="submit" class="item_add items" value="详情">	
								</form>
							</div>										
							<div class="clearfix"> </div>
						</div>
					</div>
					</c:forEach>
				
			</div>
			<!-- 未知标签错误，请勿修复 -->
			<div class="rsidebar span_1_of_left">
				 <section  class="sky-form">
					 <div class="product_right">
						 <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categories</h4>
						 <div class="tab1">
							 <ul class="place">								
								 <li class="sort">Furniture</li>
								 <li class="by"><img src="images/do.png" alt=""></li>
									<div class="clearfix"> </div>
							  </ul>
							 <div class="single-bottom">						
									<a href="#"><p>Sofas</p></a>
									<a href="#"><p>Fabric Sofas</p></a>
									<a href="#"><p>Love Seats</p></a>
									<a href="#"><p>Dinning Sets</p></a>
						     </div>
					      </div>						  
						  <div class="tab2">
							 <ul class="place">								
								 <li class="sort">Decor</li>
								 <li class="by"><img src="images/do.png" alt=""></li>
									<div class="clearfix"> </div>
							  </ul>
							 <div class="single-bottom">						
									<a href="#"><p>Shelves</p></a>
									<a href="#"><p>Wall Racks</p></a>
									<a href="#"><p>Curios</p></a>
									<a href="#"><p>Ash Trays</p></a>
						     </div>
					      </div>
						  <div class="tab3">
							 <ul class="place">								
								 <li class="sort">Lighting</li>
								 <li class="by"><img src="images/do.png" alt=""></li>
									<div class="clearfix"> </div>
							  </ul>
							 <div class="single-bottom">						
									<a href="#"><p>Table Lamps</p></a>
									<a href="#"><p>Tube Lights</p></a>
									<a href="#"><p>Study Lamps</p></a>
									<a href="#"><p>Usb Lamps</p></a>
						     </div>
					      </div>
						  <div class="tab4">
							 <ul class="place">								
								 <li class="sort">Bed & Bath</li>
								 <li class="by"><img src="images/do.png" alt=""></li>
									<div class="clearfix"> </div>
							  </ul>
							 <div class="single-bottom">						
									<a href="#"><p>Towels</p></a>
									<a href="#"><p>Bath Roles</p></a>
									<a href="#"><p>Mirrors</p></a>
									<a href="#"><p>Soap Stands</p></a>
						     </div>
					      </div>
					      <!-- 未知标签错误，请勿修复 -->
						  <div class="tab5">
							 <ul class="place">								
								 <li class="sort">Fabric</li>
								 <li class="by"><img src="images/do.png" alt=""></li>
									<div class="clearfix"> </div>
							  </ul>
							 <div class="single-bottom">						
									<a href="#"><p>Sofas</p></a>
									<a href="#"><p>Fabric Sofas</p></a>
									<a href="#"><p>Beds</p></a>
									<a href="#"><p>Relax Chairs</p></a>
						     </div>
					      </div>
						  <!-- 未知标签错误，请勿修复 -->
						  <!--script-->
						<script>
							$(document).ready(function(){
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();
								
								$(".tab1 ul").click(function(){
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab2 ul").click(function(){
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab3 ul").click(function(){
									$(".tab3 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function(){
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
								$(".tab5 ul").click(function(){
									$(".tab5 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
							});
						</script>
						<!-- script -->					 
				 </section>
				 <section  class="sky-form">
					 <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>DISCOUNTS</h4>
					 <div class="row row1 scroll-pane">
						 <div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Upto - 10% (20)</label>
						 </div>
						 <div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>40% - 50% (5)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (7)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (2)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other(50)</label>
						 </div>
					 </div>
				 </section> 				 				 
				   <section  class="sky-form">
						<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Price</h4>
							<ul class="dropdown-menu1">
								 <li><a href="">								               
								<div id="slider-range"></div>							
								<input type="text" id="amount" style="border: 0; font-weight: NORMAL;   font-family: 'Arimo', sans-serif;" />
							 </a></li>			
						  </ul>
				   </section>


</body>
</html>