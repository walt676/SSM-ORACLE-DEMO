package com.ssmtest.dao;

import com.ssmtest.entity.Device;
import com.ssmtest.entity.MeterReader;

import java.util.List;

public interface DeviceDao {


    List<Device> getMouthMeterReaders(Integer id, String mouth);

    Device selectDeviceByPrimaryKey(Integer id);

    int insertSelective(Device device);

    int updateByPrimaryKeySelective(Device device);
//    Double getMouthMeterMoney(Integer id, String mouth);
}
