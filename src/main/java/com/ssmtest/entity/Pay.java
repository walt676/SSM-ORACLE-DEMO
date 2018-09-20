package com.ssmtest.entity;

import oracle.sql.DATE;

public class Pay {
    private Integer payId;
    private Integer customerId;
    private Integer bankId;
    private Double money;
    private String paydate;
    private String pay_type;
    private Integer spId;

    public Pay() {
        super();
    }

    public Pay(Integer customerId, Integer bankId, Double money, String paydate, String pay_type, Integer spId) {
        super();
        this.customerId = customerId;
        this.bankId = bankId;
        this.money = money;
        this.paydate = paydate;
        this.pay_type = pay_type;
        this.spId = spId;
    }

    public Integer getPayId() {
        return payId;
    }

    public void setPayId(Integer payId) {
        this.payId = payId;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public Integer getBankId() {
        return bankId;
    }

    public void setBankId(Integer bankId) {
        this.bankId = bankId;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public String getPaydate() {
        return paydate;
    }

    public void setPaydate(String paydate) {
        this.paydate = paydate;
    }

    public String getPay_type() {
        return pay_type;
    }

    public void setPay_type(String pay_type) {
        this.pay_type = pay_type;
    }

    public Integer getSpId() {
        return spId;
    }

    public void setSpId(Integer spId) {
        this.spId = spId;
    }

    @Override
    public String toString() {
        return "Pay{" +
                "payId=" + payId +
                ", customerId=" + customerId +
                ", bankId=" + bankId +
                ", money=" + money +
                ", paydate=" + paydate +
                ", pay_type='" + pay_type + '\'' +
                ", spId=" + spId +
                '}';
    }
}
