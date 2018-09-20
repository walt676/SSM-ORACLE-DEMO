package com.ssmtest.service.impl;

import com.ssmtest.dao.BankTransferDao;
import com.ssmtest.entity.BankTransfer;
import com.ssmtest.entity.PageBean;
import com.ssmtest.service.BankTransferService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service
public class BankTransferServiceImpl implements BankTransferService {
    @Resource
    private BankTransferDao bankTransferDao;

    @Override
    public PageBean<BankTransfer> findByPage(int currentPage) {
        HashMap<String,Object> map = new HashMap<String, Object>();
        PageBean<BankTransfer> pageBean = new PageBean<BankTransfer>();

        //封装当前页数
        pageBean.setCurrPage(currentPage);

        //封装每页记录
        int pageSize = 6;
        pageBean.setPageSize(pageSize);

        //记录总数
        int totalSize = bankTransferDao.getBankTransferSize();
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
        List<BankTransfer> list = bankTransferDao.findByPage(map);
        pageBean.setLists(list);

        return pageBean;
    }

    @Override
    public int getBankTransferSize() {
        return bankTransferDao.getBankTransferSize();
    }
}
