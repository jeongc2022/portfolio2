
function re_pwdcheck(){
        var phone=$("#phone").val();
        var pwd=$("#pwd").val();
        
        var repwd=$("#repwd").val();    
        if(pwd!=repwd){
            alert("비밀번호 확인이 일치하지 않습니다.");
            $("#repwd").focus();
            return;
            }
       
        location.href = "ezen.do?command=reset_Pass_Action&pwd="+ pwd+"&phone="+phone;
        }
        
function pwdcheck(){
   var email=$("#email").val();
    var phone=$("#phone").val();    
    if(email==""){
        alert("이메일을 입력해주세요.");
        $("#pwdsearch").focus();
        return;
        }
        
    if(phone==""){
        alert("핸드폰번호를 입력해주세요.");
        $("#phone").focus();
        return;
        } 
    location.href = "ezen.do?command=login_pwdsearch_Action&email="+ email+"&phone=" + phone;
    }



function lecheck(){
        var phone=$("#phone").val();
        if(phone==""){
            alert("휴대폰번호를 입력해주세요.");
            $("#phone").focus();
            return;
            } 
        location.href = "ezen.do?command=login_Emailsearch_Action&phone="+ phone;
        }
	function emailcheck(){
            var email = $(".inputEmail").val();
            var url = "ezen.do?command=emailcheck_form&email="+email ;
            var opt = "toolbar=no, menubar=no, scrollbars=no, resizable=no, width=500, height=250";
            if(email == ""){
            alert('이메일을 입력해주세요.');
            $(".inputEmail").focus();
   
            }
            else{
            
            window.open(url,"emailcheck", opt);
            }
        }




function sign() {
   var reg=/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{4,20}$/;
   var fn = $("#firstname").val();
   var ln = $("#lastname").val();
   var birth = $("#birth").val();
   var phone = $("#phone").val();
   var gender = $("#gender").val();
   var doroaddress = $("#doroaddress").val();
   var address = $("#address").val();
   var postnum = $("#postnum").val();
   var prefershop = $("#prefershop").val();
   var email = $("#email").val();
   var pwd = $("#pwd").val();
   var checkbox1 = $("input:checkbox[name='checkbox1']").is(":checked")
   var checkbox2 = $("input:checkbox[name='checkbox2']").is(":checked")


   var name = fn + ln;
 
   if (fn == "") {
      $("#firstname").focus();
      return;
   }
   if (ln == "") {
      $("#lastname").focus();
      return;
   }
   if (birth == "") {
      $("#birth").focus();
      return;
   }
   if (phone == "") {
      $("#phone").focus();
      return;
   }
   if (gender == "") {
      $("#gender").focus();
      return;
   }
   if (doroaddress == "") {
      $("#doroaddress").focus();
      return;
   }
   if (address == "") {
      $("#address").focus();
      return;
   }
   if (postnum == "") {
      $("#postnum").focus();
      return;
   }
   if (prefershop == "") {
      $("#prefershop").focus();
      return;
   }
   if (email == "") {
      $("#email").focus();
      return;
   }
   if (pwd == "") {
      $("#pwd").focus();
      return;

   }

   if(!checkbox1){
      alert("모두 동의하셔야 가입이 가능합니다.");
      return;
   }

   if(!checkbox2){
      alert("모두 동의하셔야 가입이 가능합니다.");
      return;
   }
  if(false===reg.test(pwd)){
	   alert("비밀번호 규칙이 부적합합니다.");
	   $("#pwd").focus();
	   return;
   }
   if(phone.length>11){
   alert("정상적인 휴대폰 번호가 아닙니다.");
   $("#phone").focus();
   retrun;
   }



   location.href = "ezen.do?command=join&name=" + name + "&birth=" + birth
         + "&phone=" + phone + "&gender=" + gender + "&doroaddress="
         + doroaddress + "&address=" + address + "&postnum=" + postnum
         + "&prefershop=" + prefershop + "&email=" + email + "&pwd=" + pwd      
}
$(function(){
    
            $('.inputFocus').focus(function(){
            $('.in').addClass('focus');
           });

            $('.inputFocus').focusout(function(){
            $('.in').removeClass('focus');

            if($(this).val()){
              $('.Label').addClass('on')
            }else{
              $('.Label').removeClass('on')
            }
          });
          $("#advertiseall").click(function(){

              if( $("#advertiseall").is(':checked') ){
                $("input[name=advertise1]").prop("checked", true);
              }else{
              $("input[name=advertise1]").prop("checked", false);
       
           }             
      })
})
function joinpwdcheck(){
	var pwd=$("#pwd").val();
	var seng=/(?=.*?[a-z])/;
	var beng=/(?=.*?[A-Z])/;
	var sc= /(?=.*?[#?!@$%^&*-])/;
	if(pwd.length>=4 && pwd.length<=20){
		$("#joinpwdcheck1").css("color","green");
	}else{
		$("#joinpwdcheck1").css("color","black");	
	}
	if(/(\w)\1\1/.test(pwd)){
		$("#joinpwdcheck2").css("color","black");	
	}else{
		$("#joinpwdcheck2").css("color","green");
	}
	if(false===seng.test(pwd)){
		$("#joinpwdcheck3").css("color","black");
	}else{
		$("#joinpwdcheck3").css("color","green");
	}
	if(false===beng.test(pwd)){
		$("#joinpwdcheck4").css("color","black");
	}else{
		$("#joinpwdcheck4").css("color","green");
	}
	if(false===sc.test(pwd)){
		$("#joinpwdcheck5").css("color","black");
	}else{
		$("#joinpwdcheck5").css("color","green");
	}
}