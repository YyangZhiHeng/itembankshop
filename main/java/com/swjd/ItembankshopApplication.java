package com.swjd;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.swjd.mapper")
@SpringBootApplication
public class ItembankshopApplication {

    public static void main(String[] args) {
        SpringApplication.run(ItembankshopApplication.class, args);
    }

}
