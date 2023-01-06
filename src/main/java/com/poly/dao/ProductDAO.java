package com.poly.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.*;

public interface ProductDAO extends JpaRepository<Product, Integer>{
		
	//lab6.1 truy vấn theo giá của sp
	@Query("SELECT o FROM Product o WHERE o.price BETWEEN ?1 AND ?2")
	Page<Product> findByPrice(double minPrice, double maxPrice,Pageable pageable);
	
	//lab6.4
	List<Product> findByPriceBetween(double minPrice, double maxPrice);
	
	//lab6.2
	@Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
	Page<Product> findByKeywords(String keywords, Pageable pageable);
	
	@Query("SELECT o FROM Product o WHERE o.loaihang LIKE ?1")
	Page<Product> findByLoaiHang(String loaihang,Pageable pageable);

	//lab6.5
	Page<Product> findAllByNameLike(String keywords, Pageable pageable);
	
	//lab6.3
	@Query("SELECT new Report(o.category, sum(o.price), count(o)) "
			+ " FROM Product o "
			+ " GROUP BY o.category"
			+ " ORDER BY sum(o.price) DESC")
	List<Report> getInventoryByCategory();
	
	// chi tiết sản phẩm
	@Query("SELECT o FROM Product o WHERE o.id LIKE ?1")
	List<Product> product(Integer id);
	
	// loại hàng
	@Query("SELECT o FROM Product o WHERE o.loaihang LIKE ?1")
	List<Product> productslh(String loaihang);
	
}



