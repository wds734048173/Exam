<%--
  Created by IntelliJ IDEA.
  User: WDS
  Date: 2019/1/13
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>三级联动</title>
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script>
        var iNum1;
        var iNum2;
        var aProvince = ['湖北','江苏','安徽'];
        var aCity =[['武汉','黄冈','荆门'],['南京','无锡','镇江'],['合肥','安庆','黄山']];
        var aCountry =[[['武汉1','武汉2'],['黄冈1','黄冈2'],['荆门1','荆门2']],[['南京1','南京2'],['无锡1','无锡2'],['镇江1','镇江2']],[['合肥1','合肥2'],['安庆1','安庆2'],['黄山1','黄山2']]];

        $(function () {
            for(var i=0;i<aProvince.length;i++){
                $('#selProvince').append('<option>'+aProvince[i]+'</option>');
            };
            $('#selProvince').change(function () {
                $('#selCity').children().not(':eq(0)').remove();
                $('#selCountry').children().not(':eq(0)').remove();
                iNum1 = $(this).children('option:selected').index();
                var aaCity = aCity[iNum1-1];
                for(var j=0;j<aaCity.length;j++){
                    $('#selCity').append('<option>'+aaCity[j]+'</option>');
                }
            });
            $('#selCity').change(function () {
                $('#selCountry').children().not(':eq(0)').remove();
                iNum2 = $(this).children('option:selected').index();
                var aaCountry = aCountry[iNum1-1][iNum2-1];
                for(var k=0;k<aaCountry.length;k++){
                    $('#selCountry').append('<option>'+aaCountry[k]+'</option>');
                }
            })
        })
    </script>
</head>
<body>
    <div>
        <select name="" id="selProvince">
            <option value="">----请选择----</option>
        </select>
        <select name="" id="selCity">
            <option value="">----请选择----</option>
        </select>
        <select name="" id="selCountry">
            <option value="">----请选择----</option>
        </select>
    </div>
</body>
</html>
