package com.ssmtest.entity;

public class ShouldPay {
    private Integer spId;
    private Integer deviceId;
    private String spDate;
    private Double total_fee;

    public ShouldPay() {
        super();
    }

    public ShouldPay( Integer deviceId, String spDate, Double total_fee) {
        super();
        this.deviceId = deviceId;
        this.spDate = spDate;
        this.total_fee = total_fee;
    }

    public Integer getSpId() {
        return spId;
    }

    public void setSpId(Integer spId) {
        this.spId = spId;
    }

    public Integer getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Integer deviceId) {
        this.deviceId = deviceId;
    }

    public String getSpDate() {
        return spDate;
    }

    public void setSpDate(String spDate) {
        this.spDate = spDate;
    }

    public Double getTotal_fee() {
        return total_fee;
    }

    public void setTotal_fee(Double total_fee) {
        this.total_fee = total_fee;
    }

    @Override
    public String toString() {
        return "ShouldPay{" +
                "spId=" + spId +
                ", deviceId=" + deviceId +
                ", spDate='" + spDate + '\'' +
                ", total_fee=" + total_fee +
                '}';
    }
}
