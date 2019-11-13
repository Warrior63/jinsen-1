<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>注册</title>
<link rel="stylesheet"
	href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>



<script type="text/javascript">
 function phoneCheck()
 {
 	var phone=$("#phone").val();
    var phoneInput = document.getElementById("phone");

 	$.post("fjcusers",{"phone":phone,"action":"queryphone"},function(data)
 			{
 	          if(data=="false"){
					$("#phoneDiv").html("手机号已被注册！");
					phoneInput.focus();
 	          }
 		      else if(data=="true"){
 		    	  if($("#phone").val()==""){
 	 		    	    $("#phoneDiv").html("请输入手机号！");
 		    	  }
 		    	  else if(isNaN(phone)==true){
 		    	    $("#phoneDiv").html("格式错误！");
 		    	  }
 		    	  else{
 	 		    	    $("#phoneDiv").html("该手机号码可以使用！");

 		    	  }
 		      }

 			});
 }

</script>
<script type="text/javascript">
      $(function(){
          $("#word").keyup(function(){
        	  system.out.print("tesy");
             var word = $(this).val();//获得文本框的值
             if (word != "") {
                $.post("${pageContext.request.contextPath}/SearchServlet",{"word":word},function(data){
                    $("#result").show().html(data);
                 });
             }else {
                 $("#result").hide();
             }
         });
     });
 </script>
<script type="text/javascript">
function check(){
	　　var phone = $("#phone").val();
		var pwd = $("#pwd").val();
		var pwdd = $("#pwdd").val();
		var yhm = $("#yhm").val();
		var yzm = $("#yzm").val();
		var xy= document.getElementById('xy');
		if(pwd!=pwdd){
			$("#pwddDiv").html("两次密码输入不同！");
		　　　　return false;
		　　}
	　　if(phone == null || phone == "" || pwd == null || pwd == "" || pwdd == null || pwdd == "" || yhm == null || yhm == ""|| yzm == null || yzm == ""){
	　　　　$("#regDiv").html("必填项不能为空！");
	　　　　return false;
	　　}
	   if(isNaN(phone)==true){
 	    $("#phoneDiv").html("请核对格式！");
	　　　　return false;

 	  }
	    <%int num1 = 0;
			int num2 = 0;
			num1 = (int) (1 + Math.random() * (10 - 1 + 1));
			num2 = (int) (1 + Math.random() * (10 - 1 + 1));%>
        
	    if(yzm!=(<%=num1 + num2%>)){
	    	$("#yzmDiv").html("验证码错误！");
		　　　　return false;	
	    }
        if(xy.checked){
        }
        else{
        	$("#regDiv").html("请同意用户协议");
        	return false;
        }
        
		return true;
　　}
</script>
</head>
<body>

         <h1>搜索一下</h1>
         <input id="word" name="word" type="text" style="width: 400px;height: 30px;" /><input type="button" value="百度一下" />
         <div id = "result" style="display:none;position:absolute;top:120px;left:400px;border: 1px solid blue; width: 400px;height: 300px;"></div>

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
            <a class="navbar-brand" href="index.jsp "style="color: #0f0f0f">首页</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: #0f0f0f">宠物选择</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"style="color: #0f0f0f">宠物资讯</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"style="color: #0f0f0f">宠物品种</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <h1 style="text-align:center;margin-top:-10px">
                    注册
                </h1>

                <div class="english_name" style="text-align:center">
                    Please register
                    <hr/>
                </div>

                <!--注册表单-->
                <div class="col-md-3">
                    <img src="image/gou.gif" class="img-responsive" alt=""/>
                </div>
                <div class="col-md-8">
                <form action="fjcusers?action=adduser" method="post"
						onsubmit="return check()">
                
                    <div class="col-md-8" >
                    <div class="form-group" style="align-content: center; margin-top:50px">
                        <label>手&nbsp;机&nbsp;号&nbsp;:</label>
                        <input type="text" class="form-control"
								id="phone" name="phone" onblur="phoneCheck();" style="width:350px;height:40px;" >
								<div id="phoneDiv" style="display: inline"></div>
                    </div>
                    </div>
                    <div class="col-md-8">
                    <div class="form-group" style="align-content: center; ">
                        <label for="pwd">密&emsp;&nbsp;&nbsp;&nbsp;码:</label>
                        <input type="password"
								class="form-control" id="pwd" name="pwd" placeholder="请输入密码" style="width:350px;height:40px;">
                        							<div id="pwdDiv" style="display: inline"></div>
                        
                    </div>
                    </div>
                    <div class="col-md-8">
                    <div class="form-group"style="align-content: center;">
                        <label for="pwd">确认密码:</label>
                        <input type="password"
								class="form-control" id="pwdd" name="pwdd" placeholder="再次输入密码" style="width:348px;height:40px;">
															<div id="pwddDiv" style="display: inline"></div>
								
                    </div>
                    </div>
                    <div class="col-md-8"style="align-content: center;">
                    <div class="form-group">
                        <label>昵&emsp;&nbsp;&nbsp;&nbsp;称:</label>
                        <input type="text"
								class="form-control" id="yhm" name="yhm" placeholder="请输入用户昵称" style="width:350px;height:40px;">
															<div id="yhmDiv" style="display: inline"></div>
								
                    </div>
                    </div>
                    <div class="col-md-8"style="align-content: center;">
                    <div class="form-group">
                        <label>验&nbsp;证&nbsp;码&nbsp;:</label>
                        <input type="text"
								class="form-control" id="yzm" name="yzm"><h1><%=num1%>+<%=num2%>=?</h1>
							<div id="yzmDiv" style="display: inline"></div>
							<br>
                    </div>
                    </div>
                    <div class="col-md-8">
                    <div class="form-check">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox">  我已同意<a href="" data-toggle="modal" data-target="#myModal" >《宠物商城用户使用协议》</a>和<a href="" data-toggle="modal" data-target="#privateModal">《宠物商店隐私政策》</a>
                     
                        </label>
                    </div>
                    </div>
                    <div class="col-md-8">
                    <button type="submit" class="btn btn btn-sm " style="width: 120px;height: 40px;align-content: center;background: #ff868b">注册</button>
                    						<div id="regDiv" style="display: inline"></div>
                    
                    </div>
                </form>
                </div>
                <div class="col-md-1">
                </div>

        </div>


    </div></div>

	<!-- 宠物商店政策模组框 -->
	<!-- 模态框 -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- 模态框头部 -->
				<div class="modal-header">
					<h4 class="modal-title">宠物商店用户使用协议</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- 模态框主体 -->
				<div class="modal-body">


					<p>本协议是用户（下称“用户”或“您”）与宠物商店之间的协议，宠物商店将按照本协议约定之内容为您提供服务。“宠物商店”是指宠物商店和/或其相关服务可能存在的运营关联单位。若您不同意本协议中所述任何条款或其后对协议条款的修改，请您不要使用宠物商店提供的相关服务。您的使用行为将视作对本协议全部条款的完全接受。请您仔细阅读本协议的全部条款与条件，尤其是协议中黑色加粗的条款。</p>
					<p>如您为未成年人的，请在法定监护人的陪同下阅读和判断是否同意本协议，特别注意未成年人条款。未成年人行使和履行本协议项下的权利和义务视为已获得监护人的认可。</p>
					<p>务内容也有所不同，本协议为宠物商店统一适用的一般性用户服务条款。针对宠物商店的某些特定产品/服务，宠物商店还将指定特定用户服务协议，以便更具体地向你阐明宠物商店的服务内容、服务规则等内容，您应在充分阅读并同意特定用户服务协议的全部内容后再使用该特定产品/服务。</p>
					<p>宠物商店上的内容是指您在宠物商店上传、传播的视频、音频或其他任何形式的内容，包括但不限于图像、文字、链接等。</p>
					<p>您在宠物商店上传或发布的作品，您保证对其享有合法的著作权或相应授权，宠物商店有权展示、散布及推广前述内容。</p>
					<br>
					<p>用户在使用宠物商店服务的过程中，应遵守以下法律法规：</p>
					<p>《中华人民共和国保守国家秘密法》</p>
					<p>《中华人民共和国著作权法》</p>
					<p>《中华人民共和国计算机信息系统安全保护条例》</p>
					<p>其他有关计算机及互联网规定的法律、法规。</p>


				</div>

				<!-- 模态框底部 -->
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 模组框结束-->

	<!-- 隐私政策模组框 -->
	<!-- 模态框 -->
	<div class="modal fade" id="privateModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- 模态框头部 -->
				<div class="modal-header">
					<h4 class="modal-title">哔哩哔哩隐私政策</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- 模态框主体 -->
				<div class="modal-body">模态框内容..</div>

				<!-- 模态框底部 -->
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 模组框结束-->
<!--footer-->
<footer>
    <div class="container" style="margin-top: 120px">
        <div class="row">
            <div class="col-md-12">
                <p class=" text-center">

                    Copyright&nbsp;©&nbspFuJian University of Technology&nbsp;&nbsp;www.fjut.edu.cn&nbsp;&nbsp;闽ICP备10022194号-1

                </p>
            </div>
        </div>
    </div>
</footer>
<!--footer-->
</body>
</html>
