package com.ssmtest.dao;

import com.ssmtest.entity.BankTransfer;

import java.util.HashMap;
import java.util.List;

public interface BankTransferDao {

    List<BankTransfer> findByPage(HashMap<String,Object> map);

    int getBankTransferSize();
}
