package com.ssmtest.entity;

import com.ssmtest.service.CustomerService;
import oracle.sql.DATE;

import java.util.List;

public class Customer {
    Integer id;
    String customerName;
    String tel;
    String address;
    DATE regDate;
    Double balance;

    private List<Device> devices;

    public Integer getId() {
        return id;
    }

    public Customer() {
        super();
    }

    public Customer(String customerName, String tel, String address,DATE regDate) {
        super();
        this.customerName = customerName;
        this.tel = tel;
        this.address = address;
        this.regDate = regDate;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    public DATE getRegDate() {
        return regDate;
    }

    public void setRegDate(DATE regDate) {
        this.regDate = regDate;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public List<Device> getDevices() {
        return devices;
    }

    public void setDevices(List<Device> devices) {
        this.devices = devices;
    }
}
