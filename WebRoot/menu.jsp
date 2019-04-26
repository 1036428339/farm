<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单</title>
<style>
        body {
            margin: 0px;           
        }
        
        .bar{
        	background-image:url(images/topbar.png);        	
            background-size:25% 60px;
            background-repeat:repeat-x;            
        }
        
        .shadow{
        	-moz-box-shadow:2px 2px 5px #333333;
        	-webkit-box-shadow:2px 2px 5px #333333;
        	box-shadow:2px 2px 5px #333333;
        }
        
        .menu{
           margin: 3px 5px 5px 5px;
        }
    </style>
</head>
<body class="bar">
	<div align="right" width="100%">
		<a href="seed/grid" target="workspace"><img class="menu shadow" src="images/seedManager.png" width="50px"></a>
	<div>
</body>
</html>