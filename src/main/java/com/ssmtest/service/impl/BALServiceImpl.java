package com.ssmtest.service.impl;

import com.ssmtest.dao.BALDao;
import com.ssmtest.entity.BankAbnormalLedger;
import com.ssmtest.entity.PageBean;
import com.ssmtest.service.BALService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BALServiceImpl implements BALService {

    @Resource
    private BALDao balDao;

    @Override
    public int getBalSize() {
        return balDao.getBalSize();
    }

    @Override
    public PageBean<BankAbnormalLedger> findByPage(int currentPage) {
        HashMap<String,Object> map = new HashMap<>();
        PageBean<BankAbnormalLedger> pageBean = new PageBean<BankAbnormalLedger>();

        //封装当前页数
        pageBean.setCurrPage(currentPage);

        //封装每页数据数量
        int pageSize = 6;
        pageBean.setPageSize(pageSize);

        //封装记录总数
        int totalSize = balDao.getBalSize();
        pageBean.setTotalCount(totalSize);

        //封装总页数
        double tc = totalSize;
        Double num = Math.ceil(tc/pageSize);
        pageBean.setTotalPage(num.intValue());

        int startNum = ((currentPage-1)*pageSize+1);
        map.put("start",startNum );
        map.put("size", pageBean.getPageSize());
        map.put("end",( startNum + pageBean.getPageSize() -1));

        //封装当前页数据
        List<BankAbnormalLedger> list = balDao.findByPage(map);
        pageBean.setLists(list);

        return pageBean;
    }


}
