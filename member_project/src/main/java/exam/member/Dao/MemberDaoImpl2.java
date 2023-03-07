package exam.member.Dao;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import exam.member.Dto.MemberVo;

public class MemberDaoImpl2 implements MemberDao {

	//id는 자동증가 ==> static : 공유변수
	private static long nextId=0;
	private Map<String, MemberVo> map = new HashMap<String, MemberVo>();
	//키는 문자열 == > email 값은 MemberVo
	
	
	@Override
	public void insert(MemberVo member) {
		member.setId(++nextId);
		map.put(member.getEmail(), member);

	}

	@Override
	public void update(MemberVo member) {
		map.put(member.getEmail(), member);

	}

	@Override
	public MemberVo selectByEmail(String email) {
		return map.get(email);
		}

	@Override
	public Collection<MemberVo> selectAll() {
		
		return map.values();
	}

	@Override
	public void delete(String email) {
		map.remove(email);

	}

}
