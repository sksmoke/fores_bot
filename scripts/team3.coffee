# Description:
#   Eva Neta
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot 逃げちゃだめだ,やります,笑えばいい - get エヴァ ネタ

# Description:
#   bijyo Neta
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot 聞いてよ - get 美女 ネタ

module.exports = (robot) ->
 robot.respond /aaa$/i, (msg) ->
   # msg.send "http://dawa.up.d.seesaa.net/dawa/image/necha.jpg

   query = msg.match[2]
   robot.http("http://ap.mextractr.net/ma9/emotion_analyzer")
     .query({
       text: '%E3%83%93%E3%83%96%E3%83%AA%E3%82%A2%E5%8F%A4%E6%9B%B8%E5%A0%82%E3%81%AE%E4%BA%8B%E4%BB%B6%E6%89%8B%E5%B8%96-6-~%E6%A0%9E%E5%AD%90%E3%81%95%E3%82%93%E3%81%A8%E5%B7%A1%E3%82%8B%E3%81%95%E3%81%A0%E3%82%81~-%E3%83%A1%E3%83%87%E3%82%A3%E3%82%A2%E3%83%AF%E3%83%BC%E3%82%AF%E3%82%B9%E6%96%87%E5%BA%AB-%E4%B8%89%E4%B8%8A'
       out: 'json'
       apikey: '8403CD3E662CB0DE97DA8C8F97FF22A5670D5850'
     })
     .get() (err, res, body) ->
       jbody = JSON.parse(body)
       if jbody.likedislike is '0'
          msg.send "xxx : \"#{jbody.likedislike}\""