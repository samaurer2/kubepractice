package com.example.kubepractice;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Component
@RestController
public class HelloController {

    static int helloCounter = 0;

    @GetMapping("/hello")
    public String hello(){
        return "This page has been visited " + ++helloCounter +" times.";
    }
}
