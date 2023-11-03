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

@WebServlet("/RateService0")
public class RateService0 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.addHeader("Access-Control-Allow-Origin", "*");
		request.setCharacterEncoding("utf-8");	
		
		HttpSession session = request.getSession();
		
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		DiaryVO dvo1 = (DiaryVO) session.getAttribute("diary_first");
		
		String diary_rate = request.getParameter("diary_rate");
		
		DiaryVO dvo = new DiaryVO(null, null, dvo1.getDiary(), null, null, null, diary_rate, null, null, null, vo.getM_id());
		
		DiaryDAO dao = new DiaryDAO();
		
		int cnt = dao.diary_rate(dvo);
		
		session.setAttribute("diary_req", dvo);
		
		response.sendRedirect("change1.jsp");
	
	
	}

}
