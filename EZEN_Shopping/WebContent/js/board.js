$(function(){
            $('textarea').keyup(function(){
                var length = $(this).val().length;
                $("#keyup").html(length);
                if(length<=200){
                    $("#keyup").css("color","black");
                }else{
                  $("#keyup").css("color","red");  
                }
            })
 })
function deleteboard(bnum){
var result=confirm("삭제하시겠습니까?");
if(result){
location.href="ezen.do?command=deleteboard&bnum="+bnum;
	}
}
function boardupdate(){
	var btitle = $("#btitle").val();
	var bcontent=$("#bcontent").val();
	var bnum = $("#bnum").val();
	if($("#btitle").val()==""){
		swal("제목을 입력해주세요.");
		$("#btitle").focus();
		return;
	}
	if($("#bcontent").val()==""){
		swal("내용을 입력해주세요.");
		$("#btitle").focus();
		return;
	}
	location.href="ezen.do?command=updateboardaction&btitle="+btitle+"&bcontent="+bcontent+"&bnum="+bnum;
}

function boardinsert(){
	var btitle = $("#btitle").val();
	var bcontent=$("#bcontent").val();
	var bnum = $("#bnum").val();
	if($("#btitle").val()==""){
		swal("제목을 입력해주세요.");
		$("#btitle").focus();
		return;
	}
	if($("#bcontent").val()==""){
		swal("내용을 입력해주세요.");
		$("#btitle").focus();
		return;
	}
	location.href="ezen.do?command=insertboard&btitle="+btitle+"&bcontent="+bcontent+"&bnum="+bnum;
}

function reply_go(bnum,email){
	if(email==null){
		swal("로그인후 이용해주세요.");
		return;
	}
	var rcontent = $("#rcontent").val();
	location.href="ezen.do?command=insertreply&bnum="+bnum+"&email="+email+"&rcontent="+rcontent;
}