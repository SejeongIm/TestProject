package exam.member.Service;

import exam.member.Dao.MemberDao;
import exam.member.Dto.MemberVo;

public class ChangePasswordServiceImpl implements ChangePasswordService {

	private MemberDao memberDao;
	
	public ChangePasswordServiceImpl() {
		super();
	}

	public ChangePasswordServiceImpl(MemberDao memberDao) {
		super();
		this.memberDao = memberDao;
	}

	public void changePassword(String email, String oldPassword, String newPassword) {
		
		MemberVo member = memberDao.selectByEmail(email);
		
		if(member == null) {
			System.out.println("이메일이 존재하지 않음");
		}
		
		member.changePassword( oldPassword, newPassword);//memberVo에 정의 
		memberDao.update(member);//기존에 값에 덮어 쓰기
	}

}
