package imnu.edu.imusic.mapper;

import imnu.edu.imusic.bean.*;
import org.apache.ibatis.annotations.*;

import java.util.ArrayList;

@Mapper
public interface MusicMapper {

    /**
     * 查找歌曲
     * 1、查找全部歌曲
     * 2、根据名称查找（模糊查找）
     * 3、根据歌手查找（模糊查找）
     * 4、根据名称查找（取第一条）
     * 5、根据用户手机号查找用户喜欢列表中的内容
     */
    @Select("select * from music")
    public ArrayList<MusicBean> findMusicBeanList();

    @Select("select * from music where music_name like concat('%',#{music_name},'%')")
    public ArrayList<MusicBean> findMusicByName(MusicBean musicBean);

    @Select("select * from music where music_singer like concat('%',#{music_singer},'%')")
    public ArrayList<MusicBean> findMusicBySinger(MusicBean musicBean);

    @Select("select * from music where music_name = #{music_name} limit 1")
    public MusicBean accurateFindMusic(String music_name);

    @Select("select * from music where music_id in (select music_id from favoritesongs where user_phone = #{userphone})")
    public ArrayList<MusicBean> findMusicByUserPhoneOfFavorite(String userphone);

    @Select("select * from music where music_name like concat('%',#{music_name},'%')")
    public ArrayList<MusicBean> FINDMUSICBYNAME(String music_name);

    @Select("SELECT * FROM music WHERE music_id = #{music_id}")
    public MusicBean FINDMUSICBYID(Integer music_id);

    @Select("SELECT * FROM sharesongs WHERE user_phone = #{user_phone}")
    public ArrayList<ShareSongs> SHARE_SONGS_ARRAY_LIST(String user_phone);

    @Select("SELECT * FROM comments WHERE music_id=#{music_id}")
    public ArrayList<Comments> COMMENTS_ARRAY_LIST(Integer music_id);

    @Select("SELECT * FROM singer WHERE singer_name like concat('%',#{singer_name},'%')")
    public Singer findSingerByName(String singer_name);

    @Select("SELECT * FROM sharesongs WHERE DATE_SUB(CURDATE(),INTERVAL 1 MONTH) <= DATE(share_date)")
    public ArrayList<ShareSongs> findShareMusicByDate();

    /**
     * 添加歌曲
     * 1、添加歌曲名、歌手、歌曲路径、歌曲图片路径
     * 2、添加收藏
     * 3、添加分享
     * 4、添加评论
     */
    @Insert("insert into music (music_name,music_singer,music_img,music_storagepath) " +
            "values " +
            "(#{music_name},#{music_singer},#{music_img},#{music_storagepath})")
    public int uploadMusic(MusicBean musicBean);

    @Insert("insert into favoritesongs (music_id,music_name,user_phone) " +
            "values" +
            "(#{music_id},#{music_name},#{user_phone})")
    public boolean uploadMusicFavorite(FavoriteSongs songs);

    @Insert("insert into sharesongs (music_id,user_phone,music_name,share_date,music_singer)" +
            "values" +
            "(#{music_id},#{user_phone},#{music_name},#{share_date},#{music_singer})")
    public boolean uploadMusicShare(ShareSongs shareSongs);

    @Insert("insert into comments (user_phone,music_id,music_name,music_singer,comments,comments_date,user_name,user_avatar)" +
            "values" +
            "(#{user_phone},#{music_id},#{music_name},#{music_singer},#{comments},#{comments_date},#{user_name},#{user_avatar})")
    public boolean uploadMusicComments(Comments comments);
    /**
     * 更新歌曲
     */
    @Update("update music set music_name=#{music_name},music_singer=#{music_singer}," +
            "music_storagepath=#{music_storagepath},music_img=#{music_img} " +
            "where music_id=#{music_id} ")
    public int UPDATEMUSIC(MusicBean musicBean);

    /**
     * 删除歌曲
     * 1、删除用户收藏的歌曲
     * 2、删除歌曲
     */
    @Delete("DELETE FROM favoritesongs WHERE music_name = #{musicName} AND user_phone = #{userPhone}")
    public boolean delfavoritesong(String userPhone, String musicName);

    @Delete("DELETE FROM music WHERE music_id=#{music_id}")
    public boolean DELETEMUSIC(Integer music_id);
    @Delete("DELETE FROM favoritesongs WHERE music_id = #{music_id}")
    public boolean DELETEMUSICOFUSERF(Integer music_id);

}
