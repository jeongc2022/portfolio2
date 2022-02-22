<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style type="text/css">
        .pwd_check_main{width:450px; height:300px; /*border:1px solid black;*/ }
        .pwd_check_main_title{width:450px; height:50px; /*border:1px solid red;*/}
        .pwd_check_main_title h1{margin:0; padding:0;font-family:"Times New Roman", Times, serif; font-size: 45px;  color: #CCC; 
         font-weight: normal;}
        .pwd_check_main_subtitle{width:450px; height:25px; /*border:1px solid blue;*/ text-align:left; margin-top:20px;}
        .pwd_check_main_subtitle h4{margin:0; padding:0;}
        .pwd_check_inputtext{width:450px; height:30px; /*border:1px solid red;*/}
        .delete_pwd_check_text{width:300px; height:30px;}
        .delete_repwd_check_text{width:300px; height:30px;}
        .delete_pwd_check_buttonbox{width:100px; height:30px; margin-top:30px; margin-left:100px; /*border:1px solid black;*/}
        .delete_pwd_check_button{width:100px; height:30px; border-style:none;}
        
    </style>
    <script src="js/jquery-3.5.1.js"></script>
    <script type="text/javascript">
    function deleteok(){
       if($('.delete_pwd_check_text').val() == $('.delete_repwd_check_text').val()){
           var pwd_check = $('.delete_repwd_check_text').val();
           var pwdcheckk = $("#pwdcheckk").val();
          if( pwdcheckk == pwd_check){
               opener.window.location ="ezen.do?command=deletemember&pwd=" +  pwdcheckk;
                close();
            }
       }else {
           $('.delete_repwd_check_text').focus();
            alert("비밀번호가 같지 않습니다.");
        };
       
        
    };
    </script>
</head>
<body>
   <input type="hidden" id="pwdcheckk" value="${loginUser.pwd }">
    <div class="pwd_check_main">
        <div class="pwd_check_main_title"><h1>회원탈퇴</h1></div>
        <div class="pwd_check_main_subtitle"><h4>비밀번호 입력</h4></div>
        <div class="pwd_check_inputtext">
            <input type="password" class="delete_pwd_check_text"> 
        </div>
        <div class="pwd_check_main_subtitle"><h4>비밀번호 확인</h4></div>
        <div class="pwd_check_inputtext">
            <input type="password" class="delete_repwd_check_text"> 
        </div>
        <div class="delete_pwd_check_buttonbox">
            <button class="delete_pwd_check_button" onclick="deleteok();">삭제</button>
        </div>
    </div>
</body>
</html>