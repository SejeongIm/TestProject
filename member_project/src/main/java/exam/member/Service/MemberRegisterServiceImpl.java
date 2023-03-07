package exam.member.Service;

import java.util.Date;

import exam.member.Dao.MemberDao;
import exam.member.Dto.MemberVo;
import exam.member.Dto.RegisterRequest;

public class MemberRegisterServiceImpl implements MemberRegisterService {
	private MemberDao memberDao;

	//생성자를 통한 주입 ==> xml로 접근할때 참조
	//기본 생성자
	public MemberRegisterServiceImpl() {
		super();
	}
	//매개변수가 있는 생성자
	public MemberRegisterServiceImpl(MemberDao memberDao) {
		super();
		this.memberDao = memberDao;
	}
	
	public void regist(RegisterRequest req) {
		MemberVo member = memberDao.selectByEmail(req.getEmail());
		if(member != null) {
			System.out.println("등록된 멤버입니다.");
		}
		MemberVo newMember = new MemberVo(req.getEmail(),req.getName(), 
				req.getPassword(), new Date());
		//새로운 멤버 만들기
		//이메일 비번, 이름 , 현재시스템 날짜
		memberDao.insert(newMember);
		//새로운 멤버 저장공간에 등록
	}

	

}
