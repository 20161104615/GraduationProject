package imnu.edu.imusic.bean;

import java.util.ArrayList;

public class UserAll {
    private UserBean userBean;
    private ArrayList<ShareSongs> shareSongs;
    private ArrayList<FavoriteSongs> favoriteSongs;

    public UserAll() {
    }

    public UserBean getUserBean() {
        return userBean;
    }

    public void setUserBean(UserBean userBean) {
        this.userBean = userBean;
    }

    public ArrayList<ShareSongs> getShareSongs() {
        return shareSongs;
    }

    public void setShareSongs(ArrayList<ShareSongs> shareSongs) {
        this.shareSongs = shareSongs;
    }

    public ArrayList<FavoriteSongs> getFavoriteSongs() {
        return favoriteSongs;
    }

    public void setFavoriteSongs(ArrayList<FavoriteSongs> favoriteSongs) {
        this.favoriteSongs = favoriteSongs;
    }
}
