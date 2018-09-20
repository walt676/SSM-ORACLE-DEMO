package com.ssmtest.entity;

import java.sql.Date;

public class MeterReader {
    private Integer id;
    private Integer deviceId;
    private String recordDate;
    private float money;

    public MeterReader() {
    }

    public String getRecordDate() {
        return recordDate;
    }

    public void setRecordDate(String recordDate) {
        this.recordDate = recordDate;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Integer deviceId) {
        this.deviceId = deviceId;
    }


    public float getMoney() {
        return money;
    }

    public void setMoney(float money) {
        this.money = money;
    }

    @Override
    public String toString() {
        return "MeterReader{" +
                "id=" + id +
                ", deviceId=" + deviceId +
                ", recordDate=" + recordDate +
                ", money=" + money +
                '}';
    }
}
