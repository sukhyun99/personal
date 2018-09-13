package dao;

import java.util.List;

import model.Board;

public interface BoardDao {
	
	public void insertBoard(Board b);
	public List<Board> selectAll(String userId);
}
