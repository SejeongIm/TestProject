package exam.member.Service;

import exam.member.Dto.MemberVo;

public class MemberPrintServiceImpl implements MemberPrintService {

	
	public void print(MemberVo member) {
		System.out.printf("회원정보 : 아이디=%d, 이메일=%s, 이름=%s, 비번=%s, 등록일=%tF\n", 
				member.getId(),member.getEmail(), member.getName(),
				member.getPassword(),member.getRegisterDate());

	}

}
