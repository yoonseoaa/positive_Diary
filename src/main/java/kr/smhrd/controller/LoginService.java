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
		
		// 1. �Ķ���� ����
			String m_id = request.getParameter("m_id");
			String m_pw = request.getParameter("m_pw");
			MemberVO vo = new MemberVO(m_id, m_pw);
			System.out.println(vo.getM_id());
			System.out.println(vo.getM_pw());
		// 2. DAO�޼��� ���
			MemberDAO dao = new MemberDAO();
			MemberVO mvo = dao.login(vo);
		// 3. �α��� ����, ���� �Ǵ�
			if(mvo == null) {
				// ����
				
				PrintWriter writer = response.getWriter(); 
				writer.println("<script>alert('�߸� �Է��ϼ̽��ϴ�'); location.href='http://localhost:8081/Diary/main.jsp';</script>");
				
				writer.close();

			}else {
				// ����
				System.out.println("�α��� ����");
				// ������� ������ ���� -> Session �̿�
				HttpSession session = request.getSession();
				session.setAttribute("vo", mvo);
				
				// 4. main.jsp �������̵�
				response.sendRedirect("login.jsp");
			
			}

			
			
			
	}

}
