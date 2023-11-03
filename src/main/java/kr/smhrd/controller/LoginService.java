package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.model.MemberDAO;
import kr.smhrd.model.MemberVO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		// 1. 파라미터 수집
			String m_id = request.getParameter("m_id");
			String m_pw = request.getParameter("m_pw");
			MemberVO vo = new MemberVO(m_id, m_pw);
			System.out.println(vo.getM_id());
			System.out.println(vo.getM_pw());
		// 2. DAO메서드 사용
			MemberDAO dao = new MemberDAO();
			MemberVO mvo = dao.login(vo);
		// 3. 로그인 성공, 실패 판단
			if(mvo == null) {
				// 실패
				
				PrintWriter writer = response.getWriter(); 
				writer.println("<script>alert('잘못 입력하셨습니다'); location.href='http://localhost:8081/Diary/main.jsp';</script>");
				
				writer.close();

			}else {
				// 성공
				System.out.println("로그인 성공");
				// 사용자의 정보를 유지 -> Session 이용
				HttpSession session = request.getSession();
				session.setAttribute("vo", mvo);
				
				// 4. main.jsp 페이지이동
				response.sendRedirect("login.jsp");
			
			}

			
			
			
	}

}
