# Description:
#   美女じゃんけん
#
# Commands:
#   hubot じゃんけん {ぐー|ちょき|ぱー}

module.exports = (robot) ->
  robot.respond /じゃんけん[ |　](.*)/i, (msg) ->
    inputHandChar = msg.match[1]
    handType = ["ぐー","ちょき","ぱー"]
    botHandType = Math.floor(Math.random()*3)
    yourHandType = handType.indexOf(inputHandChar)

    #じゃんけん画像配列
    imageUrl = [
      "http://u.jimdo.com/www57/o/s7fd4acfcde082837/img/i578adffb4187d415/1412054505/std/image.jpg",
      "http://u.jimdo.com/www57/o/s7fd4acfcde082837/img/i9d85e3eabbd6b25c/1412054486/std/image.jpg",
      "http://u.jimdo.com/www57/o/s7fd4acfcde082837/img/i649d5ee5ea9d5ef9/1412219760/std/image.jpg"
    ]

    #hand = hands[Math.random() * 3]
    numhand = botHandType
    
    endmessage = 0

    endMessages = ["","あいこです","あなたの勝ち","わたしの勝ち"]

    if numhand is yourHandType 
       endmessage = 1
    else if yourHandType is 0
       #ぐー 
　　   if numhand is 1
          endmessage = 2
       else 
          endmessage = 3
    else if yourHandType is 1
       #ちょき
       if numhand == 0
          endmessage = 3 
       else 
          endmessage = 2
    else if yourHandType is 2
       #ぱー
       if numhand is 1
         endmessage = 3
       else
         endmessage = 2
       #その他
    msg.send "#{imageUrl[botHandType]} #{handType[botHandType]} #{endMessages[endmessage]}"

