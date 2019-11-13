package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Order_Pet_merge;
import com.entity.Pet;
import com.dao.OrderDao;
import com.dao.impl.OrderDaoImpl;



@WebServlet(name="fjcorder",urlPatterns="/fjcorder")

public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OrderDao orderdao =null;
    public OrderServlet() {
    	orderdao=new OrderDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action=request.getParameter("action");
		//增加一个订单
		if(action.equals("addorder")){
		int pet_id=Integer.parseInt(request.getParameter("pet_id"));
	    double price=Double.parseDouble(request.getParameter("price"));
	    String address=request.getParameter("address");
	    String order_name=request.getParameter("order_name");
	    String phone=request.getParameter("phone");
	    String user_id=request.getParameter("user_id");
	    String status="已付款，商家未确认订单";
		String sql=null;
	    sql="INSERT INTO `order`(pet_id,price,address,phone,order_time,status,user_id,order_name) VALUES("+pet_id+","+price+",'"+address+"','"+phone+"',now(),'"+status+"','"+user_id+"','"+order_name+"')";
        boolean ifadd=false;
        try {
			if(ifadd=orderdao.addOrder(sql)) {
				System.out.println("订单已生效");
				PrintWriter out = response.getWriter();
			    out.write("true");
			}
			else {
				PrintWriter out = response.getWriter();
				out.write("false");
			request.getRequestDispatcher("reg.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}//显示所有的订单信息，两表查询
		else if (action.equals("queryorder")) {
		    System.out.println("接入PetServlet_querypet");
			String user_id=request.getParameter("user_id");
			List<Order_Pet_merge> results = new ArrayList<Order_Pet_merge>();
			try {
				results = orderdao.queryOrder(user_id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			HttpSession session=request.getSession();
			session.setAttribute("allorders", results);
			request.getRequestDispatcher("order.jsp").forward(request, response);	
	}
	}
	
	public void init() throws ServletException {		
		System.out.println("OrderServlet成功接入");
		

	}
}
