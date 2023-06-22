package com.swjd.pojo;

import lombok.Data;

import java.io.Serializable;

@Data
public class Bank implements Serializable {
    private Integer id;
    private String content;
    private Integer code;
    private  String name;
    private String answer;

}
