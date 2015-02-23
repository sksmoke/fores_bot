# Description:
#   Misawa Neta
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot あきらめたら,それだ,まだ,夢,悪い予感,それより,？？？,専門外,ダメっぽい,本題,たやすい,呼んだ,次は,不運,タブー,もう十分,火,欲しい,ふあー,殺,いつもの,古い,りくつ,あほか,無駄な時間 - get ネタ

TIKUWA_URL = ["http://blog-imgs-60.fc2.com/h/i/r/hirofumi1623jp/be97a404.jpg?",
           "http://blog-imgs-29-origin.fc2.com/i/w/a/iwainohondana/200906262154138cf.jpg?",
           "http://blog-imgs-50.fc2.com/a/p/g/apg/201211130.png?",
           "http://livedoor.blogimg.jp/kanriliveid11-kotematomesokuho/imgs/1/7/1747a487.jpg?",
           "http://pds.exblog.jp/pds/1/201110/25/85/f0099085_1271974.gif?",
           "http://blog-imgs-36.fc2.com/a/p/g/apg/201301159.jpg?",
           "http://img.f.hatena.ne.jp/images/fotolife/t/tanakatan/20071216/20071216200517.jpg?",
           "http://30.media.tumblr.com/tumblr_l9bto0APsd1qa2hcyo1_400.jpg?",
           "http://diarynote.jp/data/blogs/l/20100903/90294_201009030027261305_2.jpg?"]
           
module.exports = (robot) ->
  robot.respond /あきらめたら$/, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20130421/54/538664/0/408x304xda3c0d83c868e3e49c31723d.jpg"

  robot.respond /それだ$/, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20120728/13/1153443/298/695x468x8df28ab959eee002fa062095.jpg"

  robot.respond /まだ$/, (msg) ->
    msg.send "http://livedoor.blogimg.jp/news4wide/imgs/1/5/15e0b96e-s.jpg?399313"

  robot.respond /夢$/, (msg) ->
    msg.send "http://livedoor.blogimg.jp/news4wide/imgs/3/c/3c12a3cc-s.jpg?399634"

  robot.respond /悪い予感$/, (msg) ->
    msg.send "http://blog-imgs-50.fc2.com/a/p/g/apg/201210278.jpg"

  robot.respond /それより$/, (msg) ->
    msg.send "http://blog-imgs-24.fc2.com/a/p/g/apg/soreyoriahenwo6.jpg"

  robot.respond /？？？$/, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20130109/97/924637/0/340x252xbc76abbe96a0085c07f77dfd.jpg"

  robot.respond /専門外$/, (msg) ->
    msg.send "http://livedoor.blogimg.jp/netaatoz/imgs/0/3/033868e8.jpg"

  robot.respond /ダメっぽい$/, (msg) ->
    msg.send "http://livedoor.blogimg.jp/news4wide/imgs/4/e/4e3d6e5a-s.jpg?400242"

  robot.respond /本題$/, (msg) ->
    msg.send "http://livedoor.blogimg.jp/plusmicro26/imgs/8/2/829db134-s.jpg"

  robot.respond /たやすい$/, (msg) ->
    msg.send "http://blog-imgs-49.fc2.com/a/p/g/apg/201201171.jpg"

  robot.respond /呼んだ$/, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20120729/15/1022545/34/630x363x336b5a8970376ec2c6767cba.jpg"

  robot.respond /次は$/, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20120729/15/1022545/59/640x583xe9e13016850307124416e999.jpg"

  robot.respond /不運$/, (msg) ->
    msg.send "http://livedoor.blogimg.jp/sonisoku/imgs/3/c/3cb24eef.jpg"

  robot.respond /タブー$/, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20120825/13/1153443/13/322x400x0cae962ba07b5bef57baded2.jpg"

  robot.respond /もう十分$/, (msg) ->
    msg.send "http://d13n9ry8xcpemi.cloudfront.net/photo/odai/400/8c459ebff3a7a3e37747c10cbc8759ae_400.jpg"

  robot.respond /火$/, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20120729/15/1022545/6/640x544xc7ef58dcdf6dd36603ce0055.jpg"

  robot.respond /欲しい$/, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20120804/15/1022545/62/320x355x77a0adf42a12f335b0e524c8.jpg"

  robot.respond /ふあー$/, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20120804/15/1022545/23/300x325x47c2f5e4fdd0858cb51e912e.jpg"

  robot.respond /殺$/, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20120825/15/1022545/14/299x441x9fbb0fb0afde641c9dbb8ee0.jpg"

  robot.respond /いつもの$/, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20120804/15/1022545/20/183x202x05386c35c340d3c395201c8d.jpg"

  robot.respond /古い$/, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20120804/15/1022545/18/150x226x04b971fa01c597cb75ad6d94.jpg"

  robot.respond /りくつ$/, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20120804/15/1022545/2/214x214x04dc0980a33b9e4cc48b557b.jpg"

  robot.respond /あほか$/, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20120804/15/1022545/19/240x320xc9757cc0590510d012293dbc.jpg"

  robot.respond /無駄な時間$/, (msg) ->
    msg.send "http://cdn-ak.f.st-hatena.com/images/fotolife/t/takashi0123/20100507/20100507231438.jpg"
    
  robot.hear /(.*)行く(.*)/i, (msg) ->
    imageTiqav msg, "http://dg.galman.jp/img/001de_4136/%E8%A1%8C%E3%81%91%EF%BC%81%E7%A8%B2%E4%B8%AD%E5%8D%93%E7%90%83%E9%83%A8.gif?"

  robot.hear /(.*)ずるい(.*)/i, (msg) ->
    imageTiqav msg, "http://livedoor.blogimg.jp/nana_news/imgs/d/8/d833bce9.jpg?"

  robot.hear /(.*)ぬる|Null|null(.*)/i, (msg) ->
    imageTiqav msg, "http://www.sisimaru.com/media/1/20060221-SafariScreenSnapz003.jpg?"

  robot.hear /(.*)言う(.*)/i, (msg) ->
    imageTiqav msg, "http://livedoor.blogimg.jp/nana_news/imgs/9/b/9b3176a7.jpg?"

  robot.hear /(.*)あ(|\s|、)つい(.*)|(.*)あつ(|\s|、)い(.*)|(.*)(h|H)(|\s|)ot(.*)|(.*)(h|H)o(|\s|)t(.*)/i, (msg) ->
    imageTiqav msg, "http://userdisk.webry.biglobe.ne.jp/024/438/56/N000/000/003/137647364273113119254_hakusho02.jpg?"

  robot.hear /(.*)ちくわ(.*)/i, (msg) ->
    url = msg.random TIKUWA_URL
    imageTiqav msg, url

imageTiqav = (msg, drowUrl) ->
  mrs = Math.random().toString()
  msg.send drowUrl + mrs
