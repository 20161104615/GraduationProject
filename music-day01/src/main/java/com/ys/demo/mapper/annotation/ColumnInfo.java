package com.ys.demo.mapper.annotation;


import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import static java.lang.annotation.ElementType.FIELD;


/*
 * @ClassName ColumnInfo
 * @Author 20161104615
 * @Description //TODO
 * @Date 8:42 2020/2/18
 */
/**
 * 用于标识表字段名
 */

@Target({FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface ColumnInfo {
    String columnName();
}
