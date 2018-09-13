package dao;

import java.util.List;

import model.BoardOne;

public interface BoardOneDao {
	
	public int insertBoardOne(BoardOne baordOne);
	
	public int updateBoardOne(BoardOne boardOne);
	
	public int deleteBoardOne(int no);
	
	public BoardOne selectBoardOne(int no);
	
	public List<BoardOne> selectBoardOneAll();
}
