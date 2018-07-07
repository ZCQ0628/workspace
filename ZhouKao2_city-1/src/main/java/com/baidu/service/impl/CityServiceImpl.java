package com.baidu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baidu.mapper.CityMapper;
import com.baidu.pojo.City;
import com.baidu.pojo.Weight;
import com.baidu.service.CityServiceI;

/**
*@author:张长青
*@version 创建时间: 2018年5月21日 上午9:29:32
*类说明
*/
@Service
public class CityServiceImpl implements CityServiceI {

	/*实例化mapper*/
	@Autowired
	private CityMapper cityMapper;
	
	/*获取城市列表行为*/
	@Override
	public List<City> getCityList(String sort) {
		// TODO Auto-generated method stub
		return cityMapper.getCityList(sort);
	}
	/*获取权重列表行为*/
	@Override
	public Weight getWeightList() {
		// TODO Auto-generated method stub
		return cityMapper.getWeightList();
	}
	/*设置权重*/
	@Override
	public void getUpdateWight(Weight w) {
		// TODO Auto-generated method stub
		cityMapper.getUpdateWight(w);
	}
	/*修改城市得分*/
	@Override
	public boolean toUpdate(City c) {
		// TODO Auto-generated method stub
		return cityMapper.toUpdate(c);
	}
	/*回显城市得分*/
	@Override
	public City UpdateCity(int cid) {
		// TODO Auto-generated method stub
		return cityMapper.UpdateCity(cid);
	}

}
