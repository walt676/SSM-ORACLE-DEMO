package com.ssmtest.dao;

import java.util.Map;

public interface StoredProcedureDao {

    Map<String,String> procedureFir(Map<String,Object> parms);

    Map<String,String> procedureSec(Map<String,Object> parms);

    Map<String,String> procedureThird(Map<String,Object> parms);

    Map<String,String> procedureFourth(Map<String,Object> parms);
}
