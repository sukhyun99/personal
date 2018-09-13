package dao;

import java.util.List;

import model.Picture;

public interface PictureDao {
	
public int insertBoardOne(Picture picture);
	
	public int updateBoardOne(Picture picture);
	
	public int deleteBoardOne(int no);
	
	public Picture selectBoardOne(int no);
	
	public List<Picture> selectBoardOneAll();
}
