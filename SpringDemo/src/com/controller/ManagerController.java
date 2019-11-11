package com.controller;


import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	public void add(Employee_inf em,HttpServletRequest Reuqest,HttpServletResponse Response)throws Exception{
		em.setId(com.common.utils.UUID.uid());
		String name =Reuqest.getParameter("name");
		String sfz =Reuqest.getParameter("crad_id");
		em.setName(name);
		em.setCrad_id(sfz);
		EmployeeService.add(em);
	}
	
	/**
	 * 查询员工
	 * @param em
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findall")
	@ResponseBody
	public List<Employee_inf> findall(Employee_inf em)throws Exception{
		List<Employee_inf> list= EmployeeService.FindALL();
		System.out.println(list);
		return list;
	}
	
	/*
	 * 删除员工
	 */
	@RequestMapping("/delmanp")
	@ResponseBody
	public void delmanp(Employee_inf o)throws Exception{
		EmployeeService.delete_emp(o);
	}
	
}