package com.swjd.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.swjd.mapper.ItemBankMapper;
import com.swjd.pojo.Bank;
import com.swjd.service.ItBankService;
import org.springframework.stereotype.Service;

@Service
public class ItContentServiceImpl extends ServiceImpl<ItemBankMapper, Bank> implements ItBankService {
}
