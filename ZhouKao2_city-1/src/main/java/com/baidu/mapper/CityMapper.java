package com.baidu.mapper;
/**
*@author:张长青
*@version 创建时间: 2018年5月18日 下午7:48:50
*类说明
*/

import java.util.List;

import com.baidu.pojo.City;
import com.baidu.pojo.Weight;

public interface CityMapper {
	/*城市列表行为*/
	List<City> getCityList(String sort);
	/*权重列表行为*/
	Weight getWeightList();
	/*设置权重行为*/
	void getUpdateWight(Weight w);
	/*回显城市得分*/
	City UpdateCity(int cid);
	/*修改城市得分*/
	boolean toUpdate(City c);

}
