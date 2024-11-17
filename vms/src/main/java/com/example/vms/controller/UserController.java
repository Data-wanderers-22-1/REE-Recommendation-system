package com.example.vms.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.vms.common.QueryPagePara;
import com.example.vms.common.Result;
import com.example.vms.entity.User;
import com.example.vms.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author vms
 * @since 2024-11-05
 */
@RestController
@RequestMapping("/user")
@CrossOrigin
public class UserController {
    @GetMapping
    public String hello() {
        return "Hello vms";
    }
    @Autowired
    private UserService userService;

    @GetMapping("/list")
    public List<User> list(){
        return userService.list();
    }

    //增
    @PostMapping("/save")
    public boolean save(@RequestBody User user){
        return userService.save(user);
    }
    //改
    @PostMapping("/mod")
    public boolean mod(@RequestBody User user){
        return userService.updateById(user);
    }
    //新增或修改
    @PostMapping("/saveOrMod")
    public boolean saveOrMod(@RequestBody User user){
        return userService.saveOrUpdate(user);
    }
    //删
    @GetMapping("/delete")
    public Result delete(@RequestParam Integer id){
        return userService.removeById(id)?Result.success():Result.fail();
    }
    //更新
    @GetMapping("/update")
    public Result update(@RequestBody User user){
        return userService.updateById(user)?Result.success():Result.fail();
    }

    @PostMapping("/login")
    public Result login(@RequestBody User user){
        List list=userService.lambdaQuery()
                .eq(User::getNo,user.getNo())
                .eq(User::getPassword,user.getPassword()).list();
        return list.size()>0?Result.success(list.get(0)):Result.fail();
    }
    //查（模糊，匹配）
    @PostMapping("/listP")
    public Result listP(@RequestBody User user){
        LambdaQueryWrapper<User> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        //lambdaQueryWrapper.eq(User::getName, user.getName()); 完全匹配
        if(StringUtils.isNotBlank(user.getName())){
            lambdaQueryWrapper.like(User::getName, user.getName());
        }

        return Result.success(userService.list(lambdaQueryWrapper));}

//    @PostMapping("/listPage")
//    public List<User> listPage(@RequestBody QueryPagePara params) {
//        HashMap elements = params.getParam();
//        String name = (String) elements.get("name");
//        /*System.out.println("name=="+elements.get("name"));
//        System.out.println("no=="+elements.get("no"));*/
//
//        Page<User> page = new Page<>(params.getPageNum(),params.getPageSize());
//        LambdaQueryWrapper<User> lambdaQueryWrapper = new LambdaQueryWrapper<>();
//        if(StringUtils.isNotBlank(name)){
//            lambdaQueryWrapper.like(User::getName, name);
//        }
//
//        IPage iPage = userService.page(page, lambdaQueryWrapper);
//        System.out.println("total=="+iPage.getTotal());
//        return iPage.getRecords();
//    }

    @PostMapping("/listPages")
    public Result listPages(@RequestBody QueryPagePara q) {
        HashMap elements = q.getParam();
        String name = (String) elements.get("name");

        Page<User> page = new Page<>(q.getPageNum(),q.getPageSize());
        LambdaQueryWrapper<User> lambdaQueryWrapper = new LambdaQueryWrapper();
        if(StringUtils.isNotBlank(name) && !"null".equals(name)){
            lambdaQueryWrapper.like(User::getName, name);
        }

        IPage iPage = userService.page(page, lambdaQueryWrapper);
        System.out.println("total=="+iPage.getTotal());
        return  Result.success(iPage.getRecords(),iPage.getTotal());
    }
}
