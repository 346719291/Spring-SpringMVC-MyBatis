package com.controller;

import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.controller.base.BaseController;

/**
 * 员工管理
 * @author xsp
 *
 */
@Controller
@RequestMapping("/manager")
public class ManagerController extends BaseController<Object>{
	
	/*
	 * 添加员工
	 */
	@RequestMapping("/addmanagerinfo")
	public String top(HttpServletRequest request,HttpServletResponse response,Model md)throws Exception{
		//request.setAttribute("name", "addmanager");
		md.addAttribute("name", "addmanager");
		System.out.println("你好");
		//request.getRequestDispatcher("page/middel").forward(request, response);
		return "page/middel";
	}
	
	@RequestMapping("/addmrinfo")
	public String topc(HttpServletRequest request,HttpServletResponse response,Model md)throws Exception{
		//request.setAttribute("name", "addmanager");
		md.addAttribute("name", "addmanager");
		System.out.println("你好");
		//request.getRequestDispatcher("page/middel").forward(request, response);
		return "page/NewFile";
	}
}