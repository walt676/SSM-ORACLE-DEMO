package com.ssmtest.entity;

import java.util.List;

public class Device {
    private Integer deviceId;
    private Integer customerId;
    private String device_type;
    private List<MeterReader> meterReaders;

    public Device(Integer deviceId,  Integer customerId, String type) {
        this.deviceId = deviceId;
        this.customerId = customerId;
        this.device_type = type;
    }

    public Device() {super();
    }

    public List<MeterReader> getMeterReader() {
        return meterReaders;
    }

    public void setMeterReader(List<MeterReader> meterReader) {
        this.meterReaders = meterReader;
    }


    public Integer getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Integer deviceId) {
        this.deviceId = deviceId;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public String getDevice_type() {
        return device_type;
    }

    public void setDevice_type(String device_type) {
        this.device_type = device_type;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getType() {
        return device_type;
    }

    public void setType(String type) {
        this.device_type = type;
    }



    @Override
    public String toString() {
        return "device{" +
                "deviceId=" + deviceId +
                ", customerId=" + customerId +
                ", device_type='" + device_type + '\'' +
                '}';
    }
}
