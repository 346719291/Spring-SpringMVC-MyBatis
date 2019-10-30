package com.controller;


import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.controller.base.BaseController;

@Controller
public class InsexpageController extends BaseController<Object>{
	//跳转主页
	@RequestMapping("/indexpage")
	public String index(HttpServletRequest request,Model md)throws Exception{
		return "index";
	}
}
