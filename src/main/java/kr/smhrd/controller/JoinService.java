package kr.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.model.MemberDAO;
import kr.smhrd.model.MemberVO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		
		String m_id = request.getParameter("m_id");
		String m_pw = request.getParameter("m_pw");
		String b_date = request.getParameter("b_date");
		String tel = request.getParameter("tel");
		String c_nick = request.getParameter("c_nick");
		
		MemberVO vo = new MemberVO(m_id, m_pw, b_date, tel, c_nick, null, null, null);
		System.out.println(vo.getC_nick());
		
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.join(vo);
		System.out.println(cnt);
		
		if(cnt > 0) {
//			HttpSession session = request.getSession();
//			session.setAttribute("vo", vo);
			response.sendRedirect("main.jsp");
		}else {
			response.sendRedirect("join.jsp");
			
		}
		
		
		
		

	
	
	}

}
