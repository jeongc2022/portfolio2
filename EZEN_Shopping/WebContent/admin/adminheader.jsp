<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta charset="UTF-8">

<title>Document</title>
<link href="./css/main.css" rel="stylesheet">
<link href="./css/admin.css" rel="stylesheet">
<style type="text/css">
body {
	margin: 0%;
}

.clear {
	clear: both;
}

#wrap {
	width: 100%;
	height: 1200px;
}

#header_base {
	position: relative;
	width: 100%;
	height: 170px;
	top: 0%;
	border-bottom: 1px dotted #666;
	border-bottom: double;
	text-align: center;
}

#header {
	position: relative;
	width: 50%;
	height: 170px;
	margin: 0 auto;
	text-align: center;
	line-height: 150px;
}

#logout_btn {
	position: absolute;
	width: 100px;
	height: 30px;
	border: none;
	color: #666;
	background-color: transparent !important;
	border-radius: 3px;
	right: -2%;
	bottom: 11%;
	font-size: 15px;
	font-weight: bold;
}
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/admin.js"></script>
</head>
<body>
	<div id="wrap">
		<header>
			<div id="header_base">
				<div id="header">
					<h1 style="font-size: 50px; color: black; opacity: 0.7;">EZEN
						ADMIN</h1>
					<img src="images/admin_logout.png"
						style="width: 40px; height: 45px; float: right; margin-top: -68px; margin-right: 60px;">
					<input type="button" value="logout" id="logout_btn">
				</div>
			</div>
		</header>