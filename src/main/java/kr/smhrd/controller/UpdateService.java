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

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 0. ���ڵ�
		request.setCharacterEncoding("euc-kr");
		
		// 1. �Ķ���� ����
		String m_pw = request.getParameter("m_pw");
		String b_date = request.getParameter("b_date");
		String tel = request.getParameter("tel");
		String c_nick = request.getParameter("c_nick");
		
		// ���ǿ��� �̸��� ��������
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		String m_id = vo.getM_id();
		
		MemberVO uvo = new MemberVO(m_id, m_pw, b_date, tel, c_nick, null, null, null);
		
		// 2. DAO �޼��� ���
		MemberDAO dao = new MemberDAO();
		int cnt = dao.update(uvo);

		// 3. ���� ����
		if(cnt > 0) {
			System.out.println("�������� ����");
			// session �����
			session.setAttribute("vo", uvo);
			
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("�������� ����");
			response.sendRedirect("update.jsp");
		}
	}

}
