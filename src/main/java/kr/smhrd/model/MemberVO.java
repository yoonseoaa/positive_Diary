package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data // 기본 메서드생성
@AllArgsConstructor // 모든 필드를 매개변수로 받는 생성자
@NoArgsConstructor // 아무것도 들어있지 않은 생성자(기본생성자)
@RequiredArgsConstructor // @NonNull이 붙은 필드만 갖는 생성자
public class MemberVO {

	@NonNull
	private String m_id;
	@NonNull
	private String m_pw;
	private String b_date;
	private String tel;
	private String c_nick;
	private String c_id;
	private String lev;
	private String exp;
}

