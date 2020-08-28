package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ReviewService
 */
@WebServlet("/ReviewService")
public class ReviewService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
request.setCharacterEncoding("EUC-KR");
		String review_number = request.getParameter("review_number");
		String review_id = request.getParameter("review_id");
		String place_name = request.getParameter("place_name");
		String review_date = request.getParameter("review_date");		
		String start_location = request.getParameter("start_location");
		String dest_location = request.getParameter("dest_location");
		String travel_time = request.getParameter("travel_time");
		String break_time = request.getParameter("break_time");
		String review_image = request.getParameter("review_image");
		String review_title = request.getParameter("review_title");
		String review_contents = request.getParameter("review_contents");
		String map_lat = request.getParameter("map_lat");
		String map_long = request.getParameter("map_long");
		String review_score = request.getParameter("review_score");
	
		
		controller.ReviewDTO dto = new controller.ReviewDTO(review_number, review_id, place_name, review_date, start_location, dest_location, travel_time, break_time, review_score, review_title, review_contents, map_lat, map_long, review_image);
		controller.ReviewDAO dao = new controller.ReviewDAO();
		int cnt = dao.write(dto);
		
		if(cnt > 0) {
			System.out.println("작성성공");
		}else {
			System.out.println("작성실패");
		}
		
		response.sendRedirect("reviews_cat.jsp");
	}

}
