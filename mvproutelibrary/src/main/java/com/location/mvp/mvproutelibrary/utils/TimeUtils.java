package com.location.mvp.mvproutelibrary.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 项目名称: MvpRoute
 * 类描述:
 * 创建人: 田晓龙
 * 创建时间: 2018/5/25 0025 23:09
 * 修改人:
 * 修改内容:
 * 修改时间:
 */


public class TimeUtils {
    public static final String DEFAULT_FORMAT = "yyyy-MM-dd HH:mm:ss";

    public static final String TIME_FORMAT = "HH:mm:ss";

    public static final String DATE_FORMAT = "yyyy-MM-dd";

    public static String hxDate(long misslas){
        return new SimpleDateFormat(DEFAULT_FORMAT).format(new Date(misslas));
    }

    public static String hxTime(long misslas){
        return new SimpleDateFormat(TIME_FORMAT).format(new Date(misslas));
    }


}
