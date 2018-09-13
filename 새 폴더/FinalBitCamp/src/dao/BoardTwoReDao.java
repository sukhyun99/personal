package dao;

import java.util.List;

import model.BoardTwoRe;

public interface BoardTwoReDao {

public int insertBoardOne(BoardTwoRe baordTwoRe);
	
	public int updateBoardOne(BoardTwoRe baordTwoRe);
	
	public int deleteBoardOne(int no);
	
	public BoardTwoRe selectBoardOne(int no);
	
	public List<BoardTwoRe> selectBoardOneAll();
}
