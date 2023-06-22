package com.swjd.config;

import com.swjd.interceptor.LoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class LoginInterConfig implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        System.out.println("拦截资源");
        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/**") //拦截资源
                .excludePathPatterns
                 ("/toRegister","/loginOut","/**/adminLogin.html", "/toAdminLogin","/toLogin",
                         "/**/login.html","/**/index.html","/**/register.html",
                         "/css/**","/images/**","/js/**","/**/show.html","/videos/**");//放行资源
        System.out.println("放行资源");
    }
}

