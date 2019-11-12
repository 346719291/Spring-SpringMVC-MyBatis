package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.common.mybatis.Page;
import com.entity.Job;
import com.repository.JobDao;

@Service("JobService")
public class JobServiceImpl implements JobService{

	@Autowired
	private JobDao jobDao;
	@Override
	public boolean insert(Job job) {
		return jobDao.addjob(job);
	}

	@Override
	public boolean delete(Job job) {
		return jobDao.deletejob(job);
	}

	@Override
	public boolean update(Job job) {
		return jobDao.updatejob(job);
	}

	@Override
	public List<Job> find(Job job) {
		return jobDao.find(job);
	}

	@Override
	public Page<Job> findByPage(Job job, Page<Job> page) {
		return jobDao.findbypage(job, page);
	}

	public List<Job> findsome(Job job) {
		return jobDao.findsome(job);
	}

}
