package com.swjd.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException, ServletException {
        System.out.println("调用拦截器");
        HttpSession session = request.getSession();
        Object loginCustomerUserName = session.getAttribute("loginCustomerUserName");
        Object loginCustomerPassWord = session.getAttribute("loginCustomerPassWord");
        Object loginAdminUserName = session.getAttribute("loginAdminUserName");
        Object loginAdminPassWord = session.getAttribute("loginAdminPassWord");
        //Object loginCustomer = session.getAttribute("loginCustomer");
        System.out.println("用户账号："+(String)loginCustomerUserName+'\n'+"用户密码："+(String)loginCustomerPassWord);
        System.out.println("admin账号："+(String)loginAdminUserName+'\n'+"admin密码："+(String)loginAdminPassWord);
        if (loginCustomerUserName != null && loginCustomerPassWord!=null){
            System.out.println("判断用户登入信息是否为空");
            return true;
        }else if (loginAdminUserName !=null && loginAdminPassWord!=null){
            System.out.println("判断admin登入信息是否为空");
            return true;
        }
        System.out.println("拦截成功");
        response.sendRedirect("/login.html");
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {

    }
}
