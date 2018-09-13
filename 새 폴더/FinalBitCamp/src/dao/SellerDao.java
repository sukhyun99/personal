package dao;

import java.util.Date;

import model.Seller;

public interface SellerDao {
	
	public void insertSeller(Seller seller);

	public void updateSeller(Seller seller);

	public void deleteSeller(String sellerId);

	public Seller selectOne(String sellerId);

	public void selectSellerAll(Date joinDate);

	public void selectSellerNum(Date joinDate);

}
