# Description:
#   Lightning Talk Count Down
#
# Commands:
#   hubot lt start

END_URL = ["http://blog-imgs-44-origin.fc2.com/d/a/i/daigorou6/b0021035_15491790.jpg",
           "http://blog-imgs-31.fc2.com/t/a/o/taokasu/2011061102215807e.jpg",
           "http://blog-imgs-49.fc2.com/a/p/g/apg/201201187.jpg",
           "http://blog-imgs-49.fc2.com/a/p/g/apg/1314931610680.jpg",
           "http://d13n9ry8xcpemi.cloudfront.net/photo/odai/400/8c459ebff3a7a3e37747c10cbc8759ae_400.jpg",
           "http://livedoor.blogimg.jp/news4wide/imgs/1/5/15e0b96e-s.jpg?399313",
           "http://livedoor.blogimg.jp/jojo_infomation/imgs/e/d/ed68cfd4-s.jpg"]

module.exports = (robot) ->
  robot.respond /lt start$/i, (msg) ->
    msg.send "LTを開始します。"
    elapseTime = 0
    intervalId = setInterval () ->
      elapseTime++
      msg.send "#{elapseTime}分経過しました。"
      if elapseTime == 5
        url = msg.random END_URL
        msg.send "終了です。\n#{url}?dummy=" + new Date().getTime()
        clearInterval intervalId
    , 60 * 1000


