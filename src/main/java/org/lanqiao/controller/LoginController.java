package org.lanqiao.controller;

import org.lanqiao.pojo.User;
import org.lanqiao.service.IUserService;
import org.lanqiao.utils.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @Auther: WDS
 * @Date: 2019/1/12 20:20
 * @Description:
 */
@Controller
public class LoginController {

    @Autowired
    IUserService userService;

    @RequestMapping("/login.do")
    public String login(HttpServletRequest req, HttpServletResponse resp, Model model){
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if(StringUtils.isEmpty(username)){
            model.addAttribute("msg","用户名不能为空！");
            return "login";
        }
        if(username.length() > 40){
            model.addAttribute("msg","用户名不能多于40个字符！");
            return "login";
        }
        if(StringUtils.isEmpty(password)){
            model.addAttribute("msg","密码不能为空！");
            return "login";
        }
        String pwdMD5 = MD5Utils.MD5(password);
        User user = User.builder().build();
        user.setUsername(username);
        user.setPassword(pwdMD5);
        User retUser = userService.getUser(user);
        if(retUser == null){
            model.addAttribute("msg","用户名或密码错误，请重新输入！");
            return "login";
        }else{
            HttpSession session = req.getSession();
            session.setAttribute("user",retUser);
            return "index";
        }
    }
}
