package exam.member.Dto;

import java.util.Date;

public class MemberVo {
	//멤버변수 ==> 데이터베이스에 등록될 값
	//테이블의 필드와 동일하게 
	//service/dao영역에서 사용될 클래스
	
	private Long id;//시용자가 등록되는 순서(번호)
	private String email; //이메일 ==>등록, 삭제, 조회할 때 기준이 됨
	private String name; // 이름
	private String password; //비번
	private Date registerDate;//등록날짜
	
	//생성자
	//1> 기본
	public MemberVo() {
		super();
	}


	//2> 매개변수가 있는 생성자 ==> 주입할 공간
	public MemberVo(String email, String name, String password, Date registerDate) {
		super();
		this.email = email;
		this.name = name;
		this.password = password;
		this.registerDate = registerDate;
	}

	//getter/setter
	public Long getId() {
		return id;
	}




	public void setId(Long id) {
		this.id = id;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public Date getRegisterDate() {
		return registerDate;
	}




	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	
	//추가 메소드(비밀번호 수정)
	public void changePassword(String oldPassword, String newPassword) {
		if(!password.equals(oldPassword)) {
			System.out.println("등록된 비밀번호가 틀립니다.");
			
		}else {
			this.password=newPassword;//비번변경
		}
	}
	
	
	
	

}
