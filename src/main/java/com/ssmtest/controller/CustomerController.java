package com.ssmtest.controller;

import com.ssmtest.entity.Customer;
import com.ssmtest.entity.Device;
import com.ssmtest.service.CustomerService;
import com.ssmtest.service.DeviceService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;

@SessionAttributes
@Controller
public class CustomerController {

    @Resource
    private CustomerService customerService;
    @Resource
    private DeviceService deviceService;
    /**
     * 用户登录
     * @param id
     * @return
     * @throws Exception
     */
    @RequestMapping("/editCustomer")
    public String editCust(@RequestParam("id") int id, Model model){
        Customer customer = customerService.selectCustomerByPrimaryKey(id);
        model.addAttribute("returnCust",customer);
        return "editCustomer";
    }
    @RequestMapping("/editDevice")
    public String editDevice(@RequestParam("deviceId") int id,Model model){
        model.addAttribute("returnDevice",deviceService.selectDeviceByPrimaryKey(id));
        return "editDevice";
    }

    @RequestMapping("/saveDevice")
    public String saveDevice(Device device){
        if (device.getDeviceId()==null){
            deviceService.insertSelective(device);
        }
        else{
            deviceService.updateByPrimaryKeySelective(device);
        }
        return "redirect:customerTable";
    }

    @RequestMapping("/saveCust")
    public String saveCust(Customer customer){
        if (customer.getId()==null){
            customerService.insertSelective(customer);
        }else {
            customerService.updateByPrimaryKeySelective(customer);
        }
        return "redirect:customerTable";
    }

    @RequestMapping("/deleteCust")
    public String deleteCust(@RequestParam("id") int id){
        customerService.deleteByPrimaryKey(id);
        return "redirect:customerTable";
    }
    @RequestMapping("/addCust")
    public String addCust(Model model){
        model.addAttribute("returnCust",new Customer());
        return "editCustomer";
    }

    @RequestMapping("/addDevice")
    public String addDevice(Model model){
        model.addAttribute("returnDevice",new Device());
        return "editDevice";
    }

    @RequestMapping("/customerTable")
    public String customerTable(@RequestParam(value="currentCustomerPage",defaultValue="1",required=false)int currentCustomerPage,Model model){
        model.addAttribute("custpagemsg",customerService.findByPage(currentCustomerPage));
        return "customerTable";
    }

    @RequestMapping("/custDevice")
    public String custDevice(@RequestParam("customerId") int customerId,Model model){
        model.addAttribute("deviceList",customerService.getDevices(customerId));
        return "custDevice";
    }

    @RequestMapping("/custShouldPay")
    public String custShouldPay(@RequestParam("customerId") int customerId,Model model){
        model.addAttribute("shouldPayList",customerService.getShouldPayById(customerId));
        return "custShouldPay";
    }


}
