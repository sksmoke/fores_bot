# Description:
#   Pugme is the most important thing in your life
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot pug me - Receive a pug
#   hubot pug bomb N - get N pugs

module.exports = (robot) ->
  robot.respond /daga/i, (msg) ->
    msg.send "http://imgcc.naver.jp/kaze/mission/USER/20120712/15/1022545/19/407x607xf259e0587faac51a89d65166.jpg"
