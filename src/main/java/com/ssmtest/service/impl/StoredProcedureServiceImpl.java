package com.ssmtest.service.impl;

import com.ssmtest.dao.CustomerDao;
import com.ssmtest.dao.StoredProcedureDao;
import com.ssmtest.service.StoredProcedureService;
import com.sun.xml.internal.ws.developer.Serialization;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Service
public class StoredProcedureServiceImpl implements StoredProcedureService{
    @Resource
    private StoredProcedureDao storedProcedureDao;

    @Override
    public String procedureFir(Integer CID) {
        Map<String,Object> params = new HashMap<String, Object>();
        params.put("CID",CID);
        params.put("TO_IDEA",new String());
        Map<String,String> map = storedProcedureDao.procedureFir(params);
        return (String) params.get("TO_IDEA");
    }

    @Override
    public String procedureSec(Integer spid,Double paymoney,Integer bankid) {
        Map<String,Object> params = new HashMap<String,Object>();
        params.put("SPID",spid);
        params.put("payMoney",paymoney);
        params.put("bankId",bankid);
        params.put("TO_IDEA",new String());
        Map<String,String> map = storedProcedureDao.procedureSec(params);
        return (String) params.get("TO_IDEA");
    }

    @Override
    public String procedureThird(Integer spid) {
        Map<String,Object> params = new HashMap<String, Object>();
        params.put("SPID",spid);
        params.put("TO_IDEA",new String());
        Map<String,String> map = storedProcedureDao.procedureThird(params);
        return (String) params.get("TO_IDEA");
    }

    @Override
    public String procedureFourth(Integer bankId, Integer total_deal_num, Double total_deal_fee,String ledger_date) {
        Map<String,Object> params = new HashMap<String,Object>();
        params.put("bankId",bankId);
        params.put("total_deal_num",total_deal_num);
        params.put("total_deal_fee",total_deal_fee);
        params.put("ledger_date",ledger_date);
        params.put("TO_IDEA",new String());
        Map<String,String> map = storedProcedureDao.procedureFourth(params);
        return (String) params.get("TO_IDEA");
    }
}
