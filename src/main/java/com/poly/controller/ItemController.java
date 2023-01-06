package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.utils.DB;

@Controller
public class ItemController {
	//1. localhost:8080/item/index....xử lý hàm sau
	@RequestMapping("/item/index")
	public String list(Model model) {
		//2. lấy danh sách món hàng ra
		model.addAttribute("items", DB.items.values());
		return "item/index"; //3. view trang index lên.
	}
}