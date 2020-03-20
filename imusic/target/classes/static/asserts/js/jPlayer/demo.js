 $(document).ready(function(){
  var myPlaylist = new jPlayerPlaylist({
    jPlayer: "#jplayer_N",
    cssSelectorAncestor: "#jp_container_N"
  }, [
    {
      title:"麻雀",
      artist:"李荣浩",
      m4a:"/music/asserts/media/maque.m4a",
      poster: "/music/asserts/music/maque.m4a"
    },{
      title:"下山",
      artist:"要不要买菜",
      m4a:"/music/asserts/media/下山.m4a",
      poster: "/music/asserts/music/maque.m4a"
    },{
      title:"演员",
      artist:"薛之谦",
      m4a:"/music/asserts/media/下山.m4a",
      poster: "/music/asserts/music/maque.m4a"
    },{
      title:"爱久见人心",
      artist:"梁静茹",
      m4a:"http://localhost:8080/media/爱久见人心.m4a",
      poster: "/music/asserts/music/maque.m4a"
    }
  ], {
    playlistOptions: {
      enableRemoveControls: true,
      autoPlay: false
    },
    swfPath: "asserts/js/jPlayer",
    supplied: "webmv, ogv, m4v, oga, mp3, m4a",
    smoothPlayBar: true,
    keyEnabled: true,
    audioFullScreen: false
  });
  
  $(document).on($.jPlayer.event.pause, myPlaylist.cssSelector.jPlayer,  function(){
    $('.musicbar').removeClass('animate');
    $('.jp-play-me').removeClass('active');
    $('.jp-play-me').parent('li').removeClass('active');
  });

  $(document).on($.jPlayer.event.play, myPlaylist.cssSelector.jPlayer,  function(){
    $('.musicbar').addClass('animate');
  });

  $(document).on('click', '.jp-play-me', function(e){
    e && e.preventDefault();
    var $this = $(e.target);
    if (!$this.is('a')) $this = $this.closest('a');

    $('.jp-play-me').not($this).removeClass('active');
    $('.jp-play-me').parent('li').not($this.parent('li')).removeClass('active');

    $this.toggleClass('active');
    $this.parent('li').toggleClass('active');
    if( !$this.hasClass('active') ){
      myPlaylist.pause();
    }else{
      var i = Math.floor(Math.random() * (1 + 7 - 1));
      myPlaylist.play(i);
    }
    
  }).jPlayer("play");

  // video
  $("#jplayer_1").jPlayer({
    ready: function () {
      $(this).jPlayer("setMedia", {
        title: "Big Buck Bunny",
        m4v: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.m4v",
        ogv: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.ogv",
        webmv: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.webm",
        poster: "images/m41.jpg"
      });
    },
    swfPath: "js",
    supplied: "webmv, ogv, m4v",
    size: {
      width: "100%",
      height: "auto",
      cssClass: "jp-video-360p"
    },
    globalVolume: true,
    smoothPlayBar: true,
    keyEnabled: true
  });

});