package com.swjd.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.swjd.mapper.CustomerMapper;
import com.swjd.pojo.Customer;
import com.swjd.service.CustomerService;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl extends ServiceImpl<CustomerMapper, Customer> implements CustomerService {
}
