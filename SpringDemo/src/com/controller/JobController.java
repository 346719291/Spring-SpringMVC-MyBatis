package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.controller.base.BaseController;
import com.entity.Job;
import com.service.JobServiceImpl;

public class JobController extends BaseController<Job>{

	@Autowired
	private JobServiceImpl service;
	
	@RequestMapping("/add_job_jsp")
	public String add(HttpServletRequest request,Model md)throws Exception{
		return "page/job/addjob";
	}
	
	@RequestMapping("/addjob")
	public String addJob(HttpServletRequest request,HttpServletResponse response) {
		String name = request.getParameter("name");
		String remark = request.getParameter("remark");
		Job job = new Job();
		job.setName(name);
		job.setRemark(remark);
		boolean b = service.insert(job);
		if (b) {
			return "/page/success";
		}else {
			return "/page/false";
		}
	}
	
	@RequestMapping("/deletejob")
	public String deleteJob(HttpServletRequest request,HttpServletResponse response) {
		String id = request.getParameter("id");
		Job job = new Job();
		job.setId(id);
		boolean b = service.delete(job);
		if (b) {
			return "/page/success";
		}else {
			return "/page/false";
		}	
	}	
	@RequestMapping("/updateJob")
	public String updateJob(HttpServletRequest request,HttpServletResponse response) {
		String name = request.getParameter("name");
		String remark = request.getParameter("remark");
		Job job = new Job();
		job.setName(name);
		job.setRemark(remark);
		boolean b = service.update(job);
		if (b) {
			return "page/success";
		}else {
			return "page/false";
		}	
	}
	
	@RequestMapping("/findjob")
	public String find(HttpServletRequest request,HttpServletResponse response) {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String remark = request.getParameter("remark");
		Job job = new Job();
		job.setId(id);
		job.setName(name);
		job.setRemark(remark);
		List<Job> list = service.find(job);
		if (list.get(0) != null) 
		{ 
			request.setAttribute("list", list);
			return "page/job/listjob";
		}else 
		{ 
			return "page/false"; 
		}	
	}
}
