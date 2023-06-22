package com.swjd.controller;

import com.mysql.jdbc.StringUtils;
import com.swjd.pojo.Customer;
import com.swjd.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@RestController
@ComponentScan("com.swjd.mapper")
public class CustomerController {
    @Autowired
    private CustomerService customerService;


    //用户登录
    @PostMapping("/toLogin")
//    @GetMapping("/toLogin")
    public Integer toLogin(@RequestBody Customer customer, HttpSession session){
        session.setAttribute("loginCustomerUserName",customer.getUsername());
        session.setAttribute("loginCustomerPassWord",customer.getPassword());
        System.out.println("用户输入的账号密码:"+customer);
        String username = customer.getUsername();
        String password = customer.getPassword();
//        //账号密码不能为空
//        if (StringUtils.isNullOrEmpty(username)||StringUtils.isNullOrEmpty(password)){
//            System.out.println("0");
//            session.invalidate();
//            System.out.println(customer);
//                return 0;
//        }
        //先根据username查询账号是否存在
        Customer customer1 = customerService.query().eq("username", username).one();
        System.out.println("根据输入的账号查询到的信息："+customer1);
//        String username1 = customer1.getUsername();
//        String password1 = customer1.getPassword();
        //输入的账号不存在
        if (username.length()==0||password.length()==0) {
            System.out.println("请输出账号密码");
            return 0;
        }else if (customer1==null){
            System.out.println("账号不存在："+"1");
                return 1;
        }else if (username.equals(customer1.getUsername()) && !password.equals(customer1.getPassword())){
            System.out.println("密码错误："+"2");
            return 2;
        }else if (username.equals(customer1.getUsername()) && password.equals(customer1.getPassword())){
            System.out.println("账号密码正确："+"3");
            return 3;
        }else{
            System.out.println("4");
            return 4;
        }

    }

    //管理员页面添加用户
    @PostMapping("/addCustomer")
    public void addCustomer(@RequestBody Customer customer){
        customerService.save(customer);
        System.out.println(customer);
    }
    //查询所有用户信息
    @RequestMapping("/findCustomerAll")
    public List<Customer> findUserAll(){
        return customerService.list();
    }

    //注册用户
    @PostMapping ("/toRegister")
    public Integer registerCustomer(@RequestBody Customer customer){
        System.out.println(customer);
        String username=customer.getUsername();
        String password=customer.getPassword();
        String checkpass = customer.getCheckpass();
        //通过用户输入的账号查找相关信息
        Customer customer1 = customerService.query().eq("username", username).one();
        System.out.println(customer1);
        //0.账号或密码为空
        if (username.length()==0||password.length()==0){
            System.out.println("账号或密码没有输入："+"0");
            return 0;
            //1.查不到账号信息，直接注册
        }else if (customer1==null&&password.equals(checkpass)){
                customerService.save(customer);
                System.out.println("注册成功："+"1");
                return 1;
            //2.账号不为空,判断一下是否注册，返回给前端一个值，该账号已注册
        }else if (username.equals(customer1.getUsername())) {
            System.out.println("该账号已经注册：" + "2");
            return 2;
            //3.用户两次密码输入不一样
        }else if (!password.equals(checkpass)){
            System.out.println("两次密码输入不一样，请重新输入密码");
            return 3;
            } else{
            return 4;
        }
    }

    //管理员根据Id删除用户信息
    @DeleteMapping("/deleteCustomerById/{id}")
    public void deleteCustomerById(@PathVariable("id") Integer id) {
        customerService.removeById(id);
    }

    //管理员页面修改用户信息
    @PutMapping("/updateCustomer")
    public void updateCustomer(@RequestBody Customer customer){
        customerService.updateById(customer);
    }

    //退出清除session缓存
    //@GetMapping("/loginOut")
    @RequestMapping(path = "/loginOut",method = RequestMethod.GET)
    public void loginOut( HttpServletRequest request,HttpServletResponse response) throws IOException {
        System.out.println("调用退出方法");
        HttpSession session = request.getSession();
        session.invalidate();
//        Object loginCustomerUserName = session.getAttribute("loginCustomerUserName");
//        Object loginCustomerPassWord = session.getAttribute("loginCustomerPassWord");
//        Object loginAdminUserName = session.getAttribute("loginAdminUserName");
//        Object loginAdminPassWord = session.getAttribute("loginAdminPassWord");
//        session.removeAttribute((String) loginCustomerUserName);
//        session.removeAttribute((String) loginCustomerPassWord);
//        session.removeAttribute((String) loginAdminUserName);
//        session.removeAttribute((String) loginAdminPassWord);
        //客户端识别服务端发送过来的302请求，会重新发送一次请求
//        response.sendRedirect("http://localhost:8080/index.html");
//        ModelAndView mv = new ModelAndView("/**/login.html");
//        return "redirect:/login";
        response.sendRedirect("/login.html");
    }
}
