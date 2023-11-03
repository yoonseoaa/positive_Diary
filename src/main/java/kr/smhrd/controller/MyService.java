package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.model.MemberDAO;
import kr.smhrd.model.MemberVO;

@WebServlet("/MyService")
public class MyService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		// DAO 메서드 사용
		MemberDAO dao = new MemberDAO();
		MemberVO mvo = dao.emailCheck(vo.getM_id());
		
		
		// 객체 바인딩 : request scope영역에 저장
		request.setAttribute("mvo", mvo);
		
		// forward 방식으로 페이지 이동
		RequestDispatcher rd = request.getRequestDispatcher("my.jsp");
		rd.forward(request, response);
		
	}

}
