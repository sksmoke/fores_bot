# Description:
#   告知を作成
#
# Commands:
#   noticeHelp
#

moment = require 'moment-timezone'
cron = require('cron').CronJob

module.exports = (robot) ->
  NOTICE = 'notice'
  
  new cron '0 0 11 * * 1-5', (msg) ->
    showNotice(msg)
  ,null, true, 'Asia/Tokyo'
  
  getNotice = () ->
    return robot.brain.get(NOTICE) or {}
    
  showNotice = (msg) ->
    ques = getNotice()
    for val, key of ques
      if val?
        msg.send "#{val} - #{key["作成日"]}" 

  setNotice = (title, msg) ->
    ques = getNotice()
    if !ques[title]?
      createTime = moment.tz('Asia/Tokyo').format 'MM/DD HH:mm'
      ques[title] = {"作成日": createTime}
      robot.brain.set NOTICE, ques
      msg.send "#{title}の告知を用意したよ。毎朝１１時に告知"
      
  robot.respond /noticeHelp/i, (msg) ->
    msg.send "
    notice 　　　　　　　 : 告知の一覧\n
    noticeAdd 告知名 　　 : 告知の登録\n
    noticeDel 告知名      : 告知の削除"
      
  # 告知取りまとめ
  robot.respond /notice/i, (msg) ->
    showNotice(msg)

  # 告知追加
  robot.respond /noticeAdd (.+)/i, (msg) ->
    title = msg.match[1]
    setNotice(title, msg)
    
  # 告知削除
  robot.respond /noticeDel (.+)/i, (msg) ->
    title = msg.match[1]
    ques = getNotice()
    if ques[title]?
      delete ques[title]
      msg.send "#{title}の告知を削除したよ！"
    else
      msg.send "そんな告知ないよ！"