package com.ssmtest.controller;

import com.ssmtest.service.BALService;
import com.ssmtest.service.BGLService;
import com.ssmtest.service.BankTransferService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;

@SessionAttributes
@Controller
public class LedgerController {
    @Resource
    private BGLService bglService;
    @Resource
    private BALService balService;
    @Resource
    BankTransferService bankTransferService;

    @RequestMapping("/bankGeneralTable")
    public String bglTable(@RequestParam(value = "currentPage",defaultValue = "1",required = false)int currentPage, Model model){
        model.addAttribute("bglpagemsg",bglService.findByPage(currentPage));
        return "bankGeneralTable";
    }
    @RequestMapping("/bankAbnormalTable")
    public String balTable(@RequestParam(value = "currentPage",defaultValue = "1",required = false)int currentPage,Model model){
        model.addAttribute("balpagemsg",balService.findByPage(currentPage));
        return "bankAbnormalTable";
    }

    @RequestMapping("/bankTransfer")
    public String bankTransfer(@RequestParam(value = "currentPage",defaultValue = "1",required = false)int currentPage, Model model){
        model.addAttribute("btpagemsg",bankTransferService.findByPage(currentPage));
        return "bankTransfer";
    }
}
