package service;

import model.Member;

public interface MemberService {
	
	public void joinMember(Member member);
	
	public Member getMember(int num);

}
