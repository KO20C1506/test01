/*
	오늘 날짜와 시간을 구하는 함수
 */
	function currentTime() {
		
		var now = new Date();
		var time = "오늘은" +now.getFullYear()+"년"+(now.getMonth()+1)+"월"+now.getDate()+"일";
		switch (now.getDay()) {
			case 0: time = time + "(일요일)";break;
			case 1: time = time + "(월요일)";break;
			case 2: time = time + "(화요일)";break;
			case 3: time = time + "(수요일)";break;
			case 4: time = time + "(목요일)";break;
			case 5: time = time + "(금요일)";break;
			case 6: time = time + "(토요일)";break;
		}
		time = time + now.getHours()+"시"+now.getMinutes()+"분 입니다.";
		document.getElementById("time").innerHTML = time.fontsize(3).fontcolor('blue');
	}