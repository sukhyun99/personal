package dao;

import model.SellerRequest;

public interface SellerRequestDao {
	
	public void insertSellerRequest(SellerRequest sellerRequest);
	
	public void updateSellerRequest(SellerRequest sellerRequest);
	
	public void deleteSellerRequest(String sellerId);
	
	public void selectSellerRequest(String sellerId);
	
	public void selectSellerRequestAll();
	
	public void selectRequestResult(String sellerId);

}
