<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
   

</head>
 <script type="text/javascript">
 function loginIndex()
 {
 	var username=$("#username").val();
 	var password=$("#password").val();
 	$.post("fjcusers",{"id":username,"pwd":password,"action":"queryusers"},function(data)
 			{
 		      if(data=="false")
 		    	  alert("false");
 		      else
 		    	  {
 		    	  if(data==0)
 		    	 window.location.href='pet_index.jsp';
 		    	  else
 	 		     window.location.href='admin.jsp';
 		    	  }
 			});
 }

</script>


<body>
<form action="" class="navbar-form">
    <div class="container">
        <div class="row">
            <div class="col-md-3"  ><a href="index.html"> <img src="image\pet1.jpg"  width="50px" height="50px"  class="img-rounded img-responsive"/></a></div>


            <div class="col-md-7" align="left">


                <input style="width:500px;height:40px; border-right:none" type="text" class="form-control" placeholder="请输入搜索内容" >
                <button type="button" class="btn btn-default btn-sm" style="width:40px;height:40px; margin-left:-8px;">
                    <span class="glyphicon glyphicon-search"></span>
                </button>
            </div>

            <div class="col-md-2" align="center">
                <a href="login.html" data-toggle="tooltip" data-placement="right" title="未登录">
                    <img src="image/tim.jpg" class="img-circle" alt="Cinque Terre" width="35" height="35">
                </a><br>
                <script>$(function () { $("[data-toggle='tooltip']").tooltip('未登录'); });</script>
            </div>
        </div>
    </div>
</form>
<nav style="background: #ff868b" class="navbar navbar-expand-sm bg-danger navbar-dark">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp" style="color: #0f0f0f">首页</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: #0f0f0f">宠物选择</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: #0f0f0f">宠物资讯</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: #0f0f0f">宠物品种</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<form id="login" method="post" action="" class="navbar-form">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <h1 style="text-align:center;margin-top:-10px">
                             登录
                </h1>

                <div class="english_name" style="text-align:center">
                    Please login
                    <hr/>
                    
            </div>

            <div class="col-md-3">
                <div class="course">
                    <img src="image/den.jpg" class="img-responsive" alt=""/>
                </div>
            </div>
                <div class="col-md-3"> <img src="image/lu.jpg" class="img-responsive" alt=""/></div>
                
                
            <div class="col-md-4">
                    <div class="form-group" style="align-content: center; margin-top:50px">
                        <label>手机号:</label>
                        <input id="username"  name="username" type="text" class="form-control" placeholder="请输入手机号" style="width:400px;height:40px;" ><br>
                    </div>


                    <div class="form-group" style="align-content: center; margin-top:20px">
                        <label for="pwd">密   码:</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码" style="width:400px;height:40px;"><br>

                    </div>
                <div style="margin-top: 30px">
                    <button type="button" class="btn btn-sm "  value="登陆" onclick="loginIndex();" style="width: 150px;height: 40px;align-content: center;background: #ff868b" onclick="sendGet();">登录</button>
                    &emsp;&emsp;&emsp;<a href="reg.jsp">还没有账号?</a>
                </div>
            </div>
            
            
            
            
            <div class="col-md-2">
                </div>
            </div>


            </div></div></div>
</form>


</body>
</html>
