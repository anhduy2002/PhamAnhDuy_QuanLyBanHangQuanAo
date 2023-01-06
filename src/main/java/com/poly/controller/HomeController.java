package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.bean.MailInfo;
import com.poly.dao.ProductDAO;
import com.poly.entity.Product;
import com.poly.service.MailerService;
import com.poly.service.SessionService;
import com.poly.service.ShoppingCartService;

@Controller
public class HomeController {
	@Autowired
	ProductDAO dao;
	@Autowired
	SessionService session;
	@Autowired
	ShoppingCartService cart; // 1. tiêm Spring Bean đã viết ở bài trước
	@Autowired
	MailerService mailer;

	// nếu người dùng search
	@RequestMapping("/home/index")
	public String index(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		// tìm theo keywords
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = dao.findByKeywords("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "home/index";
	}

	// nếu phân theo loại hàng
	@RequestMapping("/loaihang/{loaihang}")
	public String loaihang(Model model, @PathVariable("loaihang") Optional<String> lh,
			@RequestParam("p") Optional<Integer> p) {
		String lhh = lh.orElse(session.get("loaihang", ""));
		session.set("loaihang", lhh);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = dao.findByLoaiHang("%" + lhh + "%", pageable);
		model.addAttribute("page", page);
		return "/home/index";
	}
	
	// tìm theo giá tiền
	@GetMapping("/giatien")
	public String giatien(Model model, 
			@RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max,
			@RequestParam("p") Optional<Integer> p) {
		double minPrice = min.orElse(Double.MIN_VALUE);
		double maxPrice = max.orElse(Double.MAX_VALUE);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = dao.findByPrice(0, maxPrice, pageable);
		model.addAttribute("page",page);
		return "/home/index";
		
	}
	
}
