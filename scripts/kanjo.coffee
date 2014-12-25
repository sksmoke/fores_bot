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
  robot.respond /聞いてよ\s(.*)/i, (msg) ->
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
        #msg.send "kiteyo \"#{query}\""
        # all 0
        if 0 is jbody.joysad and 0 is jbody.likedislike and 0 is jbody.angerfear
          robot.http("http://bjin.me/api/")
            .query({
               format: 'json'
               count: 1
               type: 'rand'
            })
            .get() (err, res, bjinbody) ->
              jbjinbody = JSON.parse(bjinbody)
              msg.send "http://bjin.me/images/pic" + jbjinbody[0].id + ".jpg"
              msg.send "ぅωぅω"
        else
         robot.http("http://bjin.me/api/")
          .query({
                format: 'json'
                count: 1
                type: 'rand'
          })
          .get() (err, res, bbjinbody) ->
                  jbbjinbody = JSON.parse(bbjinbody)
                  msg.send "http://bjin.me/images/pic" + jbjinbody[0].id + ".jpg"
                  msg.send "け〃ωきた〃Ｕτ"
