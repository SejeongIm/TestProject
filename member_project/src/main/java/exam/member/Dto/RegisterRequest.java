package exam.member.Dto;

public class RegisterRequest {
	//사용자가 입력한 정보를 등록할때 사용
	//서비스영역에서 사용
	//new email 이름 비번1 비번1(확인)
	private String email;
	private String name;
	private String password;
	private String confirmPassword;
	
	
	//기본 생성자
	public RegisterRequest() {
		super();
	}

	//getter/setter
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


	public String getConfirmPassword() {
		return confirmPassword;
	}


	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	//추가 메서드(비번확인)
	public boolean isPasswordEqual() {
		return password.equals(confirmPassword);
		//비번1.equals(비번2) ==> 같은 true/다른 false
		}
	
}
