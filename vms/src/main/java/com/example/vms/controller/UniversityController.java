package com.example.vms.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.vms.common.QueryPagePara;
import com.example.vms.common.Result;
import com.example.vms.entity.University;
import com.example.vms.entity.User;
import com.example.vms.service.UniversityService;
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
 * @since 2024-11-17
 */
@RestController
@RequestMapping("/university")
@CrossOrigin
public class UniversityController
    {
        @GetMapping
        public String hello() {
            return "Hello vms";
        }
        @Autowired
        private UniversityService UniversityService;

        //查（模糊，匹配）
        @PostMapping("/listP")
        public Result listP(@RequestBody University university) {
            LambdaQueryWrapper<University> lambdaQueryWrapper = new LambdaQueryWrapper<>();
            //lambdaQueryWrapper.eq(User::getName, user.getName()); 完全匹配
            if(StringUtils.isNotBlank(university.getName())){
                lambdaQueryWrapper.like(University::getName, university.getName());
            }

            return Result.success(UniversityService.list(lambdaQueryWrapper));}

        @PostMapping("/listPages")
        public Result listPages(@RequestBody QueryPagePara q) {
            HashMap elements = q.getParam();
            String name = (String) elements.get("name");
            String level= (String) elements.get("level");
            String region= (String) elements.get("region");
            String location= (String) elements.get("location");
            String scoreLine= (String) elements.get("scoreLine");

            Page<University> page = new Page<>(q.getPageNum(),q.getPageSize());
            LambdaQueryWrapper<University> lambdaQueryWrapper = new LambdaQueryWrapper<>();
            if(StringUtils.isNotBlank(name)){
                lambdaQueryWrapper.like(University::getName, name);
            }
            if(StringUtils.isNotBlank(level)){
                lambdaQueryWrapper.like(University::getLevel,level);
            }
            if(StringUtils.isNotBlank(region)){
                lambdaQueryWrapper.like(University::getRegion, region);
            }
            if(StringUtils.isNotBlank(location)){
                lambdaQueryWrapper.like(University::getLocation, location);
            }
            if(StringUtils.isNotBlank(scoreLine)){
                lambdaQueryWrapper.like(University::getScoreLine, scoreLine);
            }

            IPage iPage = UniversityService.page(page, lambdaQueryWrapper);
            System.out.println("total=="+iPage.getTotal());
            return  Result.success(iPage.getRecords(),iPage.getTotal());
        }

    }