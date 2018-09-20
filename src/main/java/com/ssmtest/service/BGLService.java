package com.ssmtest.service;

import com.ssmtest.entity.BankGeneralLedger;
import com.ssmtest.entity.PageBean;

import java.util.HashMap;
import java.util.List;

public interface BGLService {

    PageBean<BankGeneralLedger> findByPage(int currentPage);

    int getBglSize();
}
