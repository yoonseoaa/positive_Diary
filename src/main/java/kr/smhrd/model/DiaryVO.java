package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data // �⺻ �޼������
@AllArgsConstructor // ��� �ʵ带 �Ű������� �޴� ������

public class DiaryVO {

	private String d_id;
	private String d_date;
	private String diary;
	private String positive_s1;
	private String positive_s2;
	private String positive_s3;
	private String diary_rate;
	private String s1_rate;
	private String s2_rate;
	private String s3_rate;
	private String m_id;
	
	

	
	
	
	
	
}
