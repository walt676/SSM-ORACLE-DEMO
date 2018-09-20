package com.ssmtest.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Date;

public class BankGeneralLedger {
    private Integer bgl_id;
    private Integer bankId;
    private String checkDate;
    private Integer bank_count;
    private Double bank_amount;
    private Integer enterprise_count;
    private Double enterprise_amount;
    private String is_success;

    public BankGeneralLedger() {
        super();
    }

    public BankGeneralLedger(Integer bankId, String checkDate,
                             Integer bank_count, Double bank_amount,
                             Integer enterprise_count, Double enterprise_amount,
                             String is_success) {
       super();
        this.bankId = bankId;
        this.checkDate = checkDate;
        this.bank_count = bank_count;
        this.bank_amount = bank_amount;
        this.enterprise_count = enterprise_count;
        this.enterprise_amount = enterprise_amount;
        this.is_success = is_success;
    }

    public Integer getBgl_id() {
        return bgl_id;
    }

    public void setBgl_id(Integer bgl_id) {
        this.bgl_id = bgl_id;
    }

    public Integer getBankId() {
        return bankId;
    }

    public void setBankId(Integer bankId) {
        this.bankId = bankId;
    }

    public String getCheckDate() {
        return checkDate;
    }

    public void setCheckDate(String checkDate) {
        this.checkDate = checkDate;
    }

    public Integer getBank_count() {
        return bank_count;
    }

    public void setBank_count(Integer bank_count) {
        this.bank_count = bank_count;
    }

    public Double getBank_amount() {
        return bank_amount;
    }

    public void setBank_amount(Double bank_amount) {
        this.bank_amount = bank_amount;
    }

    public Integer getEnterprise_count() {
        return enterprise_count;
    }

    public void setEnterprise_count(Integer enterprise_count) {
        this.enterprise_count = enterprise_count;
    }

    public Double getEnterprise_amount() {
        return enterprise_amount;
    }

    public void setEnterprise_amount(Double enterprise_amount) {
        this.enterprise_amount = enterprise_amount;
    }

    public String getIs_success() {
        return is_success;
    }

    public void setIs_success(String is_success) {
        this.is_success = is_success;
    }

    @Override
    public String toString() {
        return "BankGeneralLedger{" +
                "bgl_id=" + bgl_id +
                ", bankId=" + bankId +
                ", checkDate=" + checkDate +
                ", bank_count=" + bank_count +
                ", bank_amount=" + bank_amount +
                ", enterprise_count=" + enterprise_count +
                ", enterprise_amount=" + enterprise_amount +
                ", is_success='" + is_success + '\'' +
                '}';
    }
}
