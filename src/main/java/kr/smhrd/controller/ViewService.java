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

import kr.smhrd.model.DiaryVO;
import kr.smhrd.model.MemberVO;
import kr.smhrd.model.DiaryDAO;

@WebServlet("/ViewService")
public class ViewService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		
		DiaryDAO dao = new DiaryDAO();
		DiaryVO dvo = dao.listOne(vo.getM_id());
		
		request.setAttribute("dvo", dvo);
		
//		RequestDispatcher rd = request.getRequestDispatcher("board.jsp");
//		rd.forward(request, response);
	}

}
