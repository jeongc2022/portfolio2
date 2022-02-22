$(function(){
	var color = ["black","red"];
	var cnt=0;
	$('.plist_imgbox').each(function() {
	
	  var nowImg = $(this).find('img');
	  var srcName = nowImg.attr('src'); 
	  var newSrc = srcName.substring(0, srcName.lastIndexOf('.'));
	  
	
	 
	  $(this).hover(function() { 
	    $(this).find('img').attr('src', newSrc+ '-1.' + /[^.]+$/.exec(srcName)); 
	  }, function() {
	    $(this).find('img').attr('src', newSrc + '.' + /[^.]+$/.exec(srcName)); 
	  });
	
	
	});
	
	           timer=setInterval(function(){
                	if(cnt==2){
						cnt=0;
					}
					$(".listqty").css("color",color[cnt]);
					cnt++;
                },200);
})
