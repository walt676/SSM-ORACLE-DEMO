package com.ssmtest.dao;

import com.ssmtest.entity.BankGeneralLedger;

import java.util.HashMap;
import java.util.List;

public interface BGLDao {

    List<BankGeneralLedger> findByPage(HashMap<String , Object> map);

    int getBglSize();
}
