# Description:
#   よもぎやさん専用です
#
# Commands:
#   デオ - デオウ
#   


# デオウ！
deouList = ["http://www.eyeeyea.sakura.ne.jp/tsukamoto/3.gif",
	"http://i.ytimg.com/vi/--SPv5SMO-w/hqdefault.jpg",
	"http://ww3.sinaimg.cn/large/7239fdc7gw1ege6rc7vw7j21hc0u0wiv.jpg",
	"http://www.cmdanshi.com/wp-content/uploads/2014/07/072-hideaki-ito.jpg",
	"http://ww1.sinaimg.cn/large/7239fdc7gw1ege6qrw1uzj21hc0u0tcq.jpg"]

module.exports = (robot) ->
  robot.hear /(.*)デオ(.*)/, (msg) ->
    msg.send "デオ、、、、デ・オウ！\n" + msg.random deouList
