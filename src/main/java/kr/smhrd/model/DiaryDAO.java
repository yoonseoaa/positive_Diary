package kr.smhrd.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DiaryDAO {

	// Connection pool 만들기
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resource = "kr/smhrd/mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

//======================================================================================
	// diary method
	public int diary(DiaryVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.insert("diaryWrite", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;
	}

	public List<DiaryVO> selectDiary(String m_id) {
	
		SqlSession session = sqlSessionFactory.openSession(true);


		List<DiaryVO> list = session.selectList("selectDiary", m_id);


		session.close();


		return list;

	}

	public int postive1(DiaryVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.update("positive1", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;
	}

	public int postive2(DiaryVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.update("positive2", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;
	}

	public int postive3(DiaryVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.update("positive3", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;
	}

	public int diary_rate(DiaryVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.update("diary_rate", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;
	}

	public int s1_rate(DiaryVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.update("s1_rate", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;
	}

	public int s2_rate(DiaryVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.update("s2_rate", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;
	}

	public int s3_rate(DiaryVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.update("s3_rate", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;
	}
	
	public List<DiaryVO> diaryList(String m_id) {
		// 1. Sqlsession 빌려오기
		SqlSession session = sqlSessionFactory.openSession(true);
	
		// 2. sql문 실행(사용)
		List<DiaryVO> list = session.selectList("diaryList", m_id);
		
		// 3. SQL session 반환
		session.close();
		
		// 4. 결과 리턴
		return list;
		
	}
	public List<DiaryVO> diaryList2(String m_id) {
		// 1. Sqlsession 빌려오기
		SqlSession session = sqlSessionFactory.openSession(true);
	
		// 2. sql문 실행(사용)
		List<DiaryVO> list = session.selectList("diaryList2", m_id);
		
		// 3. SQL session 반환
		session.close();
		
		// 4. 결과 리턴
		return list;
		
	}
	
	public DiaryVO listOne(String d_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		DiaryVO dvo = (DiaryVO) session.selectList("listOne", d_id);
		
		session.close();
		
		return dvo;
		
	}
}