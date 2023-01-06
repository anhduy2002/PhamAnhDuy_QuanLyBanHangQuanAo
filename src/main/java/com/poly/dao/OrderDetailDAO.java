package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.*;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long>{
}