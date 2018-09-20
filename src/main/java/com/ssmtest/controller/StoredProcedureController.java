package com.ssmtest.controller;

import com.ssmtest.service.CustomerService;
import com.ssmtest.service.StoredProcedureService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;

@SessionAttributes
@Controller
public class StoredProcedureController {
    @Resource
    private StoredProcedureService storedProcedureService;

    @RequestMapping("/SP1")
    public String sp1(@RequestParam("CID") int cid,Model model){
        model.addAttribute("message",storedProcedureService.procedureFir(cid));
        return "SP1";
    }
    @RequestMapping("/storedProcedure")
    public String storedProcedure(@RequestParam("spId") int spId,
                                  @RequestParam("paymoney") double paymoney,
                                  @RequestParam("bankId") int bankId, Model model){
        model.addAttribute("message",storedProcedureService.procedureSec(spId,paymoney,bankId));
        return "storedProcedure";
    }

    @RequestMapping("/SP3")
    public String sp3(@RequestParam("spId") int spId,Model model){
        model.addAttribute("message",storedProcedureService.procedureThird(spId));
        return "SP3";
    }
    @RequestMapping("/SP4")
    public String sp4(@RequestParam("bankId") int bankId,
                        @RequestParam("total_deal_num") int total_deal_num,
                      @RequestParam("total_deal_fee") double total_deal_fee,
                      @RequestParam("ledger_date") String ledger_date,Model model){
        model.addAttribute("message",storedProcedureService.procedureFourth(bankId,total_deal_num,total_deal_fee,ledger_date));
        return "SP4";
    }
}
