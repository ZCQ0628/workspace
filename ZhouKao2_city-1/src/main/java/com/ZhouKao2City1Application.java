package com;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.baidu.mapper")
@SpringBootApplication
public class ZhouKao2City1Application {

	public static void main(String[] args) {
		SpringApplication.run(ZhouKao2City1Application.class, args);
	}
}
