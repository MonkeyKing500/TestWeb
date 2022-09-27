package com.example.testweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author Administrator
 */

@Controller
public class Test001 {




    @GetMapping("/index")
    public String test(){
        return "hello";
    }


    @GetMapping("/test")
    @ResponseBody
    public String test(String test){
        return "hello" + ": " + test;
    }

    @GetMapping("/dddd")
    @ResponseBody
    public String dddd(String test){
        return "dddd" + ": " + test;
    }


}
