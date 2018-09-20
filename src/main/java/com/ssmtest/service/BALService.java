package com.ssmtest.service;

import com.ssmtest.entity.BankAbnormalLedger;
import com.ssmtest.entity.PageBean;

import java.util.List;

public interface BALService {

    PageBean<BankAbnormalLedger> findByPage(int currentPage);

    int getBalSize();

}
