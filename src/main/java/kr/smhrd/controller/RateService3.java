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

@WebServlet("/RateService3")
public class RateService3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.addHeader("Access-Control-Allow-Origin", "*");
		request.setCharacterEncoding("utf-8");	
		
		HttpSession session = request.getSession();
		
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		
		String s3_rate = request.getParameter("s3_rate");
		
		DiaryVO dvo = new DiaryVO(null, null, null, null, null, null, null, null, null, s3_rate, vo.getM_id());
		
		DiaryDAO dao = new DiaryDAO();
		
		int cnt = dao.s3_rate(dvo);
		
		response.sendRedirect("login.jsp");
	}

}
