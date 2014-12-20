# Description:
#   ミサワ　ネタ
#
# Commands:
#   hubot まだある - get ミサワ ネタ

module.exports = (robot) ->
  robot.respond /まだある$/, (msg) ->
    msg.send "http://livedoor.4.blogimg.jp/jigokuno_misawa/imgs/7/3/73de70ed.gif"

