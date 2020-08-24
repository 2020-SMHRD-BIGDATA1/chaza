package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import controller.PlaceDAO;
import controller.PlaceDTO;
import controller.ReviewDAO;
import controller.ReviewDTO;

/**
 * Servlet implementation class SelectCity
 */
@WebServlet("/SelectCity")
public class SelectCity extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String city = request.getParameter("city");

		PlaceDAO dao = new PlaceDAO();
		ArrayList<PlaceDTO> list =  dao.selectCity(city);
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		Gson gson = new Gson();
		out.print(gson.toJson(list));
		
		
		
		
		
	}

}







