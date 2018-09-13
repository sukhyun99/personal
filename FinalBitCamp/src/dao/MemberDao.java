package dao;

import java.util.HashMap;
import java.util.Map;

import model.Member;

public interface MemberDao {
	
	public void insertMember(Member member);
	
	public boolean updateMember(Member member);
	
	public Member selectOne(int num);
	
	public Member selectMember(String userId);
	
	public Member selectMemberName(String name);
	
	public int insertMemberSns(Member member);
	
	public void deleteMember(String userId);
	
	public String selectPw(HashMap<String, Object> params);
}
