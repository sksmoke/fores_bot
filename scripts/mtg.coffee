# Description:
#   http://gatherer.wizards.com/Pages/Search/Default.aspx
#
# Commands:
#   hubot search <text> - カード検索コマンド
#   hubot help - ヘルプ
cheerio = require 'cheerio'
helpText = (name) ->
  """
  ---- - --- ----- - --- ----- - ---
  #{name} x Magic The Gathering
  - --- ----- - --- ----- - --- ----

  #{name} mtg search [cardName]     カード検索コマンド。

  #{name} mtg help                  ヘルプ。

  """
module.exports = (robot) ->
  robot.respond /mtg\s*search\s*(.*)?$/i, (msg) ->
    cardName = msg.match[1]
    if !cardName?
      msg.send helpText robot.name
      return
    url = "http://gatherer.wizards.com/Pages/Search/Default.aspx?output=spoiler&method=visual&action=advanced&name=+[" + cardName + "]"
    msg.send url
    robot.http(url)
      .header('Accept-Language', 'ja,en-us;q=0.7,en;q=0.3')
      .get() (err, res, body) ->
        $ = cheerio.load body
        imgs = $('.visualspoiler img')
        if err or imgs.length <= 0
          msg.send '見つからないからこれでも見とけ！'
          msg.send 'http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=332848&type=card'
          return
        for img, i in imgs
          if i >= 5
            return
          msg.send 'http://gatherer.wizards.com' + $(img).attr('src').substr(5)
  robot.respond /mtg\s*(.*)?$/i, (msg) ->
    action = msg.match[1]
    if !action or action is 'help'
      msg.send helpText robot.name
