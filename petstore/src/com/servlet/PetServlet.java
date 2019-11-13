package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Pet;
import com.dao.PetDao;
import com.dao.impl.PetDaoImpl;



@WebServlet(name="fjcpet",urlPatterns="/fjcpet")

public class PetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PetDao petdao =null;
    public PetServlet() {
        petdao=new PetDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action=request.getParameter("action");
		//显示某一只宠物购买界面
		if(action.equals("querypet")){
	    System.out.println("接入PetServlet_querypet");
		int pet_id=Integer.parseInt(request.getParameter("pet_id"));
		Pet results=null;
		try {
			results = petdao.getOnepet(pet_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		HttpSession session=request.getSession();
		session.setAttribute("onepet", results);
		request.getRequestDispatcher("pet_info.jsp").forward(request, response);	
	}   //显示所有宠物的信息
		else if(action.equals("queryallpets")) {
			List<Pet> results=null;
			try {
				results = petdao.getAllpets();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			HttpSession session=request.getSession();
			session.setAttribute("allpets", results);
			request.getRequestDispatcher("pet_list.jsp").forward(request, response);	
	} //修改宠物的数量，数量-1
		else if(action.equals("updatePetNumber")) {
			int pet_id=Integer.parseInt(request.getParameter("pet_id"));
	        System.out.println("接入PetServlet_updatePetNumber");
			String sql=null;
		    sql="update pet set number=(number-1) where pet_id="+pet_id+"";
			boolean ifupd=false;
			try {
				if(ifupd=petdao.updatePets(sql)) {
			    System.out.println("number发生变化");
				request.getRequestDispatcher("fjcpet?action=querypet&pet_id="+pet_id+"").forward(request, response);
				}
				else {
			     System.out.println("number未发生变化");
				request.getRequestDispatcher("fjcpet?action=querypet&pet_id="+pet_id+"").forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				
		}
	}
	
	public void init() throws ServletException {		
		System.out.println("PetServlet成功接入");
		

	}
}


