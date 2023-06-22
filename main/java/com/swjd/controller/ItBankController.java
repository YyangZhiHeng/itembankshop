package com.swjd.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.swjd.pojo.Bank;
import com.swjd.pojo.Result;
import com.swjd.service.ItBankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@ComponentScan("com.swjd.mapper")
public class ItBankController {
    @Autowired
    private ItBankService itBankService;

    //管理员页面添加试题
    @PostMapping("/addContent")
    public void addContent(@RequestBody Bank bank){
       itBankService.save(bank);
        System.out.println(bank);
    }

    //管理员根据Id删除试题信息
    @DeleteMapping("/deleteContentById/{id}")
    public void deleteContentById(@PathVariable("id") Integer id){
        itBankService.removeById(id);
    }

    //管理员页面修改试题信息
    @PutMapping("/updateContent")
    public void updateContent(@RequestBody Bank bank){
        itBankService.updateById(bank);
    }

    //查询所有试题，分页查询
    @RequestMapping("/findItBankAll")
    public Result<Bank> findItBankAll(
            @RequestParam(value = "current",defaultValue = "1")Integer current,
            @RequestParam(value = "size", defaultValue = "8") Integer size
    ){
        IPage<Bank> result =itBankService.page(new Page<>(current,size));
        return new Result<>(result.getTotal(), result.getRecords());
        //return itBankService.list();
    }

    //查询 1 spring面试题
    @RequestMapping("/findContentOne")
    public List<Bank> findContentOne(){
        return itBankService.query().eq("code",1).list();
    }

    //查询 2 SpringBoot面试题
    @PostMapping("/findContentTwo")
    public  List<Bank> findContentTwo(){
        return itBankService.query().eq("code",2).list();
    }

    // 查询 3 mybatis，mybatis-plus面试题
    @PostMapping("/findContentThree")
    public  List<Bank> findContentThree(){
        return itBankService.query().eq("code",3).list();
    }

    //查询 4 JVM面试题
    @PostMapping("/findContentFour")
    public  List<Bank> findContentFour(){
        return itBankService.query().eq("code",4).list();
    }

    //查询 5 前端面试题
    @PostMapping("/findContentFive")
    public  List<Bank> findContentFive(){
        return itBankService.query().eq("code",5).list();
    }

    //查询 6 java面试题
    @PostMapping("/findContentSix")
    public  List<Bank> findContentSix(){
        return itBankService.query().eq("code",6).list();
    }

    //查询 7 服务器面试题
    @PostMapping("/findContentSeven")
    public  List<Bank> findContentSeven(){
        return itBankService.query().eq("code",7).list();
    }

    //查询 8 数据库面试题
    @PostMapping("/findContentEight")
    public  List<Bank> findContentEight(){
        return itBankService.query().eq("code",8).list();
    }

    //右边搜索框
    @RequestMapping("/findByInput/{value}")
    public List<Bank> findByInput(@PathVariable("value")  Integer value){
        System.out.println(itBankService.query().eq("code",value).list());
        return itBankService.query().eq("code",value).list();

    }

}
