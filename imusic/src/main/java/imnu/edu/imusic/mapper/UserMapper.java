package imnu.edu.imusic.mapper;

import imnu.edu.imusic.bean.UserBean;
import org.apache.ibatis.annotations.*;
import java.util.ArrayList;


@Mapper//指定这是一个操作数据库的mapper
public interface UserMapper {
    /**
     * 查找用户信息
     *      1、通过手机号或邮箱、用户密码查找用户，手机号和邮箱公用同一变量，用于验证用户登录信息
     *      2、通过手机号或邮箱查找用户，手机号和邮箱公用同一变量，用于判断用户是否重复、存在和获取修改后的用户信息
     *      3、接受String型name
     *      4、
     *      5、查询用户表中的手机号或邮箱是否已经被占用
     */
    // 1
    @Select("select * from user where (user_phone=#{user_phone} or user_email=#{user_phone}) and user_pwd=#{user_pwd}")
    public UserBean getUserByuser_phone(String user_phone, String user_pwd);

    // 2
    @Select("select * from user where user_phone=#{user_phone} or user_email=#{user_phone}")
    public UserBean finduser(UserBean userBean);

    //3
    @Select("select * from user where user_phone=#{userphone} and user_Administrator=#{userAdministrator}")
    public UserBean finduserbystring(String userphone,boolean userAdministrator);

    @Select("select * from user where user_Administrator=#{userAdministrator}")
    public ArrayList<UserBean> findAllUser(boolean userAdministrator);
    //5、
    @Select("SELECT * FROM user WHERE user_id <> #{user_id} " +
            "AND (user_phone = #{user_phone} OR user_email = #{user_email}) " +
            "AND user_Administrator = FALSE")
    public ArrayList<UserBean> FINDUSER(UserBean userBean);

    @Select("SELECT * FROM user WHERE user_phone = #{user_phone} AND user_Administrator = FALSE")
    public UserBean FINDUSERBYONE(UserBean userBean);

    @Select("SELECT * FROM user WHERE (user_phone = #{user_phone} OR user_email = #{user_email}) AND user_Administrator = #{user_Administrator}")
    public ArrayList<UserBean> FINDUSER2(UserBean userBean);

    @Select("SELECT SUM(user_integral) FROM integral WHERE user_phone = #{user_phone}")
    public Integer finduserintegral(String user_phone);

    @Select("SELECT COUNT(*) FROM visitors WHERE visitors=#{user_phone}")
    public Integer finduservisitors(String user_phone);

    /**
     * 增加用户信息
     *      1、用户注册
     */
    @Insert("insert into user (user_name,user_phone,user_email,user_pwd,user_Administrator,user_avatar) " +
            "values " +
            "(#{user_name},#{user_phone},#{user_email},#{user_pwd},#{user_Administrator},#{user_avatar})")
    public int insertUser(UserBean userBean);

    @Insert("INSERT INTO user (user_name,user_phone,user_email,user_pwd,user_Administrator) " +
            "VALUES" +
            "(#{user_name},#{user_phone},#{user_email},#{user_pwd},#{user_Administrator})")
    public int INSERTUSER(UserBean userBean);

    @Insert("INSERT INTO integral (user_phone,music_name,user_integral)" +
            "VALUES (#{user_phone},#{music_name},#{user_integral})" +
            "ON DUPLICATE KEY UPDATE user_integral=#{user_integral}")
    public int insertUserIntegral(String user_phone,String music_name,Integer user_integral);

    @Insert("INSERT INTO visitors(user_phone,visitors)" +
            "VALUES (#{user_phone},#{visitors})")
    public int insertUserVistors(String user_phone,String visitors);

    /**
     * 修改用户信息
     *      1、用户修改，手机号和邮箱不允许修改
     *      2、管理员修改用户信息
     */
    @Update("update user set user_name=#{user_name},user_pwd=#{user_pwd}," +
            "user_birthday=#{user_birthday},user_introduced=#{user_introduced} where (user_phone=#{user_phone} or user_email=#{user_email})")
    public int updateuser(UserBean userBean);

    @Update("update user set user_name=#{user_name},user_pwd=#{user_pwd}," +
            "user_phone=#{user_phone},user_email=#{user_email},user_introduced=#{user_introduced} " +
            "where user_id=#{user_id} ")
    public boolean AUPDATEUSER(UserBean userBean);

    @Update("update user set user_avatar=#{user_avatar} where user_phone=#{user_phone}")
    public boolean updateuseravatar(UserBean userBean);

    @Update("update user set user_pwd=#{user_pwd} where user_email=#{user_email}")
    public boolean updateuserpwd(UserBean userBean);

    /**
     * 注销用户
     *      1、删除用户
     */
    @Delete("DELETE FROM user WHERE user_id=#{user_id} and user_Administrator=#{user_Administrator}")
    public int DELETEUSER(UserBean userBean);

}
