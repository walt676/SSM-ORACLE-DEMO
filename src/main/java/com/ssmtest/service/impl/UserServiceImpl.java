package com.ssmtest.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssmtest.dao.UserDao;
import com.ssmtest.entity.PageBean;
import com.ssmtest.entity.User;
import com.ssmtest.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return userDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insertSelective(User record) {
		
		return userDao.insertSelective(record);
	}

	@Override
	public User selectByPrimaryKey(Integer id) {
	
		return userDao.selectByPrimaryKey(id);
	}


	@Override
	public int updateByPrimaryKeySelective(User record) {
		return userDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public List<User> selectUserList() {
		
		return userDao.selectUserList();
	}

	@Override
	public int selectCount() {
		return userDao.selectCount();
	}

	@Override
	public User loginByUserNameAndPassword(User record) {
		
		return userDao.loginByUserNameAndPassword(record);
	}

	@Override
	public PageBean<User> findByPage(int currentPage) {
		HashMap<String,Object> map = new HashMap<String,Object>();
		PageBean<User> pageBean = new PageBean<User>();
		
	    //封装当前页数
        pageBean.setCurrPage(currentPage);
        
		//每页显示的数据
		int pageSize=5;
		pageBean.setPageSize(pageSize);
		
		//封装总记录数
		int totalCount = userDao.selectCount();
		pageBean.setTotalCount(totalCount);
		
		//封装总页数
		double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());

        int startNum = ((currentPage-1)*pageSize+1);
		map.put("start", startNum );
		map.put("size", pageBean.getPageSize());
		map.put("end", ( startNum + pageBean.getPageSize() -1) );
		//封装每页显示的数据
		List<User> lists = userDao.findByPage(map);
		pageBean.setLists(lists);
		
		return pageBean;
	}
}
