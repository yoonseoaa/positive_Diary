package kr.smhrd.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {

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
	// join method
	public int join(MemberVO vo) {
		// 1. SqlSession 세션 빌려오기
		SqlSession session = sqlSessionFactory.openSession(true); // true -> AutoCommit

		// 2. Mapper.xml에 적어둔 SQL문장 실행
		int cnt = 0;
		try {
			cnt = session.insert("join", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 3. 세션 반환
		session.close();

		// 4. 결과 리턴
		return cnt;
	}

//======================================================================================	
	// login method
	public MemberVO login(MemberVO vo) {
		// 1.세션 빌려오기
		SqlSession session = sqlSessionFactory.openSession(true);
		// 2. SQL문장 실행
		MemberVO mvo = session.selectOne("login", vo);
		// 3. 세션 반환
		session.close();
		// 4. 결과리턴
		return mvo;
	}

//======================================================================================	
	// update method
	public int update(MemberVO vo) {
		// 1.세션 빌려오기
		SqlSession session = sqlSessionFactory.openSession(true);
		// 2. SQL문장 실행
		int cnt = 0;
		try {
			cnt = session.update("update", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 3. 세션 반환
		session.close();
		// 4. 결과 리턴
		return cnt;
	}

//======================================================================================	
	// select method
	public List<MemberVO> select() {
		// 1. 세션 빌려오기
		SqlSession session = sqlSessionFactory.openSession(true);
		// 2. SQL문장 실행
		List<MemberVO> list = session.selectList("select");
		// 3. 세션 반환
		session.close();
		// 4. 결과 리턴
		return list;
	}

//======================================================================================		
	// emailCheck method
	public MemberVO emailCheck(String m_id) {
		// 1. SqlSesson 세션 빌려오기
		SqlSession session = sqlSessionFactory.openSession(true);
		// 2. SQL문장 실행
		MemberVO vo = session.selectOne("emailCheck", m_id);
		// 3. SQLSession 반환
		session.close();
		// 4. 결과 리턴
		return vo;
	}

//======================================================================================	
	// emailCheck method
	public int exp(MemberVO vo) {
		// 1. SqlSesson 세션 빌려오기
		SqlSession session = sqlSessionFactory.openSession(true);
		// 2. SQL문장 실행
		int cnt = session.update("exp", vo);
		// 3. SQLSession 반환
		session.close();
		// 4. 결과 리턴
		return cnt;
	}

}