package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BoardDao;
import model.Board;
@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDao bDao;

	@Override
	public void insertBoard(Board b) {
		bDao.insertBoard(b);
	}

	@Override
	public List<Board> selectAll(String userId) {
		return bDao.selectAll(userId);
	}
}
