package com.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.controller.base.BaseController;
import com.entity.Employee_inf;
import com.service.Employee_infServiceImpl;

/**
 * 员工管理
 * @author xsp
 *
 */
@Controller
@RequestMapping("/manager")
public class ManagerController extends BaseController<Object>{
	@Autowired
	private Employee_infServiceImpl EmployeeService;
	
	/*
	 * 添加员工
	 */
	@RequestMapping("/add_em")
	@ResponseBody
	public String add(Employee_inf em)throws Exception{
		EmployeeService.add(em);
		return "page/middel";
	}
	
	/**
	 * 查询员工
	 * @param em
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findall")
	@ResponseBody
	public String findall(Employee_inf em)throws Exception{
		List<Employee_inf> list= EmployeeService.FindALL();
		System.out.println(list);
		return "page/middel";
	}
	
	
}