package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.smhrd.model.DiaryDAO;
import kr.smhrd.model.DiaryVO;
import kr.smhrd.model.MemberVO;

@WebServlet("/BoardService")
public class BoardService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("vo");

		// DAO �޼��� ���
		DiaryDAO dao = new DiaryDAO();
		List<DiaryVO> list = dao.diaryList2(vo.getM_id());

		System.out.println(list.size());
		// ����
		// ���� ���� ����
		response.setContentType("text/html; charset=utf-8");
		request.setAttribute("list", list);

		// forward ������� ������ �̵�
		RequestDispatcher rd = request.getRequestDispatcher("board.jsp");
		rd.forward(request, response);

	}

}
