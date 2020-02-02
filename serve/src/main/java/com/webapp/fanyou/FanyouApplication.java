package com.webapp.fanyou;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.webapp.fanyou.*")
@MapperScan("com.webapp.fanyou.mapper")
public class FanyouApplication {

    public static void main(String[] args) {
        SpringApplication.run(FanyouApplication.class, args);
    }

}
