# Description:
#   定時実行のサンプル

cron = require('cron').CronJob
moment = require 'moment-timezone'

module.exports = (robot) ->
  new cron '0 0 12 * * *', () ->
    robot.send {room: '#bot_test'}, moment.tz('Asia/Tokyo').format 'Botのcronで時報 HH時をお知らせします。'
  ,null, true, 'Asia/Tokyo'

