package exam.member.Dao;

import java.util.Collection;

import exam.member.Dto.MemberVo;

public interface MemberDao {
	//데이터베이스 연결해서 저장==>map
	
	//삽입
	public void insert(MemberVo member);
	
	//수정
	public void update(MemberVo member);
	
	//조회 => email --> select * from member where email=""
	public MemberVo selectByEmail(String email);
	
		
	
	//조회 ==>전체조회 ==> Collection
	public Collection<MemberVo> selectAll();
	
	//삭제
	public void delete(String email);
}
