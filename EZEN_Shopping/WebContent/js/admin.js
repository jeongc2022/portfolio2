$(function(){
        var num1 = ['노트북', '데스크탑', '스피커' , '전기면도기'];
        var num2 = ['청소기', '냉장고' , '김치냉장고' , '에어컨'];
        var num3 = ['믹서기', '식기세척기', '칼/도마', '유리제품'];
        var num4 = ['침대', '이불', '배게+커버', '매트리스'];
        $('#bigselect').change(function(){
            var sel = $(this).val();
            if(sel == 1){
				var temp = 1;
                $('.op').remove();
                $.each(num1,function(i, item){
                    $('#sselect').append('<option class="op" value="'+temp+'"'+'>'+item+'</option>');
					temp+=1;
					
                });
            }else if(sel== 2){
                var temp = 5;
                $('.op').remove();
                $.each(num2,function(i, item){
                    $('#sselect').append('<option class="op" value="'+temp+'"'+'>'+item+'</option>');
					temp+=1;
                });
            }
            else if(sel== 3){
                var temp = 9;
                $('.op').remove();
                $.each(num3,function(i, item){
                    $('#sselect').append('<option class="op" value="'+temp+'"'+'>'+item+'</option>');
					temp+=1;
                });
            }
            else if(sel== 4){
             	var temp = 13;
                $('.op').remove();
                $.each(num4,function(i, item){
                    $('#sselect').append('<option class="op" value="'+temp+'"'+'>'+item+'</option>');
					temp+=1;
                });
        }

	})
	
	$("#allcheck").click(function(){
		if($("input:checkbox[id='allcheck']").prop("checked")){
			$("input[type=checkbox]").prop("checked",true);
		}else{
			$("input[type=checkbox]").prop("checked",false);
		}
	})
	$("#jumunkey").keypress(function(e){
		if(e.which == 13){
			var key = $("#jumunkey").val();
			location.href="ezen.do?command=delivery_go_Action&key="+key;
		}
	})
	$("#jumunkey").focus();
})

function go_total_member(){
	location.href="ezen.do?command=adminmemberlist&search="+"";
}
function go_search_member(){
	var key = $("#key").val();
	location.href="ezen.do?command=adminmemberlist&search="+key;
}

function go_search_product(){
	var key = $("#key").val();
	var select =$("#sselect option:selected").val();
	location.href="ezen.do?command=admin_product_list&key="+key+"&select="+select;

}

function go_total_product(){
	location.href="ezen.do?command=admin_product_list&key="+""+"&select="+"";
}
function excelgo(){
	var key = $("#key").val();
	var select =$("#sselect option:selected").val();
	location.href="ezen.do?command=excel&key="+key+"&select="+select;
}
function go_reuslt(){
	var check=document.getElementsByName("check");
	var count=check.length;
	var checkd = new Array();
	var result="";
	for (var i=0; i<count; i++){
		if(check[i].checked==true){
			result+="&checkd="+check[i].value;
		}
	}
	/*location.href="ezen.do?command=go_result&checkd="+checkd;*/
	location.href="ezen.do?command=go_result"+result;
}