package com.ys.demo.config;

import com.ys.demo.component.LoginHandlerInterceptor;
import com.ys.demo.component.MyLocaleResolver;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyMvcConfig implements WebMvcConfigurer {

    @Bean//将组件注册在容器中
    public WebMvcConfigurer webMvcConfigurer() {
        WebMvcConfigurer adapter = new WebMvcConfigurer() {
            @Override
            public void addViewControllers(ViewControllerRegistry registry) {
                registry.addViewController("/").setViewName("index");
                registry.addViewController("/index.html").setViewName("index");
                registry.addViewController("/signin.html").setViewName("signin");
                registry.addViewController("/signup.html").setViewName("signup");
                registry.addViewController("/modal.lockme.html").setViewName("signin");
                registry.addViewController("/profile.html").setViewName("profile");
                registry.addViewController("/singer.html").setViewName("singer");
                registry.addViewController("/404.html").setViewName("404");
                registry.addViewController("/listen.html").setViewName("listen");
                registry.addViewController("/OLDlisten.html").setViewName("OLDlisten");
                registry.addViewController("/listen2.html").setViewName("listen2");
                registry.addViewController("/list.html").setViewName("list");
                registry.addViewController("/fileupload.html").setViewName("fileupload");
                registry.addViewController("/datatable.html").setViewName("datatable");
                registry.addViewController("/share.html").setViewName("share");
                registry.addViewController("/musicinfor.html").setViewName("musicinfor");
                registry.addViewController("/index2.html").setViewName("index2");
            }

            //拦截器注册，addPathPatterns()添加拦截请求，excludePathPatterns()排除拦截请求
            @Override
            public void addInterceptors(InterceptorRegistry registry) {
                registry.addInterceptor(new LoginHandlerInterceptor()).
                        addPathPatterns(
                                "/list.html",
                                "/datatable.html",
                                "/profile.html",
                                "/fileupload.html",
                                "/share.html",
                                "/musicinfor.html",
                                "/listen.html").
                        excludePathPatterns("/","/signin.html",
                                "/singer.html",
                                "/user/login",
                                "/user/register",
                                "/index.html",
                                "/index2.html",
                                "/404.html",
                                "public.html");
            }
        };
        return adapter;
    }

    //国际化配置
    @Bean
    public LocaleResolver localeResolver() {
        return new MyLocaleResolver();
    }

}
