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
  robot.respond /xxx$/i, (msg) ->
    msg.send "PONGPONGPONG"
    msg.send "PONGPONGPONG"
    msg.send "PONGPONGPONG"
    msg.send "PONGPONGPONG"

    process.exit 0