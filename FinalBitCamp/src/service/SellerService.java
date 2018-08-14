package service;

import model.Seller;

public interface SellerService {
	
	public void joinSeller(Seller seller);
	public Seller getSeller(String sellerId);

}
