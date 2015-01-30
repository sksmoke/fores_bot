# Description:
#   定時実行のボットゲーム
# Commands:
#   fsbot sfget,sfsta,sfcsta,sfranking

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
{name: '悪魔の模様の', realizationRate:-1, sizeRate:1},
{name: '死神模様の', realizationRate:-2, sizeRate:1},
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
{name: '即死注意', realizationRate:-1, sizeRate:1},
{name: '地獄へ直行', realizationRate:-2, sizeRate:1},
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
{name: '狂気の形', realizationRate:-1, sizeRate:1},
{name: '魔神形状', realizationRate:-2, sizeRate:1},
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
{name: '星カブ', price:90, size:4},
{name: '二つ星カブ', price:180, size:2},
{name: 'シマイモ', price:60, size:2},
{name: '妖精ピーマン', price:130, size:4},
{name: 'チンゲンツリー', price:140, size:2},
{name: '月面コンブ', price:90, size:6},
{name: '真空ワカメ', price:100, size:6},
{name: 'ホタル唐辛子', price:120, size:4},
{name: '宇宙そら豆', price:200, size:3},
{name: 'カリフラボール', price:350, size:1},
{name: 'バオバブロッコリー', price:300, size:1},
{name: 'ウキウキパセリ', price:100, size:4},
{name: 'ニラクラウン', price:140, size:3},
{name: '透明アボカド', price:150, size:3},
{name: '虹色ホウレンソウ', price:130, size:2},
{name: 'ガム', price:30, size:4},
{name: '肉じゃが', price:200, size:2},
{name: '長靴', price:5, size:5},
{name: 'オボロオクラ', price:100, size:1},
{name: 'ふるさといも', price: 120, size:4}]

# 称号
DESIGNATION = [{name: '[見習い]', point: 100, rate:1},
  {name: '[一般的]', price: 200, rate:2}]

# ユーザーセーブデータ
USER_POINT = 'user-point'
USER_DESIGNATION = 'user-designation'

# 出現作物データ
CROP_ADVENT_FLG = 'crop-advent-flg'
CROP_POINT = 'crop-point'
CROP_REST_NUM = 'crop-rest-num'
CROP_MODIFIER_NO = 'crop-modifier-no'
CROP_TYPE_NO = 'crop-type-no'
CROP_LAST_GET_USER = 'crop-last-get-user'
CROP_MAX_NUM = 20

cron = require('cron').CronJob
moment = require 'moment-timezone'

module.exports = (robot) ->
    new cron '0 * * * * 1-5', () ->
        rnd = Math.floor(Math.random() * 300) + 1
        cropAdventFlg = robot.brain.get CROP_ADVENT_FLG ? false
        if rnd < 10 && cropAdventFlg == false
            setCrop robot
        if rnd < 2 && cropAdventFlg == true
            endHarvestCrop robot

 #   robot.respond /sftes/i, (msg) ->
 #       setCrop robot

    robot.respond /sfget/i, (msg) ->
        harvestCrop robot, msg

    robot.respond /sfsta/i, (msg) ->
        checkUserStatus robot, msg

    robot.respond /sfcsta/i, (msg) ->
        checkCropStatus robot

# クーロンによる作物の準備
setCrop = (robot) ->
    cropModifierNo = Math.floor(Math.random() * MODIFIER.length)
    cropTypeNo = Math.floor(Math.random() * CROP_TYPE.length)
    rnd = Math.floor(Math.random() * CROP_MAX_NUM) + 1
    cropNum = Math.floor(MODIFIER[cropModifierNo].sizeRate + CROP_TYPE[cropTypeNo].size + rnd) + 5
    cropPrice = MODIFIER[cropModifierNo].realizationRate * CROP_TYPE[cropTypeNo].price

    robot.brain.set(CROP_ADVENT_FLG, true)
    robot.brain.set(CROP_POINT, cropPrice)
    robot.brain.set(CROP_REST_NUM, cropNum)
    robot.brain.set(CROP_MODIFIER_NO, cropModifierNo)
    robot.brain.set(CROP_TYPE_NO, cropTypeNo)
    robot.send {room: '#bot_test'}, MODIFIER[cropModifierNo].name + CROP_TYPE[cropTypeNo].name + '(' + cropPrice + ' FOE)が、' + cropNum + '個収穫できるぞ！！'
    
# コマンドによる作物の収穫
harvestCrop = (robot, msg) ->
    uIndex = msg.message.user.name
    uDesignation = robot.brain.get(uIndex + USER_DESIGNATION) ? 0
    getNum = DESIGNATION[uDesignation].rate + Math.floor(Math.random() * 2)
    cropNum = robot.brain.get(CROP_REST_NUM) ? 0
    cropAdventFlg = robot.brain.get CROP_ADVENT_FLG ? false
    if cropAdventFlg == true
        if cropNum - getNum < 0
            setUserPoint uIndex, cropNum, robot
            endHarvestCrop robot
        else
            setUserPoint uIndex, getNum, robot
    else
        robot.send {room: '#bot_test'}, 'まだ、収穫できないよ'

# 作物の収穫完了
endHarvestCrop = (robot) ->
    cropModifierNo = robot.brain.get(CROP_MODIFIER_NO) ? 0
    cropTypeNo = robot.brain.get(CROP_TYPE_NO) ? 0
    robot.brain.set(CROP_ADVENT_FLG, false)
    robot.send {room: '#bot_test'}, MODIFIER[cropModifierNo].name + CROP_TYPE[cropTypeNo].name + 'の収穫が終わりました。 :four_leaf_clover:'
    

# 収穫したポイントの設定
setUserPoint = (uIndex, getNum, robot) ->
    cropLastGetUser = robot.brain.get(CROP_LAST_GET_USER) ? ""
    if uIndex != cropLastGetUser
        cropModifierNo = robot.brain.get(CROP_MODIFIER_NO) ? 0
        cropTypeNo = robot.brain.get(CROP_TYPE_NO) ? 0
        cropName = MODIFIER[cropModifierNo].name + CROP_TYPE[cropTypeNo].name
        cropPrice = robot.brain.get(CROP_POINT) ? 0
        cropNum = robot.brain.get(CROP_REST_NUM) ? 0
    
        uPoint = robot.brain.get(uIndex + USER_POINT) ? 0
    
        robot.brain.set(CROP_REST_NUM, cropNum - getNum)
        #robot.brain.set CROP_LAST_GET_USER uIndex
        robot.brain.set(uIndex + USER_POINT, uPoint + Math.floor(getNum * cropPrice))
        
        robot.send {room: '#bot_test'}, cropName + 'を、' + getNum + '個収穫しました。'
        robot.send {room: '#bot_test'}, uIndex + 'が、' + Math.floor(getNum * cropPrice) + ' FOE取得しました。'
        checkCropStatus(robot)
        
    else
        robot.send {room: '#bot_test'}, uIndex + 'は、続けて収穫できません。'
    

# 自分のステータス確認
checkUserStatus = (robot, msg) ->
    uIndex = msg.message.user.name
    uDesignation = robot.brain.get(uIndex + USER_DESIGNATION) ? 0
    uPoint = robot.brain.get(uIndex + USER_POINT) ? 0

    robot.send {room: '#bot_test'}, uIndex + ':' + DESIGNATION[uDesignation].name
    robot.send {room: '#bot_test'}, '　point:' + uPoint + ' FOE'

checkCropStatus = (robot) ->
    cropModifierNo = robot.brain.get(CROP_MODIFIER_NO) ? 0
    cropTypeNo = robot.brain.get(CROP_TYPE_NO) ? 0
    cropName = MODIFIER[cropModifierNo].name + CROP_TYPE[cropTypeNo].name
    cropNum = robot.brain.get(CROP_REST_NUM) ? 0
    cropAdventFlg = robot.brain.get CROP_ADVENT_FLG ? false
    if cropAdventFlg == true
        robot.send {room: '#bot_test'}, cropName + 'は、残り' + cropNum + '個！'
    else
        robot.send {room: '#bot_test'}, '収穫できる作物がないよ'

# ランキング
