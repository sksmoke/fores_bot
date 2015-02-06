module.exports = (robot) ->
	robot.hear /(.*)だが(.*)/i, (msg) ->
		imageTiqav msg, "http://imgcc.naver.jp/kaze/mission/USER/20120712/15/1022545/19/407x607xf259e0587faac51a89d65166.jpg?"

	robot.hear /(.*)女(.*)/i, (msg) ->
		imageTiqav msg, "http://blogs.c.yimg.jp/res/blog-3c-55/bmdfh185/folder/1032317/78/23860578/img_0?"

	robot.hear /(.*)行く(.*)/i, (msg) ->
		imageTiqav msg, "http://dg.galman.jp/img/001de_4136/%E8%A1%8C%E3%81%91%EF%BC%81%E7%A8%B2%E4%B8%AD%E5%8D%93%E7%90%83%E9%83%A8.gif?"

	robot.hear /(.*)嫁(.*)/i, (msg) ->
 		imageTiqav msg, "http://up.gc-img.net/post_img_web/2013/12/IFwiJZQcVXSs8zU?"

	robot.hear /(.*)ずるい(.*)/i, (msg) ->
		imageTiqav msg, "http://livedoor.blogimg.jp/nana_news/imgs/d/8/d833bce9.jpg?"

	robot.hear /(.*)ぬる|Null|null(.*)/i, (msg) ->
		imageTiqav msg, "http://www.sisimaru.com/media/1/20060221-SafariScreenSnapz003.jpg?"

	robot.hear /(.*)言う(.*)/i, (msg) ->
		imageTiqav msg, "http://livedoor.blogimg.jp/nana_news/imgs/9/b/9b3176a7.jpg?"

	robot.hear /(.*)ちくわ(.*)/i, (msg) ->
		imageTiqav msg, "http://blog-imgs-60.fc2.com/h/i/r/hirofumi1623jp/be97a404.jpg?"

	robot.hear /.*/i, (msg) ->
		chatDialogue msg, 3000


imageTiqav = (msg, drowUrl) ->
	room = msg.message.user.room
	if room == 'general'
		return
	msg.http('http://api.tiqav.com/search.json?q='+msg)
		.query({
			format: 'json'
			type: 'rand'
		})
		.get() (err, res, body) ->
			jbody = JSON.parse(body)
			idrnd = Math.floor(Math.random() * jbody.length)
			rnd = Math.floor(Math.random() * 2) + 1
			mrs = Math.random().toString()
			if rnd > 1
				msg.send {room: '#bot_test'}, "http://img.tiqav.com/" + jbody[idrnd].id + ".jpg?" + mrs
			else
				msg.send {room: '#bot_test'}, drowUrl + mrs
				
chatDialogue = (msg, num) =>
	rnd = Math.floor(Math.random() * num) + 1
	room = msg.message.user.room
	if room == 'general'
		return
	if rnd < 2
		message = msg.match[0]
		msg.http('https://api.apigw.smt.docomo.ne.jp/dialogue/v1/dialogue')
		.query({
			format: 'json'
			APIKEY: '722f576273444b784b346d783737317371644f41676b376a4879587835344f6262586f38377930786d4a41'
		})
		.post(JSON.stringify({ utt: message })) (err, _, body) ->
			if err?
				msg.send {room: '#bot_test'}, 'docomo-dialogue: error'
			else
				msg.send {room: '#bot_test'}, JSON.parse(body).utt
				
getTimeDiffAsMinutes = (old_msec) ->
	now = new Date()
	old = new Date(old_msec)
	diff_msec = now.getTime() - old.getTime()
	diff_minutes = parseInt( diff_msec / (60*1000), 10 )
	return diff_minutes