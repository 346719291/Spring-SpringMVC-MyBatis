package com.service;

import java.util.List;

import com.entity.Goodprice;
import com.entity.User;
import com.service.base.BaseService;

public interface GoodpriceService extends BaseService<Goodprice>{
	public boolean insertprice(Goodprice o);
	public List<User> findbylistid();
}
