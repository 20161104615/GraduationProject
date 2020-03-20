package imnu.edu.imusic.bean;

import java.util.ArrayList;
import java.util.Objects;

public class AIM {
    private MusicBean musicBean;
    private UserBean userBean;
    private ArrayList<MusicBean> musicBeanArrayList;
    private ArrayList<FavoriteSongs> favoriteSongsArrayList;
    private ArrayList<Comments> commentsArrayList;
    private ArrayList<ShareSongs> shareSongsArrayList;

    public AIM() {
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AIM aim = (AIM) o;
        return Objects.equals(musicBean, aim.musicBean) &&
                Objects.equals(userBean, aim.userBean) &&
                Objects.equals(musicBeanArrayList, aim.musicBeanArrayList) &&
                Objects.equals(favoriteSongsArrayList, aim.favoriteSongsArrayList) &&
                Objects.equals(commentsArrayList, aim.commentsArrayList) &&
                Objects.equals(shareSongsArrayList, aim.shareSongsArrayList);
    }

    @Override
    public int hashCode() {
        return Objects.hash(musicBean, userBean, musicBeanArrayList, favoriteSongsArrayList, commentsArrayList, shareSongsArrayList);
    }

    @Override
    public String toString() {
        return "AIM{" +
                "musicBean=" + musicBean +
                ", userBean=" + userBean +
                ", musicBeanArrayList=" + musicBeanArrayList +
                ", favoriteSongsArrayList=" + favoriteSongsArrayList +
                ", commentsArrayList=" + commentsArrayList +
                ", shareSongsArrayList=" + shareSongsArrayList +
                '}';
    }

    public MusicBean getMusicBean() {
        return musicBean;
    }

    public void setMusicBean(MusicBean musicBean) {
        this.musicBean = musicBean;
    }

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }

    public ArrayList<MusicBean> getMusicBeanArrayList() {
        return musicBeanArrayList;
    }

    public void setMusicBeanArrayList(ArrayList<MusicBean> musicBeanArrayList) {
        this.musicBeanArrayList = musicBeanArrayList;
    }

    public ArrayList<FavoriteSongs> getFavoriteSongsArrayList() {
        return favoriteSongsArrayList;
    }

    public void setFavoriteSongsArrayList(ArrayList<FavoriteSongs> favoriteSongsArrayList) {
        this.favoriteSongsArrayList = favoriteSongsArrayList;
    }

    public ArrayList<Comments> getCommentsArrayList() {
        return commentsArrayList;
    }

    public void setCommentsArrayList(ArrayList<Comments> commentsArrayList) {
        this.commentsArrayList = commentsArrayList;
    }

    public ArrayList<ShareSongs> getShareSongsArrayList() {
        return shareSongsArrayList;
    }

    public void setShareSongsArrayList(ArrayList<ShareSongs> shareSongsArrayList) {
        this.shareSongsArrayList = shareSongsArrayList;
    }
}
