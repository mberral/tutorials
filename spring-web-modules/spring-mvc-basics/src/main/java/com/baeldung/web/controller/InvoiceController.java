package com.baeldung.web.controller;

import com.baeldung.model.Invoice;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

@Controller
public class InvoiceController {

    Map<Long, Invoice> invoiceMap = new HashMap<>();

    @RequestMapping(value = "/invoice", method = RequestMethod.GET)
    public ModelAndView showInvoice() {
        return new ModelAndView("invoiceForm", "invoice", new Invoice());
    }

    @RequestMapping(value = "/invoiceSummary", method = RequestMethod.POST)
    public String submit(@ModelAttribute("invoice") final Invoice invoice, final BindingResult result, final ModelMap model) {
        if (result.hasErrors()) {
            return "error";
        }

        Double subTotal = invoice.getQuantity() * invoice.getGrossAmount();
        Double holdingAmount = (subTotal * invoice.getHolding() / 100);
        Double total = subTotal - holdingAmount;

        DecimalFormat df = new DecimalFormat("#.00");
        invoice.setTotal(df.format(total));

        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        String formattedDate = sdf.format(invoice.getInvoiceDate());

        model.addAttribute("invoiceDate", formattedDate);
        model.addAttribute("description", invoice.getDescription());
        model.addAttribute("quantity", invoice.getQuantity());
        model.addAttribute("grossAmount", invoice.getGrossAmount());
        model.addAttribute("subTotal", subTotal);
        model.addAttribute("holding", invoice.getHolding());
        model.addAttribute("holdingAmount", holdingAmount);
        model.addAttribute("total", invoice.getTotal());

        return "invoiceSummary";
    }
}
