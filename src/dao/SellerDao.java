package dao;

import model.Seller;

public interface SellerDao {
	
	public void insertSeller(Seller seller);
	public Seller selectOne(String sellerId);

}
