<%--
  Created by IntelliJ IDEA.
  User: WDS
  Date: 2019/1/12
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功页面</title>
    <script type="text/javascript">
        onload=function(){
            setInterval(go, 1000);
        };
        var x=6; //利用了全局变量来执行
        function go(){
            x--;
            if(x>0){
                document.getElementById("sp").innerText="剩余"+x+"秒后跳转。。。"; //每次设置的x的值都不一样了。
            }else{
                location.href='/brandList.do';
            }
        }
    </script>
</head>
<body>
<h1>登录成功，欢迎您：${sessionScope.user.username}</h1>
<span style="color: purple;font-size: 36px;"  id="sp"></span>
</body>
</html>
