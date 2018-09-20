package com.ssmtest.service;

import com.ssmtest.entity.BankTransfer;
import com.ssmtest.entity.PageBean;

import java.util.List;

public interface BankTransferService {

     PageBean<BankTransfer> findByPage(int currentPage);

    int getBankTransferSize();
}
