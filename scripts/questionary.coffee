# Description:
#   ちょっとしたアンケートを作成
#
# Commands:
#   qhelp
#

moment = require 'moment-timezone'

module.exports = (robot) ->
  QUESTIONARY = 'questionary'
  
  getQues = () ->
    return robot.brain.get(QUESTIONARY) or {}

  setQues = (title, msg) ->
    ques = getQues()
    if !ques[title]?
      createTime = moment.tz('Asia/Tokyo').format 'MM/DD HH:mm'
      ques[title] = {"説明": "", "作成日": createTime}
      robot.brain.set QUESTIONARY, ques
      msg.send "#{title}のアンケートを用意したよ。回答方法「fsbot aadd #{title} 回答内容」"
      
  robot.respond /qhelp/i, (msg) ->
    msg.send "    qlist 　　　　　　　　　　 : アンケートの一覧\n
    qshow アンケート名 　　　  : 回答の一覧\n
    qadd アンケート名          : アンケートの追加\n
    qdel アンケート名          : アンケートの削除\n
    qdisp アンケート名 説明文  : アンケートの説明追加\n
    aadd アンケート名 回答内容 : アンケートの回答"
    
  robot.respond /aadd (.+) (.+)/i, (msg) ->
    title = msg.match[1]
    answer = msg.match[2]
    uIndex = msg.message.user.name
    
    ques = getQues()
    if ques[title]?
      ques[title][uIndex] = answer
      robot.brain.set QUESTIONARY, ques
      msg.send "#{title}のアンケートに答えたよ。確認方法「fsbot qshow #{title} 」"
    else
      msg.send "そんなアンケートないよ！"

  robot.respond /qshow (.+)/i, (msg) ->
    title = msg.match[1]

    ques = getQues()
    if ques[title]?
      for val, key of ques[title]
        msg.send "#{val}: #{key}"
    else
      msg.send "そんなアンケートないよ！"
      
  # アンケリスト取りまとめ
  robot.respond /qlist/i, (msg) ->
    ques = getQues()
    for val, key of ques
      msg.send "#{val} - #{key["作成日"]}" 

  # アンケ追加
  robot.respond /qadd (.+)/i, (msg) ->
    title = msg.match[1]
    setQues(title, msg)
    
  # アンケ削除
  robot.respond /qdel (.+)/i, (msg) ->
    title = msg.match[1]
    ques = getQues()
    if ques[title]?
      delete ques[title]
      msg.send "#{title}のアンケートを削除したよ！"
    else
      msg.send "そんなアンケートないよ！"
  
  # アンケ説明追加
  robot.respond /qdisp (.+) (.+)/i, (msg) ->
    title = msg.match[1]
    disp = msg.match[2]

    ques = getQues()
    if ques[title]?
      ques[title]["説明"] = disp
      robot.brain.set QUESTIONARY, ques
      msg.send "#{title}のアンケートに説明文を追加したよ"
    else
      msg.send "そんなアンケートないよ！"
