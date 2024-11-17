package com.example.vms.common;

import lombok.Data;

@Data
public class Result {
    //编码，200/400
    private int code;
    //成功失败
    private String message;
    //总数
    public long total;
    private Object data;

    private static Result result(int code, String message, long total,Object data) {
        Result result = new Result();
        result.setData(data);
        result.setMessage(message);
        result.setCode(code);
        result.setTotal(total);
        return result;
    }

    public static Result fail(){
        return result(400,"失败",0L,null);
    }

    public static Result success(){
        return result(200,"成功",0L,null);
    }
    public static Result success(Object data){
        return result(200,"成功",0L,data);
    }
    public static Result success(Object data,long total){
        return result(200,"成功",total,data);
    }
}
