package com.baeldung.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import java.util.Date;

@XmlRootElement
public class Invoice {
    @NotNull
    @Size(min = 1, max = 100)
    private String description;

    @NotNull
    @Min(0)
    private Integer quantity;

    @NotNull
    private Double grossAmount;

    @NotNull
    private Double holding;

    @NotNull
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private Date invoiceDate;

    private String total;

    // Getters and Setters
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getGrossAmount() {
        return grossAmount;
    }

    public void setGrossAmount(Double grossAmount) {
        this.grossAmount = grossAmount;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Double getHolding() {
        return holding;
    }

    public void setHolding(Double holding) {
        this.holding = holding;
    }

    public Date getInvoiceDate() {
        return invoiceDate;
    }

    public void setInvoiceDate(Date invoiceDate) {
        this.invoiceDate = invoiceDate;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }
}
