function go_cart_delete(cseq){
   var result = confirm("이 상품을 삭제하시겠습니까?")
   var cseq1 = cseq;
      if(result==true){
      document.formm.action ="ezen.do?command=cart_delete&cseq="+cseq1;
      document.formm.submit();
      
      }else{
         return false;
      }

   }

function clist_main(){
   
   document.formm.action ="ezen.do?command=index"
   document.formm.submit();
}
function go_order(){
swal({
  title: "주문하시겠습니까?",
  icon: "warning",
  buttons: true,
  dangerMode: true,
})
.then((goorder) => {
  if (goorder) {
   location.href="ezen.do?command=orderaction";
  } else {
    return;
  }
});
}