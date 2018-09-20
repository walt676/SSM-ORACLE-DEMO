package com.ssmtest.entity;

public class Bank {
    private Integer bankId;
    private String bankName;

    public Bank() {
    }

    public Bank(Integer bankId, String bankName) {
        this.bankId = bankId;
        this.bankName = bankName;
    }

    public Integer getBankId() {
        return bankId;
    }

    public void setBankId(Integer bankId) {
        this.bankId = bankId;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }
}
