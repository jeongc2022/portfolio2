function pick(num){
            switch(num){
                case 1: $("#pbtn1").css("display","inherit"),$("#pbtn2").css("display","inherit");
                break
                case 2:$("#pbtn3").css("display","inherit"),$("#pbtn4").css("display","inherit");
                break
                case 3:$("#pbtn5").css("display","inherit"),$("#pbtn6").css("display","inherit") ;
                break
                 case 4:$("#pbtn7").css("display","inherit"),$("#pbtn8").css("display","inherit") ;
                break
                 case 5:$("#pbtn9").css("display","inherit"),$("#pbtn10").css("display","inherit") ;
                break
                
            }
        }
        function unpick(num){
        switch(num){
                case 1: $("#pbtn1").css("display","none"),$("#pbtn2").css("display","none") ;
                break
                case 2:$("#pbtn3").css("display","none"),$("#pbtn4").css("display","none")  ;
                break
                case 3:$("#pbtn5").css("display","none"),$("#pbtn6").css("display","none")  ;
                break
                case 4:$("#pbtn7").css("display","none"),$("#pbtn8").css("display","none")  ;
               case 5:$("#pbtn9").css("display","none"),$("#pbtn10").css("display","none")  ;
            }
        }
        function menuover(num){
            switch(num){
                case 1 : $("#menu"+num).css("display","inherit");break;
                case 2 : $("#menu"+num).css("display","inherit");break;
                case 3 : $("#menu"+num).css("display","inherit");break;
                case 4 : $("#menu"+num).css("display","inherit");break;
                case 5 : $("#menu"+num).css("display","inherit");
            }
        }
        function menuout(num){
            switch(num){
                case 1 : $("#menu"+num).css("display","none");break;
                case 2 : $("#menu"+num).css("display","none");break;
                case 3 : $("#menu"+num).css("display","none");break;
                case 4 : $("#menu"+num).css("display","none");break;
                case 5 : $("#menu"+num).css("display","none");
            }
        }
        function allmenu(nuum){
            if(nuum==1){
                $("#allmenuwrap").css("left","0");
                $("#bg").css("background","gray");
                $("#bg").css("display","inherit");
                $("#bg").css("z-index","2");
                $("#bg").css("opacity","0.5");
                $("#usermenu").on('scroll touchmove mousewheel', function(event) {
                event.preventDefault();
                event.stopPropagation();
                return false;
                });
                 clearInterval(timer);
            }else if(nuum==2){
               $("#allmenuwrap").css("left","-500px");
                $("#bg").css("background","white");
                $("#bg").css("z-index","0");
                 $("#bg").css("display","none");
                $("#bg").css("opacity","0");
                $('#usermenu').off('scroll touchmove mousewheel');
                    var num = 0;
                        timer=setInterval(function(){
                    num++;
                    if(num==5){
                        num=0;
                    }
                    var move = (-1*1200)*num;
                    $('#bnn').css('left',move);
                },2000);
            }
        }

function search_go(){
	var key = $("#ser").val();
	if(key==""){
		swal("검색어를 입력해주세요.");
		return;
	}
	location.href="ezen.do?command=searchaction&key="+key;
}