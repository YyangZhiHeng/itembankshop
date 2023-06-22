package com.swjd.pojo;

import lombok.Data;

import java.io.Serializable;

@Data
public class Customer implements Serializable {
    private Integer id;
    private String username;
    private String password;
    private String checkpass;
}
