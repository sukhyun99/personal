package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberDao;
import model.Member;
@Service
public class MemberServiceImp implements MemberService{

	@Autowired
	private MemberDao mDao;
	
	@Override
	public void joinMember(Member member) {		
		mDao.insertMember(member);		
	}

	@Override
	public Member getMember(int num) {		
		return mDao.selectOne(num);
	}

}
