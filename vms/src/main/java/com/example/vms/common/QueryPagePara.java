package com.example.vms.common;

import lombok.Data;

import java.util.HashMap;

@Data
public class QueryPagePara {
    //默认值
    private static int PAGE_SIZE = 20;
    private static int PAGE_NUM = 1;

    private int pageNum=PAGE_NUM;
    private int pageSize=PAGE_SIZE;

    private HashMap param = new HashMap();

}
