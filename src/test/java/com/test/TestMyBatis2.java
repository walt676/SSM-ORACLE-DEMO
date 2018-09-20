package com.test;


import javax.annotation.Resource;

import com.ssmtest.dao.BankTransferDao;
import com.ssmtest.entity.Customer;
import com.ssmtest.entity.PageBean;
import com.ssmtest.service.*;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.ssmtest.entity.User;

@RunWith(SpringJUnit4ClassRunner.class) // 表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class TestMyBatis2 {
	//TestMyBatis2类定义的日志信息就能够显示出来了
	private static Logger logger = Logger.getLogger(TestMyBatis2.class);

	@Resource
	private UserService userService = null;
	@Resource
	private CustomerService customerService = null;
	@Resource
	private DeviceService deviceService = null;
	@Resource
	private PayService payService=null;
	@Resource
	private BGLService bglService = null;
    @Resource
    private StoredProcedureService storedProcedureService = null;
	@Resource
	private BankTransferService bankTransferService = null;
	@Test
	public void test() {
		User user = userService.selectByPrimaryKey(1);
		PageBean<User> pageBean = userService.findByPage(2);
		PageBean<Customer> pageBean2 = customerService.findByPage(1);

		System.out.println("******");
		logger.info(JSON.toJSONString(
				bankTransferService.findByPage(2)
		));//JSon格式的内容
		System.out.println("******");
	}
}
