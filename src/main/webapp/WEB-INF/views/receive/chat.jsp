<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Testing websockets</title>
</head>
<body>
    <fieldset>
        <textarea id="messageWindow" rows="10" cols="50" readonly="true"></textarea>
        <br/>
        <input type="submit" value="send" onclick="send()" />
    </fieldset>
</body>
    <script type="text/javascript">
        var textarea = document.getElementById("messageWindow");
        //1.서버와의 연결
        //web socket을 이용하기 위해서는 클라이언트로부터 서버로 요청을 수행하여 연결을 해야한다.
        var webSocket = new WebSocket('ws://localhost:4577/chat/broadcasting');
        var inputMessage = document.getElementById('inputMessage');
    webSocket.onerror = function(event) {
      onError(event)
    };
    webSocket.onopen = function(event) {
    	alert('연결1');
      onOpen(event)
    };
    webSocket.onmessage = function(event) {
      onMessage(event)
    };
    //3.데이터 수신 
    //서버가 보낸 데이터를 수신
    function onMessage(event) {
        textarea.value += "상대 : " + event.data + "\n";
    }
    function onOpen(event) {
    	alert('연결2');
        textarea.value += "연결 성공\n";
    }
    function onError(event) {
      alert(event.data);
    }
    function send() {
        //2.데이터 송신
        //서버와 연결된 상태에서 메시지 송신 리턴값은 boolean ->연결된 상태면 true
        webSocket.send(" 예약한 입사지원이 성공하였습니다.");
        inputMessage.value = "";
    }
  </script>
</html>