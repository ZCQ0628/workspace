package com.baidu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baidu.pojo.City;
import com.baidu.pojo.Weight;
import com.baidu.service.CityServiceI;

/**
*@author:张长青
*@version 创建时间: 2018年5月21日 上午9:15:14
*类说明:1.十大宜居城市列表
*     2.权重设置
*     3.回显城市得分
*     4.修改城市得分
*/
@Controller
public class CityController {
	
	/*例化业务层*/
	@Autowired
	private CityServiceI cityService;
	
	/**
	 * 
	 * @param sort
	 * @param request
	 * @return
	 */
	@RequestMapping("list")
	public String getList(String sort,HttpServletRequest request) {
		//处理排序
		sort=sort==null?"cid":sort;
		//城市列表
		List<City> clist=cityService.getCityList(sort);
		/*权重列表*/
	    Weight wlist=cityService.getWeightList();
		/*装进作用域*/
		request.setAttribute("clist", clist);
		request.setAttribute("wlist", wlist);
		return "list";
	}
	/*定义权重列表行为*/
	@RequestMapping("weight")
	public String weight(HttpServletRequest request) {
		/*获取权重列表*/
		Weight list=cityService.getWeightList();
		/*放进作用域*/
		request.setAttribute("list", list);
		return "weight";
	}
	/*社会权重*/
	@RequestMapping("getUpdate")
	public String getUpdate(Weight w,HttpServletRequest request) {
		//double a=0.00001;
		/*权重之和*/
		boolean sum=w.getShwm()+w.getJjfy()+w.getGgaq()+w.getHjym()+w.getShpy()+w.getZycz()==1;
		System.out.println(w.getShwm()+w.getJjfy()+w.getGgaq()+w.getHjym()+w.getShpy()+w.getZycz());
		if(sum==true){
			cityService.getUpdateWight(w);
			/*重定向到列表*/
			return "redirect:list";
		}else {
			request.setAttribute("msg", "修改权重总和为1");
			/*重定向到权重*/
			return "redirect:weight";
		}	
	}
	/*回显城市得分*/
	@RequestMapping("UpdateCity")
	public String UpdateCity(int cid,HttpServletRequest request) {
		City city=cityService.UpdateCity(cid);
		request.setAttribute("clist", city);
		return "update";
	}
	/*修改城市得分*/
	@RequestMapping("toUpdate")
	@ResponseBody
	public boolean toUpdate(City c) {
		boolean obj=cityService.toUpdate(c);
		return obj;
	}

}
