package com.ssmtest.dao;

import com.ssmtest.entity.Pay;

import java.util.List;

public interface PayDao {
    List<Pay> getPays(Integer id);
}
