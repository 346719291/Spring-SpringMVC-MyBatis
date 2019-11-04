package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.controller.base.BaseController;

@Controller
public class PagemainController extends BaseController<Object>{
	
	@RequestMapping("/top")
	public String top(HttpServletRequest request,Model md)throws Exception{
		return "page/top";
	}
	@RequestMapping("/main_test")
	public String main_test(HttpServletRequest request,Model md)throws Exception{
		return "page/main";
	}
	/*
	 * 页面身体
	 */
	@RequestMapping("/center")
	public String center(HttpServletRequest request,Model md)throws Exception{
		return "page/center";
	}
	
	
	@RequestMapping("/down")
	public String down(HttpServletRequest request,Model md)throws Exception{
		return "page/down";
	}
	
	@RequestMapping("/middel")
	public String middel(HttpServletRequest request,Model md)throws Exception{
		return "page/middel";
	}
	
	@RequestMapping("/left")
	public String left(HttpServletRequest request,Model md)throws Exception{
		return "page/left";
	}
	@RequestMapping("/tab")
	public String tab(HttpServletRequest request,Model md)throws Exception{
		return "page/tab";
	}
	
	/*
	 * 员工添加网页
	 */
	@RequestMapping("/addmanager")
	public String addManager(HttpServletRequest request,Model md)throws Exception{
		return "page/employee/tab";
	}
	
}
