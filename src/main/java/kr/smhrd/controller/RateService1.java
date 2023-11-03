package kr.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.model.DiaryDAO;
import kr.smhrd.model.DiaryVO;
import kr.smhrd.model.MemberVO;

@WebServlet("/RateService1")
public class RateService1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.addHeader("Access-Control-Allow-Origin", "*");
		request.setCharacterEncoding("utf-8");	
		
		HttpSession session = request.getSession();
		
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		
		String s1_rate = request.getParameter("s1_rate");
		
		DiaryVO dvo = new DiaryVO(null, null, null, null, null, null, null, s1_rate, null, null, vo.getM_id());
		
		DiaryDAO dao = new DiaryDAO();
		
		int cnt = dao.s1_rate(dvo);
		
		response.sendRedirect("change2.jsp");
	
	
	}

}
