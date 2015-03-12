# Description:
#   定時実行のボットゲーム
# Commands:
#   fsbot sfget,sfsend,sfsta,sfcsta,sfrank

# 修飾語
MODIFIER = [{name: 'ミニ', realizationRate: 0.4, sizeRate:0.6},
{name: '恒星サイズの', realizationRate:8, sizeRate:4},
{name: '惑星サイズの', realizationRate:7, sizeRate:3},
{name: '山のような', realizationRate:6, sizeRate:3},
{name: '家ほどもある', realizationRate:5.5, sizeRate:3},
{name: '大巨人', realizationRate:5, sizeRate:3},
{name: 'ジャイアント', realizationRate:4, sizeRate:2},
{name: '超ビッグ', realizationRate:3, sizeRate:2},
{name: 'ビッグ', realizationRate:3.5, sizeRate:2},
{name: '大きい', realizationRate:2, sizeRate:2},
{name: 'やや大', realizationRate:1, sizeRate:2},
{name: 'やや小', realizationRate:0.8, sizeRate:1},
{name: 'スモール', realizationRate:0.7, sizeRate:1},
{name: '超スモール', realizationRate:0.6, sizeRate:1},
{name: '豆粒ほどの', realizationRate:0.5, sizeRate:1},
{name: '極小', realizationRate:0.4, sizeRate:0.6},
{name: 'ミクロ', realizationRate:0.3, sizeRate:0.6},
{name: '目に見えない', realizationRate:0.2, sizeRate:0.6},
{name: '分子レベル', realizationRate:0.1, sizeRate:0.4},
{name: '原子レベル', realizationRate:0.05, sizeRate:0.2},
{name: '銀河一重量', realizationRate:8, sizeRate:1},
{name: '天下一重量', realizationRate:7, sizeRate:1},
{name: '星より重い', realizationRate:6, sizeRate:1},
{name: '超ヘビー級', realizationRate:5.5, sizeRate:1},
{name: 'ゾウより重い', realizationRate:5, sizeRate:1},
{name: '持ち運び不可', realizationRate:4, sizeRate:1},
{name: 'ヘビー級', realizationRate:3, sizeRate:1},
{name: 'ライトヘビー', realizationRate:3.5, sizeRate:1},
{name: 'ずっしりな', realizationRate:2, sizeRate:1},
{name: '重たい', realizationRate:1, sizeRate:1},
{name: 'やや重', realizationRate:0.8, sizeRate:1},
{name: 'やや軽', realizationRate:0.7, sizeRate:1},
{name: '軽量', realizationRate:0.6, sizeRate:1},
{name: 'スカスカ', realizationRate:0.5, sizeRate:1},
{name: 'かるがる', realizationRate:0.4, sizeRate:1},
{name: 'ストロー級', realizationRate:0.3, sizeRate:1},
{name: '超軽量', realizationRate:0.2, sizeRate:1},
{name: 'ほとんど空気な', realizationRate:0.1, sizeRate:1},
{name: '空気より軽い', realizationRate:0.05, sizeRate:1},
{name: 'ほとんど水素', realizationRate:-1, sizeRate:1},
{name: '宇宙最軽量', realizationRate:-2, sizeRate:1},
{name: '至高の模様の', realizationRate:8, sizeRate:1},
{name: '伝説の模様の', realizationRate:7, sizeRate:1},
{name: '神秘の模様の', realizationRate:6, sizeRate:1},
{name: '勇者の模様の', realizationRate:5.5, sizeRate:1},
{name: '稀少模様の', realizationRate:5, sizeRate:1},
{name: 'アートな模様の', realizationRate:4, sizeRate:1},
{name: 'ふしぎ模様の', realizationRate:3, sizeRate:1},
{name: '珍奇模様の', realizationRate:3.5, sizeRate:1},
{name: '爆笑模様の', realizationRate:2, sizeRate:1},
{name: 'ゆかいな模様の', realizationRate:1, sizeRate:1},
{name: '面白模様の', realizationRate:0.8, sizeRate:1},
{name: '変な模様の', realizationRate:0.7, sizeRate:1},
{name: '不吉模様の', realizationRate:0.6, sizeRate:1},
{name: '人面模様の', realizationRate:0.5, sizeRate:1},
{name: '催眠模様の', realizationRate:0.4, sizeRate:1},
{name: '呪いの模様の', realizationRate:0.3, sizeRate:1},
{name: '凶悪模様の', realizationRate:0.2, sizeRate:1},
{name: '血まみれ模様の', realizationRate:0.1, sizeRate:1},
{name: '怨霊の模様の', realizationRate:0.05, sizeRate:1},
{name: '悪魔の模様の', realizationRate:-1, sizeRate:2},
{name: '死神模様の', realizationRate:-2, sizeRate:3},
{name: '[奇跡の秘薬]', realizationRate:8, sizeRate:1},
{name: '[死者復活]', realizationRate:7, sizeRate:1},
{name: '[不老長寿]', realizationRate:6, sizeRate:1},
{name: '[万病治癒]', realizationRate:5.5, sizeRate:1},
{name: '[体力全快]', realizationRate:5, sizeRate:1},
{name: '[精力増強]', realizationRate:4, sizeRate:1},
{name: '[滋養強壮]', realizationRate:3, sizeRate:1},
{name: '[解毒作用]', realizationRate:3.5, sizeRate:1},
{name: '健康になる', realizationRate:2, sizeRate:1},
{name: '栄養たっぷり', realizationRate:1, sizeRate:1},
{name: 'ビタミン豊富', realizationRate:0.8, sizeRate:1},
{name: '栄養不足', realizationRate:0.7, sizeRate:1},
{name: '栄養なし', realizationRate:0.6, sizeRate:1},
{name: 'なんとか食用', realizationRate:0.5, sizeRate:1},
{name: '体に悪い', realizationRate:0.4, sizeRate:1},
{name: '体がしびれる', realizationRate:0.3, sizeRate:1},
{name: '毒薬原料', realizationRate:0.2, sizeRate:1},
{name: 'デンジャラス', realizationRate:0.1, sizeRate:1},
{name: '呪いの猛毒', realizationRate:0.05, sizeRate:1},
{name: '即死注意', realizationRate:-2, sizeRate:1},
{name: '地獄へ直行', realizationRate:-4, sizeRate:1},
{name: '天上甘味', realizationRate:8, sizeRate:1},
{name: '最高甘味', realizationRate:7, sizeRate:1},
{name: '幸福甘味', realizationRate:6, sizeRate:1},
{name: 'あまあまあま', realizationRate:5.5, sizeRate:1},
{name: '極上甘味', realizationRate:5, sizeRate:1},
{name: 'うっとり甘味', realizationRate:4, sizeRate:1},
{name: '上質甘味', realizationRate:3, sizeRate:1},
{name: 'あまあま', realizationRate:3.5, sizeRate:1},
{name: '甘味', realizationRate:2, sizeRate:1},
{name: 'それなり甘い', realizationRate:1, sizeRate:1},
{name: 'やや甘', realizationRate:0.8, sizeRate:1},
{name: '甘くない', realizationRate:0.7, sizeRate:1},
{name: 'やや辛', realizationRate:0.6, sizeRate:1},
{name: 'ピリッと辛い', realizationRate:0.5, sizeRate:1},
{name: '中辛', realizationRate:0.4, sizeRate:1},
{name: '口内火事', realizationRate:0.3, sizeRate:1},
{name: '激辛', realizationRate:0.2, sizeRate:1},
{name: '大激辛', realizationRate:0.1, sizeRate:1},
{name: 'どとうの激辛', realizationRate:0.05, sizeRate:1},
{name: '口内破壊', realizationRate:-1, sizeRate:1},
{name: '死に至る辛さ', realizationRate:-2, sizeRate:1},
{name: '宇宙一食感', realizationRate:8, sizeRate:1},
{name: '天使の食感', realizationRate:7, sizeRate:1},
{name: '至福の食感', realizationRate:6, sizeRate:1},
{name: '大吉食感', realizationRate:5.5, sizeRate:1},
{name: '感涙食感', realizationRate:5, sizeRate:1},
{name: 'ほんわか食感', realizationRate:4, sizeRate:1},
{name: '舌でとろける', realizationRate:3, sizeRate:1},
{name: 'ふんわり', realizationRate:3.5, sizeRate:1},
{name: 'まろやか', realizationRate:2, sizeRate:1},
{name: 'サクサク', realizationRate:1, sizeRate:1},
{name: '歯ざわりＯＫ', realizationRate:0.8, sizeRate:1},
{name: 'やや固い', realizationRate:0.7, sizeRate:1},
{name: '固い', realizationRate:0.6, sizeRate:1},
{name: 'バリバリ', realizationRate:0.5, sizeRate:1},
{name: 'ガチガチ', realizationRate:0.4, sizeRate:1},
{name: '歯が欠ける', realizationRate:0.3, sizeRate:1},
{name: 'ほとんど岩石', realizationRate:0.2, sizeRate:1},
{name: '鋼鉄硬度', realizationRate:0.1, sizeRate:1},
{name: '超硬度', realizationRate:0.05, sizeRate:1},
{name: '破壊不能', realizationRate:-1, sizeRate:1},
{name: '完全剛体', realizationRate:-2, sizeRate:1},
{name: '神秘の形状', realizationRate:8, sizeRate:1},
{name: '国宝形状', realizationRate:7, sizeRate:1},
{name: '感動的な形', realizationRate:6, sizeRate:1},
{name: '魅惑の形状', realizationRate:5.5, sizeRate:1},
{name: '稀少形状', realizationRate:5, sizeRate:1},
{name: 'アートな形', realizationRate:4, sizeRate:1},
{name: 'ふしぎな形', realizationRate:3, sizeRate:1},
{name: 'きれいな形', realizationRate:3.5, sizeRate:1},
{name: '珍しい形', realizationRate:2, sizeRate:1},
{name: '陽気な形', realizationRate:1, sizeRate:1},
{name: '面白形状', realizationRate:0.8, sizeRate:1},
{name: 'おかしな形', realizationRate:0.7, sizeRate:1},
{name: '崩れ形状', realizationRate:0.6, sizeRate:1},
{name: 'いやな形', realizationRate:0.5, sizeRate:1},
{name: 'みにくい形', realizationRate:0.4, sizeRate:1},
{name: 'ぶきみな形', realizationRate:0.3, sizeRate:1},
{name: '危険形状', realizationRate:0.2, sizeRate:1},
{name: 'ヤバい形', realizationRate:0.1, sizeRate:1},
{name: '恐怖形状', realizationRate:0.05, sizeRate:1},
{name: '狂気の形', realizationRate:-3, sizeRate:1},
{name: 'SAN値直葬', realizationRate:-8, sizeRate:2},
{name: '癒しの芳香', realizationRate:8, sizeRate:1},
{name: '天国芳香', realizationRate:7, sizeRate:1},
{name: '神秘芳香', realizationRate:6, sizeRate:1},
{name: '超芳香', realizationRate:5.5, sizeRate:1},
{name: '幸福芳香', realizationRate:5, sizeRate:1},
{name: 'うっとり芳香', realizationRate:4, sizeRate:1},
{name: '清涼芳香', realizationRate:3, sizeRate:1},
{name: '落ちつく香り', realizationRate:3.5, sizeRate:1},
{name: '芳香', realizationRate:2, sizeRate:1},
{name: 'よい香り', realizationRate:1, sizeRate:1},
{name: 'かすかな香り', realizationRate:0.8, sizeRate:1},
{name: '気になる匂い', realizationRate:0.7, sizeRate:1},
{name: '悪い匂い', realizationRate:0.6, sizeRate:1},
{name: '子犬の匂い', realizationRate:0.5, sizeRate:1},
{name: '刺激臭', realizationRate:0.4, sizeRate:1},
{name: '鼻曲がり臭', realizationRate:0.3, sizeRate:1},
{name: '大悪臭', realizationRate:0.2, sizeRate:1},
{name: '腐敗臭', realizationRate:0.1, sizeRate:1},
{name: '危険な悪臭', realizationRate:0.05, sizeRate:1},
{name: '失神悪臭', realizationRate:-1, sizeRate:1},
{name: '悪夢の匂い', realizationRate:-2, sizeRate:1},
{name: '破壊的な', realizationRate: 1.2, sizeRate:2}]

# 作物種別
CROP_TYPE = [{name: 'ウリボ', price: 100, size:2},
{name: '銀河ドリアン', price:800, size:1},
{name: 'スイカタワー', price:500, size:1},
{name: '高速パイン', price:256, size:2},
{name: 'イチゴブドウ', price:130, size:3},
{name: 'イチゴトウフ', price:200, size:2},
{name: '砲丸ピーチ', price:160, size:3},
{name: 'ローソクコーン', price:30, size:3},
{name: 'ひよこレモン', price:20, size:4},
{name: 'ママレモン', price:280, size:2},
{name: 'パパレモン', price:320, size:1},
{name: 'ドームメロン', price:450, size:1},
{name: '土星ナス', price:40, size:4},
{name: '電灯キューリ', price:120, size:3},
{name: 'トマポ', price:105, size:5},
{name: '冥王マツタケ', price:400, size:1},
{name: '火星カボチャ', price:230, size:1},
{name: 'ごぼう玉', price:140, size:2},
{name: 'イモ球', price:130, size:3},
{name: 'タマネギボム', price:120, size:3},
{name: 'コスモニンジン', price:100, size:6},
{name: '腰掛レンコン', price:80, size:5},
{name: '星カブ', price:90, size:8},
{name: '二ツ星カブ', price:180, size:4},
{name: '三ツ星カブ', price:360, size:2},
{name: 'シマイモ', price:60, size:12},
{name: 'タテシマイモ', price:110, size:8},
{name: '妖精ピーマン', price:130, size:4},
{name: 'チンゲンツリー', price:140, size:2},
{name: '月面コンブ', price:90, size:10},
{name: '真空ワカメ', price:100, size:8},
{name: 'ホタル唐辛子', price:120, size:4},
{name: '宇宙そら豆', price:200, size:6},
{name: 'カリフラボール', price:350, size:2},
{name: 'バオバブロッコリー', price:300, size:1},
{name: 'ウキウキパセリ', price:100, size:8},
{name: 'ニラクラウン', price:140, size:4},
{name: '透明アボカド', price:150, size:3},
{name: '虹色ホウレンソウ', price:130, size:5},
{name: 'チューインガム', price:30, size:4},
{name: '肉じゃが', price:200, size:2},
{name: '３９ネギ', price:390, size:3},
{name: 'チョコクロワッサン', price:105, size:2},
{name: '長靴', price:5, size:5},
{name: 'オボロオクラ', price:100, size:3},
{name: 'ふるさといも', price: 120, size:6}]

# 称号
DESIGNATION = [
    {name: '[すっぴん]', point: 0, rate:0},
    {name: '[見習い]', point: 500, rate:1},
    {name: '[なりたて農家]', point: 2000, rate:2},
    {name: '[ベテラン農家]', point: 10000, rate:3},
    {name: '[伝説の農家]', point: 500000, rate:4},
    {name: '[農家王]', point: 5000000, rate:5},
    {name: '[宇宙農家]', point: 9999999999, rate:6}]

# ユーザーセーブデータ
USER_LIST = 'user-list'
USER_POINT = 'user-point'
USER_NAME = null
# 出現作物データ
CROP_ADVENT_FLG = 'crop-advent-flg'
CROP_POINT = 'crop-point'
CROP_REST_NUM = 'crop-rest-num'
CROP_MODIFIER_NO = 'crop-modifier-no'
CROP_TYPE_NO = 'crop-type-no'
CROP_LAST_GET_USER = 'crop-last-get-user'
CROP_LAST_SEND_USER = 'crop-last-send-user'
CROP_MAX_NUM = 10

cron = require('cron').CronJob
moment = require 'moment-timezone'

module.exports = (robot) ->
    new cron '0 * * * * *', () ->
        rnd = Math.floor(Math.random() * 600) + 1
        cropAdventFlg = robot.brain.get(CROP_ADVENT_FLG) ? false
        if rnd < 6 && cropAdventFlg == false
            setCrop robot
        if rnd < 25 && cropAdventFlg == true
            endHarvestCrop robot
    , null, true, 'Asia/Tokyo'

    robot.respond /sftes/i, (msg) ->
        setCrop robot

    robot.respond /sfget/i, (msg) ->
        harvestCrop robot, msg, false

    robot.respond /sfsend/i, (msg) ->
        harvestCrop robot, msg, true

    robot.respond /sfsta/i, (msg) ->
        checkUserStatus robot, msg

    robot.respond /sfcsta/i, (msg) ->
        checkCropStatus robot

    robot.respond /sfrank/i, (msg) ->
        checkUserRanks robot, msg
        
getUserList = (robot) ->
    return robot.brain.get(USER_POINT) or []
    
# クーロンによる作物の準備
setCrop = (robot) ->
    cropModifierNo = Math.floor(Math.random() * MODIFIER.length)
    cropTypeNo = Math.floor(Math.random() * CROP_TYPE.length)
    rnd = Math.floor(Math.random() * CROP_MAX_NUM) + 1
    sub = Math.floor(Math.random() * CROP_MAX_NUM) + 1
    cropNum = Math.floor(MODIFIER[cropModifierNo].sizeRate * (CROP_TYPE[cropTypeNo].size + rnd)) + 1
    cropNum = if (cropNum - sub > 0) then cropNum - sub else 1
    cropPrice = Math.floor(MODIFIER[cropModifierNo].realizationRate * CROP_TYPE[cropTypeNo].price)
    
    robot.brain.set(CROP_ADVENT_FLG, true)
    robot.brain.set(CROP_POINT, cropPrice)
    robot.brain.set(CROP_REST_NUM, cropNum)
    robot.brain.set(CROP_MODIFIER_NO, cropModifierNo)
    robot.brain.set(CROP_TYPE_NO, cropTypeNo)
    robot.send {room: 'bot_test'}, MODIFIER[cropModifierNo].name + CROP_TYPE[cropTypeNo].name + '(' + cropPrice + ' FORESポイント)が、' + cropNum + '個収穫できるぞ！！\n「fsbot sfget」で収穫だ、「fsbot sfsend」でプレゼントも出来るぞ！'+moment.tz('Asia/Tokyo').format ' (MM/DD HH:mm)'

# コマンドによる作物の収穫
harvestCrop = (robot, msg, bSend) ->
    uIndex = if(USER_NAME) then USER_NAME else msg.message.user.name
    uPoint = getPoint(uIndex, robot)
    uDesignation = getDesignatetion(uPoint)

    getNum = Math.floor(Math.random() * DESIGNATION[uDesignation].rate) + 1
    cropAdventFlg = robot.brain.get(CROP_ADVENT_FLG) ? false
    cropLastGetUser = robot.brain.get(CROP_LAST_GET_USER) ? ""
    cropLastSendUser = robot.brain.get(CROP_LAST_SEND_USER) ? ""
    
    if cropAdventFlg == true
        if bSend
            if uIndex != cropLastSendUser        
                robot.brain.set(CROP_LAST_SEND_USER, uIndex)
                userLists = getUserList(robot)
                if userLists.length <= 0
                    return
                userListNo = Math.floor(Math.random() * userLists.length)
                if uIndex != userLists[userListNo].name
                    robot.send {room: 'bot_test'}, userLists[userListNo].name + '宛に' + uIndex + 'から贈り物が！！'
                else
                    robot.send {room: 'bot_test'}, '自分へのプレゼントを贈ろう！'
                uIndex = userLists[userListNo].name
            else
                robot.send {room: 'bot_test'}, uIndex + 'は、続けてプレゼントできません。'
                return
        else
            if uIndex != cropLastGetUser        
                robot.brain.set(CROP_LAST_GET_USER, uIndex)
            else
                robot.send {room: 'bot_test'}, uIndex + 'は、続けて収穫できません。'
                return
                
        setUserPoint uIndex, getNum, robot
    else
        robot.send {room: 'bot_test'}, 'まだ、収穫できないよ'

# 作物の収穫完了
endHarvestCrop = (robot) ->
    cropModifierNo = robot.brain.get(CROP_MODIFIER_NO) ? 0
    cropTypeNo = robot.brain.get(CROP_TYPE_NO) ? 0
    robot.brain.set(CROP_ADVENT_FLG, false)
    robot.brain.set(CROP_LAST_GET_USER, '')
    robot.brain.set(CROP_LAST_SEND_USER, '')
    robot.send {room: 'bot_test'}, MODIFIER[cropModifierNo].name + CROP_TYPE[cropTypeNo].name + 'の収穫が終わりました。 :four_leaf_clover: ' + moment.tz('Asia/Tokyo').format '(MM/DD HH:mm)'

# 収穫したポイントの設定
setUserPoint = (uIndex, getNum, robot) ->
    cropModifierNo = robot.brain.get(CROP_MODIFIER_NO) ? 0
    cropTypeNo = robot.brain.get(CROP_TYPE_NO) ? 0
    cropName = MODIFIER[cropModifierNo].name + CROP_TYPE[cropTypeNo].name
    cropPrice = robot.brain.get(CROP_POINT) ? 0
    cropNum = robot.brain.get(CROP_REST_NUM) ? 0
    userLists = getUserList(robot)
    setFlag = true
    endPoint = 1
    if cropNum - getNum <= 0
        getNum = cropNum
        endPoint = 2
        
    uPoint = Math.floor(getNum * cropPrice) * endPoint
    for userList, index in userLists
        if userList.name == uIndex
            userLists[index].point += uPoint
            setFlag = false
    
    if setFlag == true
        userLists.push({'name': uIndex, 'point': uPoint})

    robot.brain.set(CROP_REST_NUM, cropNum - getNum)
    robot.brain.set(USER_POINT, userLists)
    robot.send {room: 'bot_test'}, cropName + 'を、' + getNum + '個収穫しました。\n' + uIndex + 'が、' + uPoint + ' FORESポイント取得しました。'
    checkCropStatus(robot)
    if endPoint > 1
        robot.send {room: 'bot_test'}, 'ラストボーナス！！ポイント２倍！！'
        endHarvestCrop robot

getPoint = (uIndex, robot) ->
    uPoint = 0
    userLists = getUserList(robot)
    for userList, index in userLists
        if userList.name == uIndex
            uPoint = userList.point
    return uPoint

getDesignatetion = (point) ->
    num = 0
    for d, index in DESIGNATION
        if d.point <= point
            num = index
    return num
    
# 自分のステータス確認
checkUserStatus = (robot, msg) ->
    uIndex = if(USER_NAME) then USER_NAME else msg.message.user.name
    uPoint = getPoint(uIndex, robot)
    uDesignation = getDesignatetion(uPoint)
    nextPoint = 0
    if DESIGNATION.length >= uDesignation + 1
        nextPoint = DESIGNATION[uDesignation + 1].point - uPoint

    robot.send {room: 'bot_test'}, uIndex + '　' + DESIGNATION[uDesignation].name + ' 得点：' + uPoint + ' FORESポイント\n次の称号まで、あと' + nextPoint

checkCropStatus = (robot) ->
    cropModifierNo = robot.brain.get(CROP_MODIFIER_NO) ? 0
    cropTypeNo = robot.brain.get(CROP_TYPE_NO) ? 0
    cropName = MODIFIER[cropModifierNo].name + CROP_TYPE[cropTypeNo].name
    cropNum = robot.brain.get(CROP_REST_NUM) ? 0
    cropAdventFlg = robot.brain.get CROP_ADVENT_FLG ? false
    if cropAdventFlg == true
        robot.send {room: 'bot_test'}, cropName + 'は、残り' + cropNum + '個！'
    else
        robot.send {room: 'bot_test'}, '収穫できる作物がないよ'

# ランキング
checkUserRanks = (robot, msg) ->
    uDesignation = 0
    uPoint = 0
    rWord = ''
    userLists = getUserList(robot)
    if userLists.length <= 0
        return
    # ポイント降順にソート
    userLists.sort (a, b) -> b.point - a.point

    for userList, index in userLists
        uPoint = userList.point
        uDesignation = getDesignatetion(uPoint)
        rWord += userList.name + '　' + DESIGNATION[uDesignation].name + ' 得点：' + uPoint + ' FORESポイント\n'
    
    robot.send {room: 'bot_test'}, rWord

