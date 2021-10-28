package com.anotherclass.bitcamp.dumy;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.anotherclass.bitcamp.dao.user.DumyDAO;

@Service
public class DumyServiceImp implements DumyService{

	@Inject
	DumyDAO dumyDao;
	
	@Override
	public List<String> classNumberList() {
		return dumyDao.classNumberList();
	}
	
	@Override
	public int classOptionSeting(String no){
		return dumyDao.classOptionSeting(no);
	}
	
	@Override
	public List<String> optionNumber() {
		return dumyDao.optionNumber();
	}
}
