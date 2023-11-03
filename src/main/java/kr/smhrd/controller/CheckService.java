package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.MemberDAO;
import kr.smhrd.model.MemberVO;

@WebServlet("/CheckService")
public class CheckService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 1. �Ķ���� ����
		String m_id = request.getParameter("m_id");
		
		// 2. DAO�޼��� ���
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.emailCheck(m_id);
		
		// 3. �������
		// ���� ���� ����
		response.setContentType("text/html; charset=utf-8");
		
		// out ��ü ����
		PrintWriter out = response.getWriter();
		
		// ����
		out.print(vo == null);
	
	
	
	
	}

}
