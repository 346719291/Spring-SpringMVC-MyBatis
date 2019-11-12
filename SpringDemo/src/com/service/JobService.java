package com.service;

import java.util.List;

import com.entity.Job;
import com.service.base.BaseService;

public interface JobService extends BaseService<Job> {

	public List<Job> findsome(Job job);
}
