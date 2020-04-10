package imnu.edu.imusic.service;

import imnu.edu.imusic.bean.*;
import net.sf.json.JSONArray;
import org.json.JSONException;

import java.util.ArrayList;
import java.util.Map;


public interface MusicService {
    public ArrayList<MusicBean> findAllMusicBean();
    public Map<String, ArrayList<MusicBean>> findMusicByName(String musicName);
    public ArrayList<MusicBean> findMusicBySinger(String musicSinger);
    public boolean uploadMusic(String newMusicName, String newMusicSinger);
    public JSONArray AccurateFindMusic(String musicName) throws JSONException;
    public ArrayList<MusicBean> accuratefindmusicinformation(String musicName);
    public JSONArray findMusicOfPlayList(String userphone) throws JSONException;
    public ArrayList<MusicBean> findMusicOfPlayListinformation(String userphone);
    public MusicBean findONEMusic(String musicName);
    public boolean delFavoritesong(String userPhone, String musicName);
    public boolean uploadFavoritesong(FavoriteSongs songs);
    public boolean UPDATEMUSIC(String newMusicName, String newMusicSinger, Integer musicID);
    public boolean DELETEMUSIC(Integer music_id);
    public ArrayList<MusicBean> FINDMUSIC(String music_name);
    public MusicBean FINDMUSICOFID(Integer music_id);
    public boolean shareSongs(ShareSongs shareSongs);
    public ArrayList<ShareSongs> SHARE_SONGS_ARRAY_LIST(String user_phone);
    public boolean insertComments(Comments comments);
    public ArrayList<Comments> COMMENTS_ARRAY_LIST(Integer music_id);
    public Singer findSinger(String singer_name);
}
