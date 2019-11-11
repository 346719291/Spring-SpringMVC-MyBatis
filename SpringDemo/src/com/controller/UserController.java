package com.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.controller.base.BaseController;
import com.entity.User;
import com.service.UserServiceImpl;

@Controller
public class UserController extends BaseController<User>{
	
	@Autowired
	private UserServiceImpl service;
	
	@RequestMapping("/add")
	public String add(HttpServletRequest request,Model md)throws Exception{
		return "page/user/adduser";
	}
	@RequestMapping("/registration")
	public String registration(HttpServletRequest request,Model md)throws Exception{
		return "page/registration";
	}
	
	@RequestMapping("/adduser")
	public String addUser(HttpServletRequest request,HttpServletResponse response) {
		String loginname = request.getParameter("loginname");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String status = request.getParameter("status");
		java.util.Date date = new java.util.Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String createdate = dateFormat.format(date);
		//String createdate = request.getParameter("createdate");
		User user = new User();
		user.setLoginname(loginname);
		user.setPassword(password);
		user.setUsername(username);
		user.setStatus(status);
		user.setCreatedate(createdate);
		boolean b = service.addUser(user);
		if (b) {
			return "/page/success";
		}else {
			return "/page/false";
		}
	}
	
	@RequestMapping("/loginregistration")
	public String registration(HttpServletRequest request,HttpServletResponse response) {
		String loginname = request.getParameter("loginname");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String status = request.getParameter("status");
		java.util.Date date = new java.util.Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String createdate = dateFormat.format(date);
		//String createdate = request.getParameter("createdate");
		User user = new User();
		user.setLoginname(loginname);
		user.setPassword(password);
		user.setUsername(username);
		user.setStatus(status);
		user.setCreatedate(createdate);
		boolean b = service.addUser(user);
		if (b) {
			return "/index";
		}else {
			return "/page/false";
		}
	}
	
	@RequestMapping("/deleteuser")
	public String deleteuser(HttpServletRequest request,HttpServletResponse response) {
		String loginname = request.getParameter("loginname");
		User user = new User();
		user.setLoginname(loginname);
		boolean b = service.deleteUser(user);
		if (b) {
			return "/page/success";
		}else {
			return "/page/false";
		}	
	}	
	@RequestMapping("/updateUser")
	public String updateUser(HttpServletRequest request,HttpServletResponse response) {
		String loginname = request.getParameter("loginname");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String status = request.getParameter("status");
		String createdate = request.getParameter("createdate");
		User user = new User();
		user.setLoginname(loginname);
		user.setPassword(password);
		user.setUsername(username);
		user.setStatus(status);
		user.setCreatedate(createdate);
		boolean b = service.updateUser(user);
		if (b) {
			return "page/success";
		}else {
			return "page/false";
		}	
	}
	
	@RequestMapping("/find")
	public String find(HttpServletRequest request,HttpServletResponse response) {
		//String id = request.getParameter("id");
		String loginname = request.getParameter("loginname");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String status = request.getParameter("status");
		String createdate = request.getParameter("createdate");
		User user = new User();
		//user.setId(id);
		user.setLoginname(loginname);
		user.setPassword(password);
		user.setUsername(username);
		user.setStatus(status);
		user.setCreatedate(createdate);
		System.out.println(user);
		List<User> list = service.find(user);
		System.out.println(list);
		if (list.get(0) != null) 
		{ 
			request.setAttribute("list", list);
			return "page/user/listuser";
		}else 
		{ 
			return "page/false"; 
		}	
	}
	
	@RequestMapping("/findname")
	public void findname(HttpServletRequest request,HttpServletResponse response) throws IOException {
		//String id = request.getParameter("id");
		String loginname = request.getParameter("loginname");
		User user = new User();
		//user.setId(id);
		user.setLoginname(loginname);
		User user1 = service.findname(user);
		if (loginname!=null||loginname!=""||user1.getPassword()!="") {
			if (user1.getPassword() != null) 
			{ 
				response.getWriter().write("登录名已被注册");
			}else 
			{ 
				response.getWriter().write("登录名可以使用");
			}	
		}else {
			response.getWriter().write("请输入登录名");
		}
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request,HttpServletResponse response ,Model md) throws ServletException, IOException {
		String loginname = request.getParameter("loginname");
		String password = request.getParameter("password");
		String yanzheng = request.getParameter("yanzheng");
		System.out.println(loginname);
		System.out.println(password);
		HttpSession session=request.getSession();
		String value = (String) session.getAttribute("sb");
		User user = new User();
		user.setLoginname(loginname);
		user.setPassword(password);
		User user2 = service.login(user);
		if (user2 != null) 
		{
			if (user2.getPassword().equals(password)) 
			{
				request.getSession().setAttribute("username",user2.getUsername());
				return "/page/main";
			}else {
				return "/page/false";
			}
		}else
		{ 
			return "/page/false";
		}
	}
}
