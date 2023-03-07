package exam.member.Service;

import java.util.Collection;

import exam.member.Dao.MemberDao;
import exam.member.Dto.MemberVo;

public class MemberListPrintServiceImpl implements MemberListPrintService {
	private MemberDao memberDao;
	private MemberPrintService memberPrintService;
	
	//생성자를 이용한 주입
	public MemberListPrintServiceImpl(MemberDao memberDao, MemberPrintService memberPrintService) {
		super();
		this.memberDao = memberDao;
		this.memberPrintService = memberPrintService;
	}
	
	
	public void printAll() {
		Collection<MemberVo> members = memberDao.selectAll();
		for(MemberVo member: members) {
			memberPrintService.print(member);
		}

	}

	

}
