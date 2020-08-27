package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.MemberDAO;
import controller.MemberDTO;

/**
 * Servlet implementation class JoinService
 */
@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		request.setCharacterEncoding("EUC-KR");
		
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		String member_gender = request.getParameter("member_gender");
		String member_tel = request.getParameter("member_tel");
		String member_addr = request.getParameter("member_addr");
		String member_car_own = request.getParameter("member_car_own");
		String member_car_model = request.getParameter("member_car_model");
		String camping_case = request.getParameter("camping_case");
		String camping_member = request.getParameter("camping_member");
		String camping_count = request.getParameter("camping_count");
		
		System.out.println(camping_count);
		System.out.println(member_gender);
		controller.MemberDTO dto = new controller.MemberDTO(member_id, member_pw, member_gender, member_tel, member_addr, member_car_own, member_car_model, camping_case, camping_member, camping_count);
		controller.MemberDAO dao = new controller.MemberDAO();
		int cnt = dao.join(dto);
		
		if(cnt > 0) {
			System.out.println("회원가입 성공");
		}else {
			System.out.println("회원가입 실패");
		}
		
		response.sendRedirect("index.jsp");
		

		
	}

}
