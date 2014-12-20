module.exports = (robot) ->
	robot.hear /(.*)だが(.*)/i, (msg) ->
		msg.send "http://imgcc.naver.jp/kaze/mission/USER/20120712/15/1022545/19/407x607xf259e0587faac51a89d65166.jpg?" + Math.random().toString()

	robot.hear /(.*)女(.*)/i, (msg) ->
		msg.send "http://blogs.c.yimg.jp/res/blog-3c-55/bmdfh185/folder/1032317/78/23860578/img_0?"  + Math.random().toString()

	robot.hear /(.*)行く(.*)/i, (msg) ->
		msg.send "http://dg.galman.jp/img/001de_4136/%E8%A1%8C%E3%81%91%EF%BC%81%E7%A8%B2%E4%B8%AD%E5%8D%93%E7%90%83%E9%83%A8.gif?" + Math.random().toString()

	robot.hear /(.*)嫁(.*)/i, (msg) ->
 		msg.send "http://up.gc-img.net/post_img_web/2013/12/IFwiJZQcVXSs8zU?" + Math.random().toString()

	robot.hear /(.*)ずるい(.*)/i, (msg) ->
		msg.send "http://livedoor.blogimg.jp/nana_news/imgs/d/8/d833bce9.jpg?" + Math.random().toString()

	robot.hear /(.*)おは(.*)/i, (msg) ->
		msg.send msg.random ["おっはー", "おはよ", "おはよーさま"]

	robot.hear /(.*)言う(.*)/i, (msg) ->
		msg.send "http://livedoor.blogimg.jp/nana_news/imgs/9/b/9b3176a7.jpg?" + Math.random().toString()
