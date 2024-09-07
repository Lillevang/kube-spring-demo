package com.Lillevang.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class DemoController {
    
    @GetMapping
    public String home(){
        return "Welcome to the Spring Boot, Knative Demo! Try accessing /hello";
    }

    @GetMapping("/hello")
    public String hello(){
        return "Hello, From Spring Boot!";
    }
}
