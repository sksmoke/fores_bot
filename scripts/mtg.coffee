# Description:
#   http://gatherer.wizards.com/Pages/Search/Default.aspx
#
# Commands:
#   hubot search <text> - カード検索コマンド
#   hubot help - ヘルプ
cheerio = require 'cheerio'
Q = require 'q'
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
    http = (url) ->
        d = Q.defer()
        robot.http(url)
          .header('Accept-Language', 'ja,en-us;q=0.7,en;q=0.3')
          .get() (err, res, body) ->
            if !err
              d.resolve
                res: res
                body: body
            else
              d.reject null
        d.promise
    Q.when
      cardName: msg.match[1]
    .then (cond) ->
      d = Q.defer()
      if !cond?.cardName?
        msg.send helpText robot.name
        d.reject null
      else
        aCardNameCond = ""
        for aCardName in cond.cardName.split /\s/
          aCardNameCond += "+[#{encodeURIComponent aCardName}]"
        d.resolve "?name=#{aCardNameCond}&output=spoiler&method=visual&format=[%22Standard%22]&sort=rarity-"
      d.promise
    .then (parameters) ->
      d = Q.defer()
      host = "http://gatherer.wizards.com"
      baseUrl = "#{host}/Pages/Search/Default.aspx"
      url = "#{baseUrl}#{parameters}"
      msg.send url
      imgPaths = []
      http(url)
        .then (response) ->
          res = response.res
          if res.statusCode is 302
            http(host + res.headers.location)
              .then (response) ->
                $ = cheerio.load response.body
                imgs = $('.cardImage img')
                for img in imgs
                  imgPaths.push host + $(img).attr('src').substr(5)
                d.resolve imgPaths
          else
            $ = cheerio.load response.body
            imgs = $('.visualspoiler img')
            for img in imgs
              imgPaths.push host + $(img).attr('src').substr(5)
            d.resolve imgPaths
      d.promise
    .done (imgPaths) ->
      if !imgPaths or imgPaths.length <= 0
        msg.send 'http://muscle777.com/wp-content/uploads/2014/03/9251704c5da869db689ddd1b7e6270a1-300x176.jpg'
      else
        for imgPath, i in imgPaths
          if i >= 5
            return
          msg.send imgPath

  robot.respond /mtg\s*(.*)?$/i, (msg) ->
    action = msg.match[1]
    if !action or action is 'help'
      msg.send helpText robot.name
