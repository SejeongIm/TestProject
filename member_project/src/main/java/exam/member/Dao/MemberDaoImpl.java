package exam.member.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import exam.member.Dto.MemberVo;

public class MemberDaoImpl implements MemberDao {

	private JdbcTemplate jdbcTemplate;
	
	//주입공간 ==> DB연결값 ==>
	public MemberDaoImpl(JdbcTemplate jdbcTemplate) {
		super();
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public void insert(MemberVo member) {
		String sql = "insert into member (email, name, password, registerDate) values (?,?,?,?)";
		jdbcTemplate.update(sql, member.getEmail(), member.getName(), member.getPassword(), member.getRegisterDate());
	}

	

	@Override
	public void update(MemberVo member) {
		String sql="update member set password=? where email=?";
		jdbcTemplate.update(sql, member.getPassword(), member.getEmail());

	}

	@Override
	public MemberVo selectByEmail(String email) {
		String sql = "select * from member where email=?";
		List<MemberVo> members = jdbcTemplate.query(sql, new RowMapper<MemberVo>() {

			@Override
			public MemberVo mapRow(ResultSet rs, int rowNum) throws SQLException {
				MemberVo member = new MemberVo();
				member.setId(rs.getLong("id"));
				member.setEmail(rs.getString("email"));
				member.setName(rs.getString("name"));
				member.setPassword(rs.getString("password"));
				member.setRegisterDate(rs.getTimestamp("registerDate"));
				
				return member;
			}
			}, email);
		return members.isEmpty()?null : members.get(0);
			
		}
		
		

	@Override
	public Collection<MemberVo> selectAll() {
		String sql = "select * from member";
		List<MemberVo> members = jdbcTemplate.query(sql, new RowMapper<MemberVo>() {

			@Override
			public MemberVo mapRow(ResultSet rs, int rowNum) throws SQLException {
				MemberVo member = new MemberVo();
				member.setId(rs.getLong("id"));
				member.setEmail(rs.getString("email"));
				member.setName(rs.getString("name"));
				member.setPassword(rs.getString("password"));
				member.setRegisterDate(rs.getTimestamp("registerDate"));
				return member;
			}
		});
		return members;
	}

	@Override
	public void delete(String email) {
		String sql="delete from member where email=?";
		jdbcTemplate.update(sql, email);

	}

}
