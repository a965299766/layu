package vip.dulaogou.service;

import java.util.List;
import java.util.Set;

import vip.dulaogou.beans.Product;

public interface IProductService {
	void addProduct(Product product);

	List<Product> getPublishedProductsById(Integer uid);

	void deleteProductById(int pid);

	Product getProductById(Integer pid);

	void updateProduct(Product product);

	List<Product> getRandomProducts();

	List<Product> getProductsByKeywordsSet(Set<String> keywordsSet);

	void updateProductNum(Product product);
}
