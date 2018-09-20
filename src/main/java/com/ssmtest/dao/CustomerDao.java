package com.ssmtest.dao;

import com.ssmtest.entity.Customer;
import com.ssmtest.entity.Device;
import com.ssmtest.entity.ShouldPay;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface CustomerDao {

    Customer selectCustomerByPrimaryKey(Integer id);

    int selectCustomerCount();

    int deleteByPrimaryKey(Integer id);

    List<Customer> selectCustomerList();

    int insertSelective(Customer record);

    List<Customer> findByPage(HashMap<String , Object> map);

    int updateByPrimaryKeySelective(Customer record);

    List<Device> getDevices(Integer id);

    List<ShouldPay> getShouldPayById(Integer id);
}
