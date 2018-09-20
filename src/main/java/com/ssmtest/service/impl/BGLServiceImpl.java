package com.ssmtest.service.impl;

import com.ssmtest.dao.BGLDao;
import com.ssmtest.entity.Bank;
import com.ssmtest.entity.BankGeneralLedger;
import com.ssmtest.entity.PageBean;
import com.ssmtest.service.BGLService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service
public class BGLServiceImpl implements BGLService {
    @Resource
    private BGLDao bglDao;

    @Override
    public PageBean<BankGeneralLedger> findByPage(int currentPage) {
        HashMap<String,Object> map = new HashMap<String,Object>();
        PageBean<BankGeneralLedger> pageBean = new PageBean<BankGeneralLedger>();

        //封装当前页数
        pageBean.setCurrPage(currentPage);

        //封装每页数据数
        int pageSize = 6;
        pageBean.setPageSize(pageSize);

        //记录总数
        int totalSize = bglDao.getBglSize();
        pageBean.setTotalCount(totalSize);

        //封装总页数
        double tc = totalSize;
        Double num = Math.ceil(tc/pageSize);
        pageBean.setTotalPage(num.intValue());

        int startNum = ((currentPage-1)*pageSize+1);
        map.put("start",startNum );
        map.put("size", pageBean.getPageSize());
        map.put("end",( startNum + pageBean.getPageSize() -1));

        //封装每页数据
        List<BankGeneralLedger> list = bglDao.findByPage(map);
        pageBean.setLists(list);

        return pageBean;
    }

    @Override
    public int getBglSize() {
        return bglDao.getBglSize();
    }
}
