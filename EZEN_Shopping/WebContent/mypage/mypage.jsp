<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript">
$(function(){
    $('#menu_button1').click(function(){
        $('#big_user_data1').show(0,function(){
            $(this).css('display', 'contents');
            $('#menu_box1').css('border-bottom','2px solid #0058A3');
        });
        $('#big_user_data2').hide(0,function(){
            $(this).css('display', 'none');
            $('#menu_box2').css('border-bottom','2px solid silver');
        });
        $('#big_user_data3').hide(0,function(){
            $(this).css('display', 'none');
            $('#menu_box3').css('border-bottom','2px solid silver');
        });
    });
    
    $('#menu_button2').click(function(){
        $('#big_user_data2').show(0,function(){
            $(this).css('display', 'contents');
            $('#menu_box2').css('border-bottom','2px solid #0058A3');
        });
        $('#big_user_data1').hide(0,function(){
            $(this).css('display', 'none');
            $('#menu_box1').css('border-bottom','2px solid silver');
        });
        $('#big_user_data3').hide(0,function(){
            $(this).css('display', 'none');
            $('#menu_box3').css('border-bottom','2px solid silver');
        });
    });
    
    $('#menu_button3').click(function(){
        $('#big_user_data3').show(0,function(){
            $(this).css('display', 'contents');
            $('#menu_box3').css('border-bottom','2px solid #0058A3');
        });
        $('#big_user_data1').hide(0,function(){
            $(this).css('display', 'none');
            $('#menu_box1').css('border-bottom','2px solid silver');
        });
        $('#big_user_data2').hide(0,function(){
            $(this).css('display', 'none');
            $('#menu_box2').css('border-bottom','2px solid silver');
        });
    });
});

$(function(){   /* function 한덩어리 수정 */
   var margin=0;
    $('#view_button1-1').click(function(){
        $('#detail_user_data1').show(0,function(){
            $('#detail_user_data1').css('border-bottom', '1px solid F5F5F5');
            margin+=300;
            $('#footerwrap').css('margin-top',margin+'px');
        });
        $('#user_data1').hide(0,function(){
            $('#user_data1').css('border-bottom', '1px solid F5F5F5');
        });
    });
    $('#view_button1-2').click(function(){
        $('#detail_user_data1').hide(0,function(){
            $('#detail_user_data1').css('border-bottom', '1px solid F5F5F5');
            margin-=300;
            $('#footerwrap').css('margin-top',margin+'px');
        });
        $('#user_data1').show(0,function(){
            $('#user_data1').css('border-bottom', '1px solid F5F5F5');
        });
    });
    $('#big_button1-1').click(function(){
        $('#detail_user_data1').hide(0,function(){
            $('#detail_user_data1').css('border-bottom', '1px solid F5F5F5');
            margin-=300;
            $('#footerwrap').css('margin-top',margin+'px');
        });
        $('#user_data1').show(0,function(){
            $('#user_data1').css('border-bottom', '1px solid F5F5F5');
        });
    });
    $('#view_button2-1').click(function(){
        $('#detail_user_data2').show(0,function(){
            $('#detail_user_data2').css('border-bottom', '1px solid F5F5F5');
            margin+=300;
            $('#footerwrap').css('margin-top',margin+'px');
        });
        $('#user_data2').hide(0,function(){
            $('#user_data2').css('border-bottom', '1px solid F5F5F5');
        });
    });
    $('#view_button2-2').click(function(){
        $('#detail_user_data2').hide(0,function(){
            $('#detail_user_data2').css('border-bottom', '1px solid F5F5F5');
            margin-=300;
            $('#footerwrap').css('margin-top',margin+'px');
        });
        $('#user_data2').show(0,function(){
            $('#user_data2').css('border-bottom', '1px solid F5F5F5');
        });
    });
    $('#big_button2-1').click(function(){
        $('#detail_user_data2').hide(0,function(){
            $('#detail_user_data2').css('border-bottom', '1px solid F5F5F5');
            margin-=300;
            $('#footerwrap').css('margin-top',margin+'px');
        });
        $('#user_data2').show(0,function(){
            $('#user_data2').css('border-bottom', '1px solid F5F5F5');
        });
    });
    
    $('#view_button3-1').click(function(){
        $('#detail_user_data3').show(0,function(){
            $('#detail_user_data3').css('border-bottom', '1px solid F5F5F5');
            margin+=300;
            $('#footerwrap').css('margin-top',margin+'px');
        });
        $('#user_data3').hide(0,function(){
            $('#user_data3').css('border-bottom', '1px solid F5F5F5');
        });
    });
    $('#view_button3-2').click(function(){
        $('#detail_user_data3').hide(0,function(){
            $('#detail_user_data3').css('border-bottom', '1px solid F5F5F5');
            margin-=300;
            $('#footerwrap').css('margin-top',margin+'px');
        });
        $('#user_data3').show(0,function(){
            $('#user_data3').css('border-bottom', '1px solid F5F5F5');
        });
    });
    $('#big_button3-1').click(function(){
        $('#detail_user_data3').hide(0,function(){
            $('#detail_user_data3').css('border-bottom', '1px solid F5F5F5');
            margin-=300;
            $('#footerwrap').css('margin-top',margin+'px');
        });
        $('#user_data3').show(0,function(){
            $('#user_data3').css('border-bottom', '1px solid F5F5F5');
        });
    });
    
    $('#view_button4-1').click(function(){
        $('#detail_user_data4').show(0,function(){
            $('#detail_user_data4').css('border-bottom', '1px solid F5F5F5');
            margin+=300;
            $('#footerwrap').css('margin-top',margin+'px');
        });
        $('#user_data4').hide(0,function(){
            $('#user_data4').css('border-bottom', '1px solid F5F5F5');
        });
    });
    $('#view_button4-2').click(function(){
        $('#detail_user_data4').hide(0,function(){
            $('#detail_user_data4').css('border-bottom', '1px solid F5F5F5');
            margin-=300;
            $('#footerwrap').css('margin-top',margin+'px');
        });
        $('#user_data4').show(0,function(){
            $('#user_data4').css('border-bottom', '1px solid F5F5F5');
        });
    });
    
   
});

    $(function(){
        $('#question_mark').click(function(){
            $('#tooltip').toggle();
        });
    });
    
    /* 로그인 유효성 검사(수정중) */
        
        
            
        
    function update1(){
       var reg=/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,20}$/;
        var fn=$("#firstname").val();
        var ln=$("#lastname").val(); 
        var birth=$("#birth").val(); 
        var phone=$("#phone").val();
        var gender=$("#gender").val();
        var doroaddress=$("#doroaddress").val();
        var address=$("#address").val();
        var postnum=$("#postnum").val();
        var prefershop=$("#prefershop").val();
        var email=$("#email").val();
        var pwd=$("#pwd").val(); 
        
        var name = fn + ln;
        
        var prefershopselect =  $('#prefershop option:selected').val();
        
        $(function(){
           /* $('#view_button1-1').click(function(){
                $('#big_button1-2').click(function(){*/
                    if(fn==""){
                        $("#firstname").focus();
                        alert("성을 입력하세요");
                        return;
                    }else if(ln==""){
                        $("#lastname").focus();
                        alert("이름을 입력하세요");
                        return;
                    }else if(birth==""){
                        $("#birth").focus();
                        alert("생일을 입력하세요");
                        return;
                    }
                    location.href = "ezen.do?command=updatemember1&name=" + name + "&birth=" + birth + "&gender=" + gender + 
                          "&phone=" + phone + "&email=" + email + "&pwd=" + pwd + "&doroaddress=" + doroaddress + "&address=" + 
                          address + "&postnum=" + postnum + "&prefershop=" + prefershopselect;
                        
            /*    });
            });*/
        });
    };
    function update2(){
       var reg=/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,20}$/;
        var fn=$("#firstname").val();
        var ln=$("#lastname").val(); 
        var birth=$("#birth").val(); 
        var phone=$("#phone").val();
        var gender=$("#gender").val();
        var doroaddress=$("#doroaddress").val();
        var address=$("#address").val();
        var postnum=$("#postnum").val();
        var prefershop=$("#prefershop").val();
        var email=$("#email").val();
        var pwd=$("#pwd").val(); 
        
        var name = fn + ln;
        
        var prefershopselect =  $('#prefershop option:selected').val();
        
        $(function(){
           /* $('#view_button1-1').click(function(){
                $('#big_button1-2').click(function(){*/
                    if(phone==""){
                        $("#phone").focus();
                        alert("핸드폰 번호를 입력하세요");
                        return;
                    }else if(email==""){
                        $("#email").focus();
                        alert("이메일을 입력하세요");
                        return;
                    }
                location.href = "ezen.do?command=updatemember2&name=" + name + "&birth=" + birth + "&gender=" + gender + 
              "&phone=" + phone + "&email=" + email + "&pwd=" + pwd + "&doroaddress=" + doroaddress + "&address=" + 
              address + "&postnum=" + postnum + "&prefershop=" + prefershopselect;
                        
            /*    });
            });*/
        });
    };
    function update3(){
        var reg=/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,20}$/;
        var fn=$("#firstname").val();
        var ln=$("#lastname").val(); 
        var birth=$("#birth").val(); 
        var phone=$("#phone").val();
        var gender=$("#gender").val();
        var doroaddress=$("#doroaddress").val();
        var address=$("#address").val();
        var postnum=$("#postnum").val();
        var prefershop=$("#prefershop").val();
        var email=$("#email").val();
        var pwd=$("#pwd").val(); 
        var newpwd=$("#newpwd").val(); 
        
        var name = fn + ln;
        
        var prefershopselect =  $('#prefershop option:selected').val();
        
        $(function(){
           /* $('#view_button1-1').click(function(){
                $('#big_button1-2').click(function(){*/
                    if(pwd==""){
                        $("#pwd").focus();
                        alert("비밀번호를 입력하세요");
                        return;
                    }
                   if(false===reg.test(newpwd)){
                      alert("비밀번호 규칙이 부적합합니다.");
                      $("#newpwd").focus();
                      return;
                   }
                   var pwd=$("#newpwd").val(); 
                   location.href = "ezen.do?command=updatemember3&name=" + name + "&birth=" + birth + "&gender=" + gender + 
                 "&phone=" + phone + "&email=" + email + "&pwd=" + pwd + "&doroaddress=" + doroaddress + "&address=" + 
                 address + "&postnum=" + postnum + "&prefershop=" + prefershopselect;
                        
            /*    });
            });*/
        });
    };
    
    function update4(){
       var reg=/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,20}$/;
        var fn=$("#firstname").val();
        var ln=$("#lastname").val(); 
        var birth=$("#birth").val(); 
        var phone=$("#phone").val();
        var gender=$("#gender").val();
        var doroaddress=$("#doroaddress").val();
        var address=$("#address").val();
        var postnum=$("#postnum").val();
        var prefershop=$("#prefershop").val();
        var email=$("#email").val();
        var pwd=$("#pwd").val(); 
        var newpwd=$("#newpwd").val(); 
        
        var name = fn + ln;
        
        var prefershopselect =  $('#prefershop option:selected').val();
        
        $(function(){
                     if(doroaddress==""){
                         $("#doroaddress").focus();
                         alert("도로명주소를 입력하세요.");
                         return;
                     }
                     else if(address==""){
                         $("#address").focus();
                         alert("상세주소를 입력하세요.");
                         return;
                     }
                     else if(postnum==""){
                         $("#postnum").focus();
                         alert("우편번호를 입력하세요.");
                         return;
                     }
                   
                    location.href = "ezen.do?command=updatemember4&name=" + name + "&birth=" + birth + "&gender=" + gender + 
                  "&phone=" + phone + "&email=" + email + "&pwd=" + pwd + "&doroaddress=" + doroaddress + "&address=" + 
                  address + "&postnum=" + postnum + "&prefershop=" + prefershopselect;
         });
        
    }
    
    
    function update5(){
       var reg=/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,20}$/;
        var fn=$("#firstname").val();
        var ln=$("#lastname").val(); 
        var birth=$("#birth").val(); 
        var phone=$("#phone").val();
        var gender=$("#gender").val();
        var doroaddress=$("#doroaddress").val();
        var address=$("#address").val();
        var postnum=$("#postnum").val();
        var prefershop=$("#prefershop").val();
        var email=$("#email").val();
        var pwd=$("#pwd").val(); 
        var newpwd=$("#newpwd").val(); 
        
        var name = fn + ln;
        
        var prefershopselect =  $('#prefershop option:selected').val();
                   
        $(function(){
           $('#perfershop').on('change', function(){
              alert("선호하는 매장이 변경되었습니다.");
           });
           
            location.href = "ezen.do?command=updatemember5&name=" + name + "&birth=" + birth + "&gender=" + gender + 
           "&phone=" + phone + "&email=" + email + "&pwd=" + pwd + "&doroaddress=" + doroaddress + "&address=" + 
           address + "&postnum=" + postnum + "&prefershop=" + prefershopselect;
        });
     
                   
        
        
    }
    
    
    
        
    $(function(){
        
        $('#firstname').focus(function(){
            $('#firstname').focusout(function(){
                if($('#firstname').val()==""){
                    $('.detail_data_text_firstname').css('border-bottom', '2px solid red');
                    $('.firstname_guidetext').css('display','block');
                }else if($('#firstname').val()!=""){
                    $('.detail_data_text_firstname').css('border-bottom', '1px solid #929292');
                    $('.firstname_guidetext').css('display','none');
                };
            });
        }); 
        $('#lastname').focus(function(){
            $('#lastname').focusout(function(){
                if($('#lastname').val()==""){
                    $('.detail_data_text_lastname').css('border-bottom', '2px solid red');
                    $('.lastname_guidetext').css('display','block');
                }else if($('#lastname').val()!=""){
                    $('.detail_data_text_lastname').css('border-bottom', '1px solid #929292');
                    $('.lastname_guidetext').css('display','none');
                };
            });
        }); 
        $('#birth').focus(function(){
            $('#birth').focusout(function(){
                if($('#birth').val()==""){
                    $('.detail_data_text_birth').css('border-bottom', '2px solid red');
                    $('.birth_guidetext').css('display','block');
                }else if($('#birth').val()!=""){
                    $('.detail_data_text_birth').css('border-bottom', '1px solid #929292');
                    $('.birth_guidetext').css('display','none');
                };
            });
        });
        $('#phone').focus(function(){
            $('#phone').focusout(function(){
                if($('#phone').val()==""){
                    $('.detail_data_text_phone').css('border-bottom', '2px solid red');
                    $('.phone_guidetext').css('display','block');
                }else if($('#phone').val()!=""){
                    $('.detail_data_text_phone').css('border-bottom', '1px solid #929292');
                    $('.phone_guidetext').css('display','none');
                };
            });
        });
        $('#email').focus(function(){
            $('#email').focusout(function(){
                if($('#email').val()==""){
                    $('.detail_data_text_email').css('border-bottom', '2px solid red');
                    $('.email_guidetext').css('display','block');
                    $('#detail_info_text p').css('color','red');
                }else if($('#email').val()!=""){
                    $('.detail_data_text_email').css('border-bottom', '1px solid #929292');
                    $('.email_guidetext').css('display','none');
                    $('#detail_info_text p').css('color','black');
                };
            });
        });
        $('#pwd').focus(function(){
            $('#pwd').focusout(function(){
                if($('#pwd').val()==""){
                    $('.detail_data_text_pwd').css('border-bottom', '2px solid red');
                    $('.pwd_guidetext').css('display','block');
                }else if($('#pwd').val()!=""){
                    $('.detail_data_text_pwd').css('border-bottom', '1px solid #929292');
                    $('.pwd_guidetext').css('display','none');
                };
            });
        });
        
        /* 수정시작 */
        $('#newpwd').focus(function(){
            $('#newpwd').focusout(function(){
                if($('#newpwd').val()==""){
                    $('.detail_data_text_newpwd').css('border-bottom', '2px solid red');
                    $('.newpwd_guidetext').css('display','block');
                }else if($('#newpwd').val()!=""){
                    $('.detail_data_text_newpwd').css('border-bottom', '1px solid #929292');
                    $('.newpwd_guidetext').css('display','none');
                };
            });
        });
        $('#newpwd').focusin(function(){
           $('.newpwd_guidetext2').css('display','block');
        })
        $('#newpwd').focusout(function(){
           $('.newpwd_guidetext2').css('display','none');
        })
        /* 수정 끝 */
        
        $('#renewpwd').focus(function(){
            $('#renewpwd').focusout(function(){
                if($('#renewpwd').val()==""){
                    $('.detail_data_text_renewpwd').css('border-bottom', '2px solid red');
                    $('.renewpwd_guidetext').css('display','block');
                }else if($('#renewpwd').val()!= $('#newpwd').val()){
                    $('.detail_data_text_renewpwd').css('border-bottom', '2px solid red');
                    $('.renewpwd_guidetext').css('display','block');
                }else if($('#renewpwd').val()==$('#newpwd').val()){
                    $('.detail_data_text_renewpwd').css('border-bottom', '1px solid #929292');
                    $('.renewpwd_guidetext').css('display','none');
                }; 
            });
        });
        
        
    });
    
    $(function(){
        $('#view_button1-2').click(function(){
            $('#firstname').val("${firstname}");
            $('#lastname').val("${lastname}");
            $('#birth').val("${loginUser.birth}");
            $('#gender').val("${loginUser.gender}");
            $('.detail_data_text_firstname').css('border-bottom', '1px solid #929292');
            $('.firstname_guidetext').css('display','none');
            $('.detail_data_text_lastname').css('border-bottom', '1px solid #929292');
            $('.lastname_guidetext').css('display','none');
            $('.detail_data_text_birth').css('border-bottom', '1px solid #929292');
            $('.birth_guidetext').css('display','none');
        });
        $('#big_button1-1').click(function(){
            $('#firstname').val("${firstname}");
            $('#lastname').val("${lastname}");
            $('#birth').val("${loginUser.birth}");
            $('#gender').val("${loginUser.gender}");
            $('.detail_data_text_firstname').css('border-bottom', '1px solid #929292');
            $('.firstname_guidetext').css('display','none');
            $('.detail_data_text_lastname').css('border-bottom', '1px solid #929292');
            $('.lastname_guidetext').css('display','none');
            $('.detail_data_text_birth').css('border-bottom', '1px solid #929292');
            $('.birth_guidetext').css('display','none');
        });
        $('#view_button2-1').click(function(){
            $('#phone').val("${loginUser.phone}");
            $('#email').val("${loginUser.email}");
            $('.detail_data_text_phone').css('border-bottom', '1px solid #929292');
            $('.phone_guidetext').css('display','none');
            $('.detail_data_text_email').css('border-bottom', '1px solid #929292');
            $('.email_guidetext').css('display','none');
        });
         $('#big_button2-1').click(function(){
            $('#phone').val("${loginUser.phone}");
            $('#email').val("${loginUser.email}");
            $('.detail_data_text_phone').css('border-bottom', '1px solid #929292');
            $('.phone_guidetext').css('display','none');
            $('.detail_data_text_email').css('border-bottom', '1px solid #929292');
            $('.email_guidetext').css('display','none');
        });
        $('#view_button3-1').click(function(){
            $('#pwd').val("");
            $('#newpwd').val("");
            $('#renewpwd').val("");
            $('.detail_data_text_pwd').css('border-bottom', '1px solid #929292');
            $('.pwd_guidetext').css('display','none');
            $('.detail_data_text_newpwd').css('border-bottom', '1px solid #929292');
            $('.newpwd_guidetext').css('display','none');
            $('.detail_data_text_renewpwd').css('border-bottom', '1px solid #929292');
            $('.renewpwd_guidetext').css('display','none');
            $('.newpwd_guidetext2').css('display','none');
        });
        $('#big_button3-1').click(function(){
            $('#pwd').val("");
            $('#newpwd').val("");
            $('#renewpwd').val("");
            $('.detail_data_text_pwd').css('border-bottom', '1px solid #929292');
            $('.pwd_guidetext').css('display','none');
            $('.detail_data_text_newpwd').css('border-bottom', '1px solid #929292');
            $('.newpwd_guidetext').css('display','none');
            $('.detail_data_text_renewpwd').css('border-bottom', '1px solid #929292');
            $('.renewpwd_guidetext').css('display','none');
            $('.newpwd_guidetext2').css('display','none');
        });
    });
    
    /* 새로추가 */
    function joinnewpwdcheck(){
       var newpwd=$("#newpwd").val();
       var seng=/(?=.*?[a-z])/;
       var beng=/(?=.*?[A-Z])/;
       var sc= /(?=.*?[#?!@$%^&*-])/;
       if(newpwd.length>=8 && newpwd.length<=20){
          $("#newpwd_check1").css("color","green");
       }else{
          $("#newpwd_check1").css("color","black");   
       }
       if(/(\w)\1\1/.test(newpwd)){
          $("#newpwd_check2").css("color","black");   
       }else{
          $("#newpwd_check2").css("color","green");
       }
       if(false===seng.test(newpwd)){
          $("#newpwd_check3").css("color","black");
       }else{
          $("#newpwd_check3").css("color","green");
       }
       if(false===beng.test(newpwd)){
          $("#newpwd_check4").css("color","black");
       }else{
          $("#newpwd_check4").css("color","green");
       }
       if(false===sc.test(newpwd)){
          $("#newpwd_check5").css("color","black");
       }else{
          $("#newpwd_check5").css("color","green");
       };
    };
</script>
    <div id="main">
        <div id="non_box1"></div>
        <div id="user_box">
            <div id="main_title">
                <h1>안녕하세요, ${loginUser.name}</h1>
                <p>로그아웃을 하고 싶으신가요? <span><a href="ezen.do?command=logout">로그아웃</a></span></p>
            </div>
            <div id="card">
                <div class="card_top">
                    <div class="card_top_logo">EZEN Family</div>
                    <div class="card_top_name">${firstname} ${lastname}</div>
                </div>
                <div class="card_bottom">
                    <img src="images/card_bottom.png" class="card_bottom_img">
                </div>
            </div>
        </div>
        
        <div id="category">
        <a href="ezen.do?command=orderList">
            <div class="category_box" id="category_box1">
                <div class="category_title">
                    <div class="category_content1" id="category_content1-1"><span>주문 내역</span></div>
                    <div class="category_content2">진행 중인 주문 없음</div>
                </div>
                <div class="arrow"><img src="images/category_arrow.png"></div>
            </div>
         </a>
         <a href="ezen.do?command=shoppingList">
            <div class="category_box" id="category_box2">
                <div class="category_title">
                    <div class="category_content1" id="category_content1-2"><span>쇼핑 목록</span></div>
                    <div class="category_content2">저장된 목록 ?개</div>
                </div>
                <div class="arrow"><img src="images/category_arrow.png"></div>
            </div>
          </a>
          <a href="ezen.do?command=plannerList">
            <div class="category_box" style="margin-right:0" id="category_box3">
                <div class="category_title">
                    <div class="category_content1" id="category_content1-3"><span>플래너</span></div>
                    <div class="category_content2">플래너 모두 보기</div>
                </div>
                <div class="arrow"><img src="images/category_arrow.png"></div>
            </div>
           </a>
        </div>
        
        
        <div id="menu">
            <div class="menu_box" id="menu_box1"><input type="button" value="계정" id="menu_button1"></div>
            <div class="menu_box" id="menu_box2"><input type="button" value="주소" id="menu_button2"></div>
            <div class="menu_box" style="margin-right:0" id="menu_box3"><input type="button" value="설정" id="menu_button3"></div>
        </div>
        
        <div id=non_box2></div>
     
        <div class="big_user_data" id="big_user_data1">
            <div class="user_data" id="user_data1">
                <div class="user_data_title">개인 정보
                    <button class="view_button" id="view_button1-1"><span>수정</span></button></div>
                <div class="user_data_content">
                    ${loginUser.name}<br>${loginUser.birth}<br>${loginUser.gender}
                </div>
            </div>
            <div class="detail_user_data" id="detail_user_data1">
                <div class="user_data_title">개인 정보
                    <button class="view_button" id="view_button1-2"><span>닫기</span></button>
                </div>
                <div class="detail_data_title">성</div>
                <div class="detail_data_text_firstname">
                   <input type="hidden" name="firstname" value="${firstname }">
                    <input type="text" class="detail_text" id="firstname" name="firstname" value="${firstname}">
                </div>
                
                <!--수정-->
                <div class="firstname_guidetext">성 필드는 필수 필드입니다.</div>
                
                <div class="detail_data_title">이름</div>
                <div class="detail_data_text_lastname">
                   <input type="hidden" name="lastname" value="${lastname }">
                    <input type="text" class="detail_text" id="lastname" name="lastname" value="${lastname}">
                </div>
                
                <!--수정-->
                <div class="lastname_guidetext">이름 필드는 필수 필드입니다.</div>
                
                <div class="detail_data_title">생일</div>
                <div class="detail_data_text_birth">
                   <input type="hidden" name="birth" value="${loginUser.birth }">
                    <input type="text" class="detail_text" style="width:510px;" id="birth" name="birth" value="${loginUser.birth }">
                    <img src="images/question_mark.png" id="question_mark">
                    <img src="images/proflie_tooltip_content.png" id="tooltip">
                </div>
                
                <!--수정-->
                <div class="birth_guidetext">생일 필드는 필수 필드입니다.</div>
                
                <div class="detail_data_title">성별 ( 선택 사항 )</div>
                <div class="detail_data_text" style="width:350px; margin-bottom:10px;">
                    <select name="gender" class="detail_text" style="width:350px;" id="gender" name="gender">
                        <option value="M">남성</option>
                        <option value="W">여성</option>
                    </select>
                </div>
                <div id="detail_info_text">IKEA의 홈퍼니싱 아이디어와 신상품 소식, 그리고 할인 혜택 정보를 제공하고, 여러분을 더욱 잘 이해할 수 있도록 세부 정보를 입력해 주시기 바랍니다.</div>
                <div class="big_button1">
                    <button id="big_button1-1">취소</button>
                </div>
                <div class="big_button2">
                    <button id="big_button1-2" onclick="update1()">변경 사항 저장</button>
                </div>
            </div>

            <div class="user_data" id="user_data2">
                <div class="user_data_title">연락처
                    <button class="view_button" id="view_button2-1"><span>수정</span></button></div>
                <div class="user_data_content">
                    <div class="confirm_text"><span>${loginUser.phone }</span></div>
                    <div class="confirm_text"><span>${loginUser.email }</span></div>
                </div>
            </div>
            
            <div class="detail_user_data" id="detail_user_data2">
                <div class="user_data_title">연락처
                    <button class="view_button" id="view_button2-2"><span>닫기</span></button></div>
                <div class="detail_data_title">휴대폰</div>
                <div class="detail_data_text_phone">
                    <div id="country_phone">KR (+82)</div>
                    <input type="hidden" name="phone" value="${loginUser.phone }">
                    <input type="text" class="detail_text" style="width:400px;" id="phone" name="phone" value="${loginUser.phone }">
                </div>
                
                <!--수정-->
                <div class="phone_guidetext">휴대폰 필드는 필수 필드입니다.</div>
                
                <div class="detail_data_title">이메일</div>
                <div class="detail_data_text_email">
                   <input type="hidden" name="email" value="${loginUser.email }">
                    <input type="email" class="detail_text" id="email" name="email" value="${loginUser.email }">
                </div>
                
                 <!--수정-->
                <div class="email_guidetext">
                   <p>이메일 주소를 업데이트하면 자동으로 해당 이메일 주소로 새로운 확인 링크를 보내드립니다.</p>
                   이메일 필드는 필수 필드입니다.
                </div>
                
                <div class="big_button1">
                    <button id="big_button2-1">취소</button>
                </div>
                <div class="big_button2">
                    <button id="big_button2-2" onclick="update2()">변경 사항 저장</button>
                </div>
            </div>  

            <div class="user_data" id="user_data3">
                <div class="user_data_title">비밀번호
                    <button class="view_button" id="view_button3-1"><span>수정</span></button></div>
                <div class="user_data_content">
                   <input type="hidden" name="pwd" value="${loginUser.pwd  }">
                    <input type="password" value="${loginUser.pwd }" disabled="disabled" style="border-style:none; background-color:white"> 
                </div>
            </div>
            
            <div class="detail_user_data" id="detail_user_data3">
                <div class="user_data_title">비밀번호
                    <button class="view_button" id="view_button3-2"><span>닫기</span></button></div>
                <div class="detail_data_text_pwd" style="margin-top:25px">
                   <input type="hidden" name="pwd" value="${loginUser.pwd }">
                    <input type="password" class="detail_pwd_text1" placeholder="현재 비밀번호" id="pwd" name="pwd" value="${loginUser.pwd }">
                </div>
                
                <!--수정-->
                <div class="pwd_guidetext">현재 비밀번호 필드는 필수 필드입니다.</div>
                
                <div class="detail_data_text_newpwd">
                    <input type="password" class="detail_pwd_text2" placeholder="새 비밀번호" id="newpwd" name="newpwd">
                </div>
                
                <!--수정-->
                <div class="newpwd_guidetext">새 비밀번호 필드는 필수 필드입니다.</div>
                <ul>
                    <li class="newpwd_guidetext2">8-20자를 입력해야 합니다.</li>
                    <li class="newpwd_guidetext2">한 줄에 동일한 문자를 3개 이상 포함할 수 없습니다.</li>
                    <li class="newpwd_guidetext2">소문자 (a-z)</li>
                    <li class="newpwd_guidetext2">대문자 (A-Z)</li>
                    <li class="newpwd_guidetext2">숫자 또는 특수 문자</li>
                </ul>
                <div class="detail_data_text_renewpwd">
                    <input type="password" class="detail_pwd_text3" placeholder="새 비밀번호 확인" id="renewpwd" name="renewpwd">
                </div>
                
                <!--수정-->
                <div class="renewpwd_guidetext">비밀번호를 다시 입력해야 합니다.</div>
                
                <div class="big_button1">
                    <button id="big_button3-1">취소</button>
                </div>
                <div class="big_button2">
                    <button id="big_button3-2" onclick="update3()">변경 사항 저장</button>
                </div>
            </div>
            
            <div id="footer_box">
                <div class="footer_detail"><img src="images/footer_house.png" id="footer_house"></div>
                <div class="footer_detail" id="footer_detail2">
                    <span>내 관심사에 맞게 설정해보세요!</span><br>
                    <span style="font-weight: normal">집에 대한 정보를 입력하고 맞춤형 팁과 아이디어를 얻어보세요.</span>
                </div>
                <div class="footer_detail"><span>시작하기</span></div>
            </div> 
        </div>
        
        <div class="big_user_data" id="big_user_data2">
            <div class="user_data" id="user_data4">
                <div class="user_data_title">기본 주소
                    <button class="view_button" id="view_button4-1"><span>수정</span></button></div>
                <div class="user_data_content">
                    ${loginUser.doroaddress }<br>${loginUser.address }<br>${loginUser.postnum }
                </div>
            </div>
            <div class="detail_user_data" id="detail_user_data4">
                <div class="user_data_title">기본 주소
                    <button class="view_button" id="view_button4-2"><span>닫기</span></button></div>
                <div id="normal_button">주소 찾기</div>
                <div class="detail_data_title" style="color:#C1C1C1">도로명 주소</div>
                <div class="detail_data_text">
                   <input type="hidden" name="doroaddress" value="${loginUser.doroaddress }">
                   <input type="text" class="detail_text" id="doroaddress" name="doroaddress"
                   style="text-decoration-color:#C1C1C1; pointer-events: none;" placeholder="입력된 도로명주소" 
                   value="${loginUser.doroaddress }">
                </div>
                <div class="detail_data_title">상세 주소</div>
                <div class="detail_data_text">
                   <input type="hidden" name="address" value="${loginUser.address }">
                   <input type="text" class="detail_text" id="address" name="address"  value="${loginUser.address }">
                </div>
                <div class="detail_data_title" style="color:#C1C1C1" >우편번호</div>
                <div class="detail_data_text">
                   <input type="hidden" name="postnum" value="${loginUser.postnum }">
                   <input type="text" class="detail_text" id="postnum" name="postnum"  
                   style="text-decoration-color:#C1C1C1; pointer-events: none;" placeholder="입력된 우편번호" readonly
                   value="${loginUser.postnum }">
                </div>
                
                <div class="big_button1">
                    <button id="big_button4-1">취소</button>
                </div>
                <div class="big_button2">
                    <button id="big_button4-2" onclick="update4()">변경 사항 저장</button>
                </div>
            </div>

            
        </div>
        
        <div class="big_user_data" id="big_user_data3">
            <div class="user_data" id="user_data5">
                <div class="user_data_title">IKEA 매장</div>
                <div class="user_data_content">
                    <span id="shop_title">선호하는 매장</span><br>
                    <select  class="detail_data_text" style="width:350px; border-style:none; border-bottom:1px solid silver;" 
                    id="prefershop" name="prefershop" onchange="update5()">
                       <option value="${loginUser.prefershop}">${loginUser.prefershop}</option>
                        <option value="고양">고양</option>
                        <option value="광명">광명</option>
                        <option value="기흥">기흥</option>
                        <option value="동부산">동부산</option>
                    </select>
                </div>
            </div>
            <div class="user_data" id="user_data6" >
                <div class="user_data_title">커뮤니케이션</div>
                <div class="user_data_content">
                    <div class="user_data_title">
                        혜택, 팁, 뉴스를 받아볼 경로:
                    </div>
                    <div class="user_data_content_menu">이메일
                    <img src="images/emailcheck_yes.png" class="comunication_check1-1"></div>
                    <div class="user_data_content_menu">SMS 문자<img src="images/emailcheck_yes.png" class="comunication_check2-1"></div>
                    <div class="user_data_content_menu" style="border:none;">우편
                    <img src="images/emailcheck_yes.png"
                    class="comunication_check3-1"></div>
                </div>
            </div>
            <!--<div class="detail_user_data" id="detail_user_data6">
                <div class="user_data_title">커뮤니케이션 설정
                    <button class="view_button" id="view_button6-2"><span>닫기</span></button></div>
                <div class="user_data_content_comunication">
                    <div class="radio_button"><input type="checkbox" name="comunication_chk" class="rd_btn1"></div>
                    <div class="comnuication">
                       <span>이메일수신</span>
                    </div>
                </div>
                <div class="user_data_content_comunication">
                    <div class="radio_button"><input type="checkbox" name="comunication_chk" class="rd_btn2"></div>
                    <div class="comnuication">
                       <span>SMS 문자 수신</span>
                    </div>
                </div>
                <div class="user_data_content_comunication">
                    <div class="radio_button"><input type="checkbox" name="comunication_chk" class="rd_btn3"></div>
                    <div class="comnuication">
                       <span>우편물 수신</span>
                    </div>
                </div>
                <div class="big_button1">
                    <button id="big_button6-1">취소</button>
                </div>
                <div class="big_button2">
                    <button id="big_button6-2" onclick="update6()">변경 사항 저장</button>
                </div>
            </div>-->
            
            <div class="user_data" id="user_data7">
                <div class="user_data_title">회원 정보 삭제</div>
                <div class="user_data_content">
                    <span style="font-size:90%">
                        언제든 IKEA 계정을 삭제할 수 있습니다. 단, 회원 정보 및 구매 내역이 함께 삭제된다는 점을 참고해주세요.
                    </span>
                    <br>
                    <a href="ezen.do?command=deletemember"><span id="delete_text">계정을 삭제하시겠어요?</span></a>
                </div>
            </div>
        </div>
        
    </div>

    <%@ include file="../footer.jsp"%> 