package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.*;

public interface OrderDAO extends JpaRepository<Order, Long>{
	@Query("SELECT o.email FROM Account o WHERE o.username LIKE ?1")
	Account account(String id);
}
