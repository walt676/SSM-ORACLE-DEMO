package com.ssmtest.service;

import java.util.Map;

public interface StoredProcedureService {

//    存储过程1
    String procedureFir(Integer CID);
//    存储过程2缴费
    String procedureSec(Integer spid,Double paymoney,Integer bankid);
//    存储过程3冲正
    String procedureThird(Integer spid);
//    存储过程45
    String procedureFourth(Integer bankId,Integer total_deal_num,Double total_deal_fee,String ledger_date);
}
