package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.SellerDao;
import model.Seller;
@Service
public class SellerServiceImp implements SellerService{
	
	@Autowired
	private SellerDao sDao;

	@Override
	public void joinSeller(Seller seller) {
		sDao.insertSeller(seller);		
	}

	@Override
	public Seller getSeller(String sellerId) {		
		return sDao.selectOne(sellerId);
	}

}
