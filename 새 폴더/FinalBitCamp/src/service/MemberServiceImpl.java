package service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;

import dao.MemberDao;
import model.Member;

@Service
public class MemberServiceImpl implements MemberService {
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
	public int insertMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertMemberSns(Member member) {
		
		mDao.insertMemberSns(member);
		return 0;
	}

	@Override
	public boolean updateMember(Member member) {
		return mDao.updateMember(member); 
	}

	@Override
	public int deleteMember(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member selectMember(String userId) {
		return mDao.selectMember(userId);
	}


	@Override
	public int selectNewMemberNum(int joinDate) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public void MemberNaver(String apiResult, HttpSession session) {
		Member m = new Member();
		JSONParser parser = new JSONParser();
		Object obj = "";
		try {
			obj = parser.parse(apiResult);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		JSONObject jsonObj = (JSONObject) obj;
		JSONObject json = (JSONObject) jsonObj.get("response");
		String user = (String) json.get("email");
		String userId = user.substring(0, user.indexOf("@"));
		String name = (String) json.get("name");
		String email = (String) json.get("email");
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
	
	public void MemberKakao(JsonNode userInfo, HttpSession session) {
		Member m = new Member();
		JsonNode properties = userInfo.path("properties"); // 추가정보 받아오기
		JsonNode email = userInfo.path("kakao_account");
		String mail = email.path("email").asText();
		String midId = mail;
		String userId = midId.substring(0, midId.indexOf("@"));
		session.setAttribute("userId", userId);
		Member result = selectMember(userId);
		if (result == null) {
			m.setUserId(userId);
			m.setName(properties.path("nickname").asText());
			m.setEmail(mail);
			m.setType(3);
			insertMemberSns(m);
		}

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
	public List<Member> selectMemberAll(int joinDate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member selectMemberName(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
