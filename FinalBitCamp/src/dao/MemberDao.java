package dao;

import model.Member;

public interface MemberDao {
	
	public void insertMember(Member member);
	
	public Member selectOne(int num);
	
	public Member selectMember(String userId);
	
	public int insertMemberSns(Member member);

}
