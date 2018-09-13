package dao;

import java.util.List;

import model.BoardTwo;

public interface BoardTwoDao {
	
public int insertBoardOne(BoardTwo baordTwo);
	
	public int updateBoardOne(BoardTwo baordTwo);
	
	public int deleteBoardOne(int no);
	
	public BoardTwo selectBoardOne(int no);
	
	public List<BoardTwo> selectBoardOneAll();
}
