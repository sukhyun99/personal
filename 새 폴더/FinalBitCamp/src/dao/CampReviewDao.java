package dao;

import java.util.List;

import model.CampReview;

public interface CampReviewDao {

	
public int insertBoardOne(CampReview campReview);
	
	public int updateBoardOne(CampReview campReview);
	
	public int deleteBoardOne(int no);
	
	public CampReview selectBoardOne(int no);
	
	public List<CampReview> selectBoardOneAll();
}
