package common;

public class MypageQuery {
	
	// 해당 uid 회원 마이페이지  글제목, 글내용 가져온다
	// (viewByUid 수행하여 -> MypageDTO [] arr 에 담아서  'mypage' 라는 이름으로 session 에 저장한다.)
	// mypage 세션을 mypageView.jsp 에서 꺼내쓴다. 
	public static final String SQL_VIEW_BY_UID = 
			"SELECT mypage_subject, mypage_content FROM tb_user WHERE user_uid = ?";

	
	// 해당 uid 회원 마이페이지  글제목, 글내용 수정
	public static final String SQL_UPDATE_BY_UID = "UPDATE tb_user "
			+ "SET mypage_subject = ?, mypage_content = ? WHERE user_uid = ?";

	

	// 첨부파일 관련 쿼리
	// 특정 user_uid 에 mypage 첨부파일 1개 insert
	public static final String SQL_ATTACH_FILE_INSERT = 
			"INSERT INTO tb_attach(attach_uid, attach_oriname, attach_servername, attach_url, user_uid) "
			+ "VALUES"
			+ "(attach_seq.nextval, ?, ?, ?, ?)"
			;
	
	// 특정 user_uid 에  mypage  첨부파일 (attach_uid) 하나를 SELECT
	public static final String SQL_ATTACH_FILE_SELECT = 
			"SELECT attach_oriname, attach_servername "
			+ "FROM tb_attach WHERE user_uid = ?";
	
}
