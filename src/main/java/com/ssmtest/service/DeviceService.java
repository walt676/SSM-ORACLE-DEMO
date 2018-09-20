package com.ssmtest.service;

import com.ssmtest.entity.Device;
import com.ssmtest.entity.MeterReader;

import java.util.List;

public interface DeviceService {


    Device selectDeviceByPrimaryKey(Integer id);

    int insertSelective(Device device);

    int updateByPrimaryKeySelective(Device device);

}
