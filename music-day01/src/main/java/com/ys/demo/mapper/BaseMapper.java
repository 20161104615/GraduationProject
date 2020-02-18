package com.ys.demo.mapper;

import com.ys.demo.mapper.annotation.TableInfo;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/*
 * @Author 20161104615
 * @Description //TODO
 * @Date 8:54 2020/2/18
 * @Param
 * @return
 **/
public class BaseMapper<T> {

    //保存当前运行类的参数化类型中的实际的类型
    private Class clazz;
    // 表名 约定表名就是实体类名 -- PS：这种约定俗成不太友好，还是用注解去获取指定的比较nice
    private String tableName;
    //所有的字段
    private Field[] fields;
    //主键
    private String primaryKey;

    // 构造函数： 1. 获取当前运行类的参数化类型；
    // 2. 获取参数化类型中实际类型的定义(class)
    public BaseMapper() {
        // this 表示当前运行类 (AccountDao/AdminDao)
        // this.getClass() 当前运行类的字节码对象(AccountDao.class/AdminDao.class)
        // this.getClass().getGenericSuperclass(); 当前运行类的父类，即为BaseDao<Account>
        // 其实就是“参数化类型”， ParameterizedType

        //返回表示此 Class 所表示的实体（类、接口、基本类型或 void）的直接超类的 Type
        Type type = this.getClass().getGenericSuperclass();
        // 强制转换为“参数化类型” 【BaseDao<Account>】
        ParameterizedType pt = (ParameterizedType) type;

        // Class类是Type接口的实现类
        // 获取参数化类型中，实际类型的定义 【new Type[]{Account.class}】
        Type types[] = pt.getActualTypeArguments();
        // 获取数据的第一个元素：Accout.class
        clazz = (Class) types[0];

        //tableName = clazz.getSimpleName();//获取类名（不带包名）表名 (与类名一样，只要获取类名就可以)
        TableInfo tab = (TableInfo) clazz.getAnnotation(TableInfo.class); //获取注解中的表的名称
        tableName = tab.TableName();
        primaryKey = tab.PrimaryKey();
        fields = clazz.getDeclaredFields();

    }

}
