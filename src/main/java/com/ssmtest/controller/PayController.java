package com.ssmtest.controller;

import com.ssmtest.service.PayService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;

@SessionAttributes
@Controller
public class PayController {
    @Resource
    private PayService payService;

    @RequestMapping("/payTable")
    public String payTable(@RequestParam("customerId") int customerId,Model model){
        model.addAttribute("payList",payService.getPays(customerId));
        return "payTable";
    }

}
