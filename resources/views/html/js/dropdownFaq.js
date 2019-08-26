$(document).ready(function unfoldOnClick(){
   
        $(".answer").hide();
        $(".faq_item").click(function(){
            $(this).children(".answer").slideToggle(800);
          
        })

    
        

});