package com.ssmtest.service;

import com.ssmtest.entity.Customer;
import com.ssmtest.entity.Device;
import com.ssmtest.entity.PageBean;
import com.ssmtest.entity.ShouldPay;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface CustomerService {

    Customer selectCustomerByPrimaryKey(Integer id);

    int selectCustomerCount();

    int deleteByPrimaryKey(Integer id);

    List<Customer> selectCustomerList();

    int insertSelective(Customer record);

    PageBean<Customer> findByPage(int currentPage);

    int updateByPrimaryKeySelective(Customer record);

    List<Device> getDevices(Integer id);

    List<ShouldPay> getShouldPayById(Integer id);

}
