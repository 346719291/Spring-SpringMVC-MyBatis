package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.controller.base.BaseController;
import com.entity.Dept;
import com.service.DeptServiceImpl;

@Controller
public class DeptController extends BaseController<Dept>{
	@Autowired
	private DeptServiceImpl service;
	
	@RequestMapping("/add_dept_jsp")
	public String add(HttpServletRequest request,Model md)throws Exception{
		return "page/dept/adddept";
	}
	@RequestMapping("/update_dept_jsp")
	public String update(HttpServletRequest request,Model md)throws Exception{
		return "page/dept/updatedept";
	}
	
	@RequestMapping("/adddept")
	public String addDept(HttpServletRequest request,HttpServletResponse response) {
		String name = request.getParameter("name");
		String remark = request.getParameter("remark");
		Dept dept = new Dept();
		dept.setName(name);
		dept.setRemark(remark);
		boolean b = service.insert(dept);
		if (b) {
			return "/page/success";
		}else {
			return "/page/false";
		}
	}
	
	@RequestMapping("/deletedept")
	public String deleteDept(HttpServletRequest request,HttpServletResponse response) {
		String id = request.getParameter("id");
		Dept dept = new Dept();
		dept.setId(id);
		boolean b = service.delete(dept);
		if (b) {
			return "/page/success";
		}else {
			return "/page/false";
		}	
	}	
	@RequestMapping("/updatedept")
	public String updateDept(HttpServletRequest request,HttpServletResponse response) {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String remark = request.getParameter("remark");
		Dept dept = new Dept();
		dept.setId(id);
		dept.setName(name);
		dept.setRemark(remark);
		boolean b = service.update(dept);
		if (b) {
			return "page/success";
		}else {
			return "page/false";
		}	
	}
	
	@RequestMapping("/finddept")
	public String finddept(HttpServletRequest request,HttpServletResponse response) {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String remark = request.getParameter("remark");
		Dept dept = new Dept();
		dept.setId(id);
		dept.setName(name);
		dept.setRemark(remark);
		List<Dept> list = service.find(dept);
		if (list.get(0) != null) 
		{ 
			request.setAttribute("list", list);
			return "page/dept/listdept";
		}else 
		{ 
			return "page/false"; 
		}	
	}
}
