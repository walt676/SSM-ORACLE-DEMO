package com.ssmtest.entity;

public class BankTransfer {
    private Integer bt_id;
    private Integer bankId;
    private Double payMoney;
    private String transfer_date;
    private Integer customerId;

    public BankTransfer() {
        super();
    }

    public BankTransfer(Integer bankId, Double payMoney, String transfer_date, Integer customerId) {
        super();
        this.bankId = bankId;
        this.payMoney = payMoney;
        this.transfer_date = transfer_date;
        this.customerId = customerId;
    }

    public Integer getBt_id() {
        return bt_id;
    }

    public void setBt_id(Integer bt_id) {
        this.bt_id = bt_id;
    }

    public Integer getBankId() {
        return bankId;
    }

    public void setBankId(Integer bankId) {
        this.bankId = bankId;
    }

    public Double getPayMoney() {
        return payMoney;
    }

    public void setPayMoney(Double payMoney) {
        this.payMoney = payMoney;
    }

    public String getTransfer_date() {
        return transfer_date;
    }

    public void setTransfer_date(String transfer_date) {
        this.transfer_date = transfer_date;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    @Override
    public String toString() {
        return "BankTransfer{" +
                "bt_id=" + bt_id +
                ", bankId=" + bankId +
                ", payMoney=" + payMoney +
                ", transfer_date='" + transfer_date + '\'' +
                ", customerId=" + customerId +
                '}';
    }
}
