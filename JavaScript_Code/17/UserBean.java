package kr.ac.mvc.model;

public class UserBean {

	private String userid;
	private String passwd;

	private String dbUserid;
	private String dbPasswd;
	
	// 생성자
	public UserBean() {
		// 인증에 사용할 기본값 설정, 
		// 현재 저장하는 사용자와 암호인 경우 로그인 성공
		dbUserid = "mvc";
		dbPasswd = "model";
	}
	
	// 아이디와 비밀번호가 맞는지 체크하는 메서드
	public boolean getCheckUser() {
		if(userid.equals(dbUserid) && passwd.equals(dbPasswd))
			return true;
		else
			return false;
	}
	
	//getter, setter
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getUserid() {
		return userid;
	}
	public String getPasswd() {
		return passwd;
	}

}
