package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.model.DiaryDAO;
import kr.smhrd.model.DiaryVO;
import kr.smhrd.model.MemberDAO;
import kr.smhrd.model.MemberVO;

@WebServlet("/DiaryService")
public class DiaryService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.addHeader("Access-Control-Allow-Origin", "*");
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		String diary = request.getParameter("diary");
		
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		
		DiaryVO mvo = new DiaryVO(null, null, diary, null, null, null, null, null, null, null, vo.getM_id());
		
		DiaryDAO dao = new DiaryDAO();
		MemberDAO mdao = new MemberDAO();
		int cnt = dao.diary(mvo);
		int cnt2 = mdao.exp(vo);
		
		session.setAttribute("diary_first", mvo);
		
		System.out.println(mvo.getDiary());
		
		response.sendRedirect("http://localhost:5000/GJDiaryService/predict0?diary="+URLEncoder.encode(diary, "UTF-8"));
		
	}
}
	
	
	
	
	
	
	


