
 $(function(){ 
		 
     $('ul.first_level li.list_item_first_level a').click(function(ev) {

         		var a= $(this);
				var li = $(a).parent();
				var ul = $(li).parent();
								
				ul.find(".current").removeClass("current");
				li.addClass("current");
				
				$(".arrow").removeClass("arrow").addClass("notarrow");
				li.find(".notarrow").removeClass("notarrow").addClass("arrow");
				
				if(a.hasClass("logo_from_header")){
					li.next().addClass("current");
                }
					
         		ev.preventDefault();	//disable redirect 
						
        });

 }); 
 
 $(function(){ 
		 
		$('ul.ul_second_level li a').click(function(ev) {
				
				var a = $(this);		
				var li = $(this).parent();
				var ul = $(li).parent();
								
				ul.find(".current").removeClass("current");
				li.addClass("current");
				a.addClass("current");

            	ev.preventDefault();	//disable redirect
									
        });

 }); 
 
 
 