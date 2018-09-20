package com.ssmtest.entity;

public class BankAbnormalLedger {
    private Integer bal_id;
    private Integer bankId;
    private Integer bt_id;
    private Double bank_amount;
    private Double enterprise_amount;
    private String ledger_date;
    private String error_reason;
    private Integer customerId;

    public BankAbnormalLedger() {
        super();
    }

    public BankAbnormalLedger(Integer bal_id, Integer bankId, Integer bt_id, Double bank_amount, Double enterprise_amount, String ledger_date, String error_reason, Integer customerId) {
        super();
        this.bankId = bankId;
        this.bt_id = bt_id;
        this.bank_amount = bank_amount;
        this.enterprise_amount = enterprise_amount;
        this.ledger_date = ledger_date;
        this.error_reason = error_reason;
        this.customerId = customerId;
    }

    public Integer getBal_id() {
        return bal_id;
    }

    public void setBal_id(Integer bal_id) {
        this.bal_id = bal_id;
    }

    public Integer getBankId() {
        return bankId;
    }

    public void setBankId(Integer bankId) {
        this.bankId = bankId;
    }

    public Integer getBt_id() {
        return bt_id;
    }

    public void setBt_id(Integer bt_id) {
        this.bt_id = bt_id;
    }

    public Double getBank_amount() {
        return bank_amount;
    }

    public void setBank_amount(Double bank_amount) {
        this.bank_amount = bank_amount;
    }

    public Double getEnterprise_amount() {
        return enterprise_amount;
    }

    public void setEnterprise_amount(Double enterprise_amount) {
        this.enterprise_amount = enterprise_amount;
    }

    public String getLedger_date() {
        return ledger_date;
    }

    public void setLedger_date(String ledger_date) {
        this.ledger_date = ledger_date;
    }

    public String getError_reason() {
        return error_reason;
    }

    public void setError_reason(String error_reason) {
        this.error_reason = error_reason;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }
}
