package com.ssmtest.service.impl;

import com.ssmtest.dao.CustomerDao;
import com.ssmtest.entity.Customer;
import com.ssmtest.entity.Device;
import com.ssmtest.entity.PageBean;
import com.ssmtest.entity.ShouldPay;
import com.ssmtest.service.CustomerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {

    @Resource
    private CustomerDao customerDao;

    @Override
    public Customer selectCustomerByPrimaryKey(Integer id) {
        return customerDao.selectCustomerByPrimaryKey(id);
    }

    @Override
    public int selectCustomerCount() {
        return customerDao.selectCustomerCount();
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return customerDao.deleteByPrimaryKey(id);
    }

    @Override
    public List<Customer> selectCustomerList() {
        return customerDao.selectCustomerList();
    }

    @Override
    public int insertSelective(Customer record) {
        return customerDao.insertSelective(record);
    }

    @Override
    public PageBean<Customer> findByPage(int currentPage) {
        HashMap<String,Object> map = new HashMap<String,Object>();
        PageBean<Customer> pageBean = new PageBean<Customer>();

        //封装当前页数
        pageBean.setCurrPage(currentPage);

        //每页显示的数据
        int pageSize=6;
        pageBean.setPageSize(pageSize);

        //封装总记录数
        int totalCount = customerDao.selectCustomerCount();
        pageBean.setTotalCount(totalCount);

        //封装总页数
        double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());

        int startNum = ((currentPage-1)*pageSize+1);
        map.put("start",startNum );
        map.put("size", pageBean.getPageSize());
        map.put("end",( startNum + pageBean.getPageSize() -1));
        //封装每页显示的数据
        List<Customer> lists = customerDao.findByPage(map);
        pageBean.setLists(lists);

        return pageBean;
    }

    @Override
    public int updateByPrimaryKeySelective(Customer record) {
        return customerDao.updateByPrimaryKeySelective(record);
    }

    @Override
    public List<Device> getDevices(Integer id) {
        return customerDao.getDevices(id);
    }

    @Override
    public List<ShouldPay> getShouldPayById(Integer id) {
        return customerDao.getShouldPayById(id);
    }

}
