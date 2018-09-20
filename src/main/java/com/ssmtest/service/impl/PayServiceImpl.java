package com.ssmtest.service.impl;

import com.ssmtest.dao.PayDao;
import com.ssmtest.entity.Pay;
import com.ssmtest.service.PayService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("payService")
public class PayServiceImpl implements PayService{

    @Resource
    PayDao payDao;

    @Override
    public List<Pay> getPays(Integer id) {
        return payDao.getPays(id);
    }
}
