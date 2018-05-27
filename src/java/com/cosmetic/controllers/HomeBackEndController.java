/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.controllers;

import com.cosmetic.entities.CreateAccount;
import com.cosmetic.entities.User;
import com.cosmetic.entities.UserInfo;
import com.cosmetic.models.OrderModel;
import com.cosmetic.models.UserInfoModel;
import com.cosmetic.models.UserModel;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author
 */
@Controller
@RequestMapping(value = "/homebackend")
public class HomeBackEndController {

    private UserModel userModel;
    private OrderModel orderModel;
    private UserInfoModel userInfoModel;

    public HomeBackEndController() {
        userModel = new UserModel();
        orderModel = new OrderModel();
        userInfoModel = new UserInfoModel();
    }

    /**
     * Xư lí khi đăng nhập
     *
     * @return
     */
    @RequestMapping(value = "initBackendLogin")
    public ModelAndView initBackendLogin() {
        ModelAndView model = new ModelAndView("admin/login1");
        User user = new User();
        model.addObject("user", user);
        return model;
    }
    
    /**
     * create an account
     *
     * @param userInfo
     * @param mm
     * @return
     */
    @RequestMapping(value = "createAccount")
    public String insertUserInfo(@ModelAttribute("createAccount") CreateAccount createAccount, ModelMap mm) {
        boolean check = userInfoModel.insertCreateAccount(createAccount);
        if (check) {
            return "redirect:homeBackend.htm";
        } else {
            mm.put("message", "Tạo tài khoản không thành công");
            return "admin/login1";
        }
    }

    /**
     * Kiểm tra thông tin đăng nhập
     *
     * @param user
     * @param mm
     * @param session
     * @return
     */
    @RequestMapping(value = "backendLogin")
    public String loginBackend(@ModelAttribute("user") User user, ModelMap mm, HttpSession session){
        boolean result = false;
        result = userModel.checkLogin(user);
        if(result){
            session.setAttribute("user", user.getUserName());
            return "redirect: homeBackend.htm";
        } else {
            mm.put("message", "Sai thông tin đăng nhập.");
            return "admin/login1";
        }
    }

    /**
     * Hiển thị thông tin trang chủ backend
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "homeBackend")
    public ModelAndView homeBacend(HttpSession session) {
        ModelAndView model = new ModelAndView("admin/index1");
        float totalMoney = 0;
        int totalFeeback;
        if (Common.check(session)) {
            model = new ModelAndView("admin/index1");
            long totalUser = userModel.getTotalUser();
            long totalOrder = orderModel.getTotalOrder();
            model.getModelMap().put("totalUser", totalUser);
            model.getModelMap().put("totalOrder", totalOrder);
            return model;
        } else {
            model = new ModelAndView("admin/login1");
            User user = new User();
            model.getModelMap().put("user", user);
            CreateAccount createAccount = new CreateAccount();
            model.getModelMap().put("createAccount", createAccount);
        }
        return model;
    }

}
