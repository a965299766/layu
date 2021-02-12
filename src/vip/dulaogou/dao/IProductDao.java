package vip.dulaogou.dao;

import java.util.List;
import java.util.Set;

import vip.dulaogou.beans.Product;

public interface IProductDao {
	void insertProduct(Product product);

	List<Product> selectPublishedProductsById(Integer id);

	void deleteProductById(int pid);

	Product selectProductById(Integer pid);

	void updateProduct(Product product);

	List<Product> selectRandomProducts();

	List<Product> selectAllProducts();

	void updateProductNum(Product product);
}
