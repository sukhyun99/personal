package service;

import javax.servlet.http.HttpSession;

import model.Member;

public interface MemberService {
	
	public void joinMember(Member member);
	
	public Member getMember(int num);
	
	public boolean updateMember(Member member);
	
	public boolean login(String userId, String pw);
	
	public Member selectMember(String userId);
	
	public Member selectMemberName(String name);
	
	public void MemberNaver(String apiResult, HttpSession session);
	
	public int insertMemberSns(Member member);
	
	public void leaveMember(String userId);

}
