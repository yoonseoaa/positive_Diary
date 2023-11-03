create table member(
m_id varchar2(20),
m_pw varchar2(20) not null,
b_date date,
tel varchar2(20) not null,
c_nick varchar2(20) not null,
c_id varchar2(20),
exp number(20),
lev number(8),
constraint member_m_id_pk primary key (m_id),
constraint member_c_id_fk foreign key (c_id)
references character_img (c_id)
);

alter session set time_zone = '+09:00';

select * from member;

update member
set exp = 200 + 100
where m_id = 'aa'

create table diary(
d_id varchar2(20),
d_date date,
diary varchar2(600),
POSITIVE_S1 varchar2(600),
POSITIVE_S2 varchar2(600),
POSITIVE_S3 varchar2(600),
diary_rate number(20,1),
S1_rate number(20,1),
S2_rate number(20,1),
S3_rate number(20,1),
m_id varchar2(20) not null,
constraint diary_d_id_pk primary key (d_id),
constraint diary_m_id_fk foreign key (m_id)
references member (m_id)
);

select * from DIARY
order by d_id+0 desc

create table character_img(
c_id varchar2(20),
img1 varchar2(100),
img2 varchar2(100),
img3 varchar2(100),
img4 varchar2(100),
img5 varchar2(100),
constraint character_c_id_pk primary key (c_id)
);

drop table character_img
drop table member
drop table diary

create sequence mem_num_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache
	
create sequence diary_num_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache
	
drop sequence diary_num_seq
	
insert into DIARY
select '0','2022/05/18','��� �غ� ����� 1��°�̴�.
�ƽ��Ե� ���� ������ ȸ�� ���� �������� ��������.
�Ź� �������� ������ ���ڽſ��� ¥������ ȭ������.
���� ������ ����� �� ������?
','�ٽ� ��ü��� �� ���� �����ϴ� �ǰ������� ģ���鸸�� ������ �ູ�ߴ�.
�б�������� ������ ��մ�.
���� ���������� ���ڴ�.','�ٽ� ��ü��� �� ���� �����ϴ� �ǰ������� ģ���鸸�� ������ �ູ�ߴ�.
�б�������� ������ ��մ�.
���� ���������� ���ڴ�.','����� �ϱ� ���ؼ� ������ ������̴�.
����ϰ� ���� ȸ�翡 �ƽ��� �������� ���������� ���� ���� ��� �� �־���.
�������� �հ��� �� ���� �� ����.
�հ��� ȸ�� �ٴ� ����� �ϴ� �ູ�ߴ�.','0.7','94.5','94.5','89.5','aa' from dual


update DIARY
set positive_s3 = '�ٽ� ��ü��� �� ���� �����ϴ� �ǰ������� ģ���鸸�� ������ �ູ�ߴ�.
�б�������� ������ ��մ�.
���� ���������� ���ڴ�.'

update member
set c_nick = '����'
where m_id='aa'

update member
set lev = '1'
where m_id='aa'

drop sequence diary_num_seq;

create sequence diary_num_seq
	start with 1
	increment by 1
	maxvalue 999999
	nocycle
	nocache;
	
drop table diary;

create table diary(
d_id varchar2(20),
d_date date,
diary varchar2(600),
POSITIVE_S1 varchar2(600),
POSITIVE_S2 varchar2(600),
POSITIVE_S3 varchar2(600),
diary_rate number(20,1),
S1_rate number(20,1),
S2_rate number(20,1),
S3_rate number(20,1),
m_id varchar2(20) not null,
constraint diary_d_id_pk primary key (d_id),
constraint diary_m_id_fk foreign key (m_id)
references member (m_id)
);
