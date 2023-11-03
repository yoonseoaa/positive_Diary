package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data // �⺻ �޼������
@AllArgsConstructor // ��� �ʵ带 �Ű������� �޴� ������
@NoArgsConstructor // �ƹ��͵� ������� ���� ������(�⺻������)
@RequiredArgsConstructor // @NonNull�� ���� �ʵ常 ���� ������
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

