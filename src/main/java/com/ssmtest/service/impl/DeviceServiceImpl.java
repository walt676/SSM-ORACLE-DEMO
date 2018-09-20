package com.ssmtest.service.impl;

import com.ssmtest.dao.DeviceDao;
import com.ssmtest.entity.Device;
import com.ssmtest.entity.MeterReader;
import com.ssmtest.service.DeviceService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("deviceService")
public class DeviceServiceImpl implements DeviceService{

    @Resource
    private DeviceDao deviceDao;

    @Override
    public Device selectDeviceByPrimaryKey(Integer id) {
        return deviceDao.selectDeviceByPrimaryKey(id);
    }

    @Override
    public int insertSelective(Device device) {
        return deviceDao.insertSelective(device);
    }

    @Override
    public int updateByPrimaryKeySelective(Device device) {
        return deviceDao.updateByPrimaryKeySelective(device);
    }

//    @Override
//    public Double getMouthMeterMoney(Integer id, String mouth) {
//        return deviceDao.getMouthMeterMoney(id,mouth);
//    }
}
