package com.baidu.service;

import java.util.List;

import com.baidu.pojo.City;
import com.baidu.pojo.Weight;

/**
*@author:张长青
*@version 创建时间: 2018年5月21日 上午9:28:38
*类说明
*/
public interface CityServiceI {
	/*城市列表行为*/
	List<City> getCityList(String sort);
	/*权重列表行为*/
	Weight getWeightList();
	/*设置权重行为*/
	void getUpdateWight(Weight w);
	/*修改城市得分*/
	boolean toUpdate(City c);
	/*回显城市得分*/
	City UpdateCity(int cid);

}
