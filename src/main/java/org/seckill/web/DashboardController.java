package org.seckill.web;

import org.seckill.entity.Seckill;
import org.seckill.entity.SuccessKilled;
import org.seckill.entity.User;
import org.seckill.service.DashboardService;
import org.seckill.service.SeckillService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Date;
import java.util.List;

/**
 * Created by huyiqing on 16/12/19.
 */
@Controller
@RequestMapping("/seckill/dashboard")
public class DashboardController {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private DashboardService dashboardService;

    @RequestMapping(value = "/overview", method = RequestMethod.GET)
    public String dashboard(Model model){
        return "backend/dashboard";
    }

    @RequestMapping(value = "/{param}", method = RequestMethod.GET)
    public String dashboard_x(@PathVariable("param") String param, Model model){
        if (param.equals("list")) {
            List<Seckill> seckillList = dashboardService.getSeckillList();
            model.addAttribute("seckillList", seckillList);
        }
        if (param.equals("user")) {
            List<User> userList = dashboardService.getUserList();
            model.addAttribute("userList", userList);
        }
        if (param.equals("success_list")) {
            List<SuccessKilled> success_list = dashboardService.getSuccessKilledList();
            model.addAttribute("success_list", success_list);
        }
        Date timenow = new Date();
        model.addAttribute("timenow", timenow);
        return "backend/dash-" + param;
    }
}
