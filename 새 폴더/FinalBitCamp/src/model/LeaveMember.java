package model;

import java.util.Date;

public class LeaveMember {
	int num;
	String l_Member;
	Date l_Date;
	String memberType;
	
	
	@Override
	public String toString() {
		return "LeaveMember [num=" + num + ", l_Member=" + l_Member + ", l_Date=" + l_Date + ", memberType="
				+ memberType + "]";
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getL_Member() {
		return l_Member;
	}
	public void setL_Member(String l_Member) {
		this.l_Member = l_Member;
	}
	public Date getL_Date() {
		return l_Date;
	}
	public void setL_Date(Date l_Date) {
		this.l_Date = l_Date;
	}
	public String getMemberType() {
		return memberType;
	}
	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}
	

	
	
}
