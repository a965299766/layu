package vip.dulaogou.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import vip.dulaogou.beans.Product;
import vip.dulaogou.dao.IProductDao;

@Service("productService")
public class ProductServiceImpl implements IProductService {
	@Resource(name="IProductDao")
	private IProductDao dao;
	
	public void setDao(IProductDao dao) {
		this.dao = dao;
	}

	@Override
	public void addProduct(Product product) {
		dao.insertProduct(product);

	}

	@Override
	public List<Product> getPublishedProductsById(Integer id) {
		return dao.selectPublishedProductsById(id);
	}

	@Override
	public void deleteProductById(int pid) {
		dao.deleteProductById(pid);
		
	}

	@Override
	public Product getProductById(Integer pid) {
		
		return dao.selectProductById(pid);
	}

	@Override
	public void updateProduct(Product product) {
		dao.updateProduct(product);
		
	}

	@Override
	public List<Product> getRandomProducts() {
		return dao.selectRandomProducts();
	}

	@Override
	public List<Product> getProductsByKeywordsSet(Set<String> keywordsSet) {
		List<Product> allProducts = dao.selectAllProducts();
		if(keywordsSet == null || keywordsSet.size() < 1){
			return allProducts;
		}else{
			List<Product> productsByKeywodsSet = new ArrayList<Product>();
			for (Product product : allProducts) {
				boolean isMatch = true;
				for (String keyword : keywordsSet) {
					
					if(!(product.getPname().trim().contains(keyword))){
						if(!(product.getPfirsttype().trim().contains(keyword))){
							if(!(product.getPsecondtype().trim().contains(keyword))){
								isMatch = false;
							}
						}
						
					}
				}
				if(true == isMatch){
					productsByKeywodsSet.add(product);
				}
			}
			return productsByKeywodsSet;
		}
	}

	@Override
	public void updateProductNum(Product product) {
		dao.updateProductNum(product);
		
	}


}
