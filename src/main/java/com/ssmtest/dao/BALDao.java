package com.ssmtest.dao;

import com.ssmtest.entity.BankAbnormalLedger;

import java.util.HashMap;
import java.util.List;

public interface BALDao {

    List<BankAbnormalLedger> findByPage(HashMap<String,Object> map);

    int getBalSize();

}
