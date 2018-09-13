package service;

import java.util.List;

import javax.servlet.http.HttpSession;

import model.Member;

public interface MemberService {
	
	public boolean login(String userId, String pw);
	
	public void joinMember(Member member);

	public int insertMember(Member member);

	public int insertMemberSns(Member member);

	public boolean updateMember(Member member);

	public int deleteMember(String userId);

	public Member selectMember(String userId);

	public List<Member> selectMemberAll(int joinDate);

	public int selectNewMemberNum(int joinDate);
	
	public void MemberNaver(String apiResult, HttpSession session);

	public Member getMember(int num);
	
	public Member selectMemberName(String name);
	
	
}
