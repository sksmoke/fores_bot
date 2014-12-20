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
  robot.respond /聞いてよ (.*)/i, (msg) ->
    query = msg.match[1]
    robot.http("http://ap.mextractr.net/ma9/emotion_analyzer")
      .query({
        text: query
        out: 'json'
        apikey: '8403CD3E662CB0DE97DA8C8F97FF22A5670D5850'
      })
      .get() (err, res, body) ->
        jbody = JSON.parse(body)
        msg.send "joysad:\"#{jbody.joysad}\" likedislike:\"#{jbody.likedislike}\" angerfear:\"#{jbody.angerfear}\""
        msg.send "kiteyo \"#{query}\""
        # all 0
        if 0 is jbody.joysad and 0 is jbody.likedislike and 0 is jbody.angerfear
          msg.send "ぅωぅω"
          robot.http("http://bjin.me/api/")
            .query({
               format: 'json'
               count: 1
               type: 'rand'
            })
            .get() (err, res, bjinbody) ->
              jbjinbody = JSON.parse(bjinbody)
              msg.send jbjinbody[0].thumb
        else
         msg.send "け〃ωきた〃Ｕτ"
         robot.http("http://bjin.me/api/")