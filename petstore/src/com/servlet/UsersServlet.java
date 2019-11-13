package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Pet;
import com.entity.Users;
import com.dao.UsersDao;
import com.dao.impl.UsersDaoImpl;

@WebServlet("/fjcusers")

public class UsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UsersDao usersdao = null;

	public UsersServlet() {
		usersdao = new UsersDaoImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		if (action.equals("queryusers")) {
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			Users results = null;
			try {
				results = usersdao.queryUsers(id, pwd);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if (results.getId() != null) {
				System.out.println("密码正确，用户接入主页"+results.getPhone());
				HttpSession session = request.getSession();
				session.setAttribute("userinfo", results);
				PrintWriter out = response.getWriter();
				if (results.getAdmin() == 0)
					out.write("0");
				else
					out.write("1");
			} else {
				System.out.println(results.getId());
				PrintWriter out = response.getWriter();
				out.write("false");
			}
		}else if(action.equals("queryphone")) {
			System.out.println("手机号验证成功接入");
			String phone=request.getParameter("phone");
			boolean isphone =false;
			PrintWriter out = response.getWriter();
			try {
				isphone=usersdao.queryPhone(phone);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(isphone)
				out.write("false");
			else
				out.write("true");
		}
		else if(action.equals("adduser")) {
			String phone=request.getParameter("phone");
			String pwd=request.getParameter("pwd");
			String name=request.getParameter("yhm");
			SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmssSS");
	        Date today = new Date();
	        String id = format.format(today);
	        System.out.println("接入UsersServlet"+id);
			String sql=null;
			
		    sql="insert into users(id,name,pwd,phone) values('"+id+"','"+name+"','"+pwd+"','"+phone+"')";
			boolean ifadd=false;
			
			try {
				if(ifadd=usersdao.addUser(sql)) {
				request.getRequestDispatcher("login.jsp").forward(request, response);
				}
				else {
				request.getRequestDispatcher("reg.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				
		}
	}

	public void init() throws ServletException {
		System.out.println("服务器启动，servlet接入完成");

	}
}
