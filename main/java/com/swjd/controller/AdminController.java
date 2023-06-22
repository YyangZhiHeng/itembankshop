package com.swjd.controller;

import com.mysql.jdbc.StringUtils;
import com.swjd.pojo.Customer;
import com.swjd.pojo.User;
import com.swjd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
//@ResponseBody+@Controller
public class AdminController {
    @Autowired
    private UserService userService;

    //管理员登入
    @PostMapping("/toAdminLogin")
    public Integer toLogin(@RequestBody User user, HttpSession session){
        System.out.println(user);
        session.setAttribute("loginAdminUserName",user.getUsername());
        session.setAttribute("loginAdminPassWord",user.getPassword());
        String username = user.getUsername();
        String password = user.getPassword();
        //账号密码不能为空
        if (StringUtils.isNullOrEmpty(username)||StringUtils.isNullOrEmpty(password)){
            System.out.println("a");
            return 0;
        }
        //账号不存在
        User user1 = userService.query().eq("username", username).one();
        //账号错误，用户不存在
        if (user1==null){
            return 1;
        }
        //密码错误
        if (!user1.getPassword().equals(password)){
            return 2;
        }
        //登录成功
        if (user1.getUsername().equals(username)&&user1.getPassword().equals(password)) {
            return 3;
        }
        return 4;
    }

    //修改管理员密码
    @PutMapping("/updateAdminPsw")
    /*
    * @RequestBody:接收前端页面post请求封装在java对象里的json数据，以java对象的方式接收，也可以接收String Integer
    * */
    public void updateAdminPsw(@RequestBody User user){
                userService.updateById(user);
    }
    //查询管理员信息
    @RequestMapping("/findAdminAll")
    public List<User> findUserAll(){
        return userService.list();
    }

    //跳转注册页面
    //@GetMapping(value="/toRegister")
    @RequestMapping(value = "/toRegister",method = RequestMethod.GET)
    public ModelAndView toRegister(){
        ModelAndView mv = new ModelAndView("register.html");
        return mv;
    }

}
