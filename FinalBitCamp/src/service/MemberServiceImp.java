package service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

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

	@Override
	public boolean login(String userId, String pw) {
		Member result = selectMember(userId);
		if (result == null) {
			return false;
		} else {
			String originPw = result.getPw();
			if (originPw == null) {
				return false;
			} else {
				if (originPw.equals(pw)) {
					return true;
				} else {
					return false;
				}
			}
		}
	}

	@Override
	public Member selectMember(String userId) {
		return mDao.selectMember(userId);
	}

	@Override
	public void MemberNaver(String apiResult, HttpSession session) {
		Member m = new Member();
		JsonParser parser = new JsonParser();
		Object obj = "";
		obj = parser.parse(apiResult);
		JsonObject jsonObj = (JsonObject) obj;
		JsonObject json = (JsonObject) jsonObj.get("response");
		String user = String.valueOf(json.get("email"));
		String userId = user.substring(0, user.indexOf("@"));
		String name = String.valueOf(json.get("name"));
		String email = String.valueOf(json.get("email"));
		Member result = selectMember(userId);
		session.setAttribute("userId", userId);
		if (result == null) {
			m.setUserId(userId);
			m.setName(name);
			m.setEmail(email);
			m.setType(2);
			insertMemberSns(m);
		}
	}

	@Override
	public int insertMemberSns(Member member) {
		mDao.insertMemberSns(member);
		return 0;
	}

}
