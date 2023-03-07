package exam.member.Service;

import exam.member.Dao.MemberDao;
import exam.member.Dto.MemberVo;

public class MemberDeleteServiceImpl implements MemberDeleteService {
	private MemberDao memberDao;
	
	
	public MemberDeleteServiceImpl() {
		super();
	}

	public MemberDeleteServiceImpl(MemberDao memberDao) {
		super();
		this.memberDao = memberDao;
	}

	@Override
	public void deleteMember(String email) {
		
		//MemberVo member = memberDao.selectByEmail(email);
		
		//member.delete(member.getEmail());
		memberDao.delete(email);
		
		

	}

}
