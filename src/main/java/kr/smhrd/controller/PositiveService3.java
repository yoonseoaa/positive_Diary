package kr.smhrd.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.model.DiaryDAO;
import kr.smhrd.model.DiaryVO;
import kr.smhrd.model.MemberVO;

@WebServlet("/PositiveService3")
public class PositiveService3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.addHeader("Access-Control-Allow-Origin", "*");
		request.setCharacterEncoding("utf-8");
	
		// 파라미터 수집
		HttpSession session = request.getSession();

		MemberVO vo = (MemberVO) session.getAttribute("vo");
		
		String diary = request.getParameter("diary");
		
		DiaryVO dvo = new DiaryVO(null, null, null, null, null, diary, null, null, null, null, vo.getM_id());
		
		DiaryDAO dao = new DiaryDAO();
		
		int cnt = dao.postive3(dvo);
		System.out.println("pos3 : " + cnt);
		
		response.sendRedirect("http://localhost:5000/GJDiaryService/predict3?diary="+URLEncoder.encode(diary, "UTF-8"));

	
	
	
	
	
	
	}

}
