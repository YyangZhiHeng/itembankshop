package com.swjd.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.swjd.mapper.AdminMapper;
import com.swjd.pojo.User;
import com.swjd.service.UserService;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl extends ServiceImpl<AdminMapper, User> implements UserService {

}
