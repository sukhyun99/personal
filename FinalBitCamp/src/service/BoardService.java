package service;

import java.util.List;

import model.Board;

public interface BoardService {
	public void insertBoard(Board b);
	public List<Board> selectAll(String userId);
}
