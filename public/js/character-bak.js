$( document ).ready(function() {

    var xml = '<?xml version="1.0" encoding="utf-8"?>';
    var text;
    var viewBox;
    var json;
    var story = "1";		// THIS MUST BE LOADED WITH THE ID OF THE STORY -> Will be used to load JSON config and SVG files with that name.
    var gender = $('.apearence_form [name=gender]').val();	// THIS MUST BE LOADED WITH THE SELECTED GENDER -> girl/boy OR MAYBE chica/chico. DEFAULT: "chico" (boy);
    var lang = $('.apearence_form [name=language]').val();		// THIS MUST BE LOADED WITH THE 2-CHAR CODE FOR LANGUAGE (es/en/it/fr/de); DEFAULT: "en";

    if($('[name=character_info]').val()){
        var result = JSON.parse($('[name=character_info]').val());
    } else {
        var result = {"lang": lang,"story":story,"gender":gender,"color":{},"show":{},"dedication":""};
        $('input[name=character_info]').val(JSON.stringify(result));
    }

    function drawControls(gender){
        if(gender=="girl") gender="chica";	// DELETE LINE IF THE GENDER VAR IS LOADED WITH "chica" INSTEAD OF "girl"
        if(gender=="boy")  gender="chico";	// DELETE LINE IF THE GENDER VAR IS LOADED WITH "chico" INSTEAD OF "boy"

        $(".panel").find("#chico").hide();
        $(".panel").find("#chica").hide();
        $(".panel").find("#"+gender).show();

        if (typeof json[gender] != "undefined"){
            $.each( json[gender] , function(ii,i){
                var box = '<div class="options">'+text[lang][ii]+'</div><div class="mygroup"><div class="autoconfig"><ul>';
                $.each( i , function(io,o){
                    if( o.tipo == 'Color' ){
                        box += '<li class="grupo"><div>';
                        $.each( o.extra , function(iu,u){
                            if ( u[0] != "" ){
                                box += '<span class="configOpt configColor" data-target="'+o.target+'" data-id="'+u[0]+'" data-stroke="'+u[1]+'" style="background: #'+u[0]+';"></span>';
                            }
                        });
                    }
                    if( o.tipo == 'Mostrar/Ocultar' ){
                        box += '<li class="grupo"><div>';
                        if( o.extra != "" && o.target != "" && o.extra != "..." && o.target != "..." && o.extra != "Sin opciones" ){
                            $(".panel").find("#"+o.target).children("[id^='"+o.extra+"']").each(function(iu,u) {
                                var html = $(this).html();
                                var id = $(this).attr("id");
                                box += '<span class="configOpt configHide" data-target="'+o.target+'" data-filtro="'+o.extra+'" data-id="'+id+'">'+xml+'<svg class="mini" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="'+viewBox+'">'+html+'</svg></span>';
                            });
                        }
                        if( o.target != "" && o.target != "..." && o.extra == "Sin opciones" ){
                            var html = $(".panel").find("#"+o.target).html();
                            box += '<span class="configOpt configHide" data-target="'+o.target+'" data-filtro="1" data-id="1">'+xml+'<svg class="mini" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="'+viewBox+'">'+html+'</svg></span>';
                            box += '<span class="configOpt configHide" data-target="'+o.target+'" data-filtro="0" data-id="0" style="background:#DDD;"><i class="fas fa-ban" style="font-size: xx-large; line-height: 80px; color: red;"></i></span>';
                        }

                    };
                    box += '</div></li>';
                });
                box += '</ul></div></div>';
                $(".controls").append(box);
            });
        }
        if (typeof json['otros'] != "undefined"){
            $.each( json['otros'] , function(ii,i){
                var box = '<div class="options">'+text[lang][ii]+'</div><div class="mygroup"><div class="autoconfig"><ul>';
                $.each( i , function(io,o){
                    if( o.tipo == 'Color' ){
                        box += '<li class="grupo"><div>';
                        $.each( o.extra , function(iu,u){
                            if ( u[0] != "" ){
                                box += '<span class="configOpt configColor" data-target="'+o.target+'" data-id="'+u[0]+'" data-stroke="'+u[1]+'" style="background: #'+u[0]+';"></span>';
                            }
                        });
                    }
                    if( o.tipo == 'Mostrar/Ocultar' ){
                        box += '<li class="grupo"><div>';
                        if( o.extra != "" && o.target != "" && o.extra != "..." && o.target != "..." && o.extra != "Sin opciones" ){
                            $(".panel").find("#"+o.target).children("[id^='"+o.extra+"']").each(function(iu,u) {
                                var html = $(this).html();
                                var id = $(this).attr("id");
                                box += '<span class="configOpt configHide" data-target="'+o.target+'" data-filtro="'+o.extra+'" data-id="'+id+'">'+xml+'<svg class="mini" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="'+viewBox+'">'+html+'</svg></span>';
                            });
                        }
                        if( o.target != "" && o.target != "..." && o.extra == "Sin opciones" ){
                            var html = $(".panel").find("#"+o.target).html();
                            box += '<span class="configOpt configHide" data-target="'+o.target+'" data-filtro="1" data-id="1">'+xml+'<svg class="mini" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="'+viewBox+'">'+html+'</svg></span>';
                            box += '<span class="configOpt configHide" data-target="'+o.target+'" data-filtro="0" data-id="0" style="background:#DDD;"><svg version="1.0" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"viewBox="0 0 48 48" enable-background="new 0 0 48 48" xml:space="preserve"><path fill="#D50000" d="M24,6C14.1,6,6,14.1,6,24s8.1,18,18,18s18-8.1,18-18S33.9,6,24,6z M24,10c3.1,0,6,1.1,8.4,2.8L12.8,32.4C11.1,30,10,27.1,10,24C10,16.3,16.3,10,24,10z M24,38c-3.1,0-6-1.1-8.4-2.8l19.6-19.6C36.9,18,38,20.9,38,24C38,31.7,31.7,38,24,38z"/></svg></span>';
                        }

                    };
                    box += '</div></li>';
                });
                box += '</ul></div></div>';
                $(".controls").append(box);
            });
        }
    }
    function getData(story){
        // TEXTS USED FOR EACH LANGUAGE
        $.ajax({
            url: $('meta[name=site-url]').attr('content') + '/ajax/json_master/texts.json',
            dataType: "text",
            success: function(data){
                text = JSON.parse(data);
            }
        });

        // LOADING JSON CONFIG + SVG
        $.ajax({
            url: $('meta[name=site-url]').attr('content') + '/ajax/json_master/'+story+'.json',
            dataType: "text",
            error: function(){
                $(".panel").html( "<p>"+text[lang].errorload+"</p>" );
            },
            success: function(data){
                var jsonBase = JSON.parse(data);
                json = jsonBase.modelo;
                $.ajax({
                    url: $('meta[name=site-url]').attr('content') + '/ajax/svg_web/'+story+'.svg',
                    dataType: "text",
                    error: function(){
                        $(".panel").html( "<p>"+text[lang].errorload+"</p>" );
                    },
                    success: function(data){
                        $(".panel").html( data );
                        for(i=0;i<$(".panel").find("svg")[0].attributes.length;i++){
                            if( $(".panel").find("svg")[0].attributes[i].name == "viewBox" ){
                                viewBox = $(".panel").find("svg")[0].attributes[i].value;
                            };
                        };
                        drawControls(gender);
                    }
                });
            }
        });
    }

    $( document ).ready(function() {
        if($('.appearance-page').length) {
            getData(story);
            $("body").on("click", ".configColor", function () {
                var id = $(this).attr("data-id");
                var target = $(this).attr("data-target");
                var stroke = $(this).attr("data-stroke");
                $("svg").find("[id^='" + target + "']").css("fill", "#" + id);
                if (stroke != "") {
                    $("svg").find("[id^='" + target + "']").css("stroke", "#" + $(this).attr("data-stroke"));
                }
                result['color'][target] = [id, stroke];
                $('input[name=character_info]').val(JSON.stringify(result));
            });
            $("body").on("click", ".configHide", function () {
                var target = $(this).attr("data-target");
                var filtro = $(this).attr("data-filtro");
                var id = $(this).attr("data-id");
                if (id == 1 || id == 0) {
                    if (id == 1) {
                        $(".panel").find("#" + target).show();
                    } else {
                        $(".panel").find("#" + target).hide();
                    }
                } else {
                    $(".panel").find("#" + target).children("[id^='" + filtro + "']").hide();
                    $(".panel").find("#" + target).children("#" + id).show();
                }
                result['show'][target] = [id];
                $('input[name=character_info]').val(JSON.stringify(result));
            });
            $("body").on("click", ".options", function () {
                $(".mygroup").not($(this).next(".mygroup")).slideUp();
                $(this).next(".mygroup").slideToggle();
            });
        }
    });

});

!function(){var e=jQuery.event,t=function(e,t,n,i){var o,r,s,a,u,c,d,l;for(o=0;o<t.length;o++)for((a=(r=t[o]).indexOf(".")<0)||(r=(d=r.split(".")).shift(),l=new RegExp("(^|\\.)"+d.slice(0).sort().join("\\.(?:.*\\.)?")+"(\\.|$)")),s=(e[r]||[]).slice(0),u=0;u<s.length;u++)c=s[u],(a||l.test(c.namespace))&&(i?c.selector===i&&n(r,c.origHandler||c.handler):null===i?n(r,c.origHandler||c.handler,c.selector):c.selector||n(r,c.origHandler||c.handler))};e.find=function(e,n,i){var o=($._data(e)||{}).events,r=[];return o?(t(o,n,function(e,t){r.push(t)},i),r):r},e.findBySelector=function(e,n){var i=$._data(e).events,o={};return i?(t(i,n,function(e,t,n){!function(e,t,n){var i=o[e]||(o[e]={});(i[t]||(i[t]=[])).push(n)}(n||"",e,t)},null),o):o},e.supportTouch="ontouchend"in document,$.fn.respondsTo=function(t){return!!this.length&&e.find(this[0],$.isArray(t)?t:[t]).length>0},$.fn.triggerHandled=function(e,t){return e="string"==typeof e?$.Event(e):e,this.trigger(e,t),e.handled},e.setupHelper=function(t,n,i){i||(i=n,n=null);var o=function(o){var r=o.selector||"";r?e.find(this,t,r).length||$(this).delegate(r,n,i):e.find(this,t,r).length||e.add(this,n,i,{selector:r,delegate:this})},r=function(o){var r=o.selector||"";r?e.find(this,t,r).length||$(this).undelegate(r,n,i):e.find(this,t,r).length||e.remove(this,n,i,{selector:r,delegate:this})};$.each(t,function(){e.special[this]={add:o,remove:r,setup:function(){},teardown:function(){}}})}}(jQuery),function(e){var t=!/Phantom/.test(navigator.userAgent)&&"ontouchend"in document,n=t?"touchstart":"mousedown",i=t?"touchend":"mouseup",o=t?"touchmove":"mousemove",r=function(t){var n=t.originalEvent.touches?t.originalEvent.touches[0]:t;return{time:(new Date).getTime(),coords:[n.pageX,n.pageY],origin:e(t.target)}},s=e.event.swipe={delay:500,max:75,min:30};e.event.setupHelper(["swipe","swipeleft","swiperight","swipeup","swipedown"],n,function(t){var n,a=r(t),u=t.delegateTarget||t.currentTarget,c=t.handleObj.selector,d=this;function l(e){a&&(n=r(e),Math.abs(a.coords[0]-n.coords[0])>10&&e.preventDefault())}e(document.documentElement).bind(o,l).one(i,function(i){if(e(this).unbind(o,l),a&&n){var r=Math.abs(a.coords[0]-n.coords[0]),h=Math.abs(a.coords[1]-n.coords[1]),f=Math.sqrt(r*r+h*h);if(n.time-a.time<s.delay&&f>=s.min){var g=["swipe"];r>=s.min&&h<s.min?g.push(a.coords[0]>n.coords[0]?"swipeleft":"swiperight"):h>=s.min&&r<s.min&&g.push(a.coords[1]<n.coords[1]?"swipedown":"swipeup"),e.each(e.event.find(u,g,c),function(){this.call(d,t,{start:a,end:n})})}}a=n=void 0})})}(jQuery);
var resizeTimer;
var result = {"lang":"en","story":"1","gender":"chica","color":{"colorpiel":["E3B491",""],"colorojos":["9DB177",""],"colorpelo":["A33118",""]},"show":{"pelo_1_":["pelo5_1_"],"complementos":["pendientes1"]},"dedication":""};
if($('[name=character_info]').val()){
    result = JSON.parse($('[name=character_info]').val());
}
function soloLetras(str){
    var regex = /[^a-zA-Z].*/gm;
    var subst = '';
    return str.replace(regex, subst);
}
function formatSvg(){
    if( result["gender"] == "chico" ) $("#chica").hide();
    if( result["gender"] == "chica" ) $("#chico").hide();
    $.each( result["color"] , function(ii,i){
        $.each( i , function(ai,a){
            if( ai == 0 && a != "" ){
                $("svg").find("[id^='"+ii+"']").css("fill","#"+a);
            }
            if( ai == 1 && a != "" ){
                $("svg").find("[id^='"+ii+"']").css("stroke","#"+a);
            }
        });
    });
    $.each( result["show"] , function(ii,i){
        var z = soloLetras(i[0]);
        $("svg").find("#"+ii).children("[id^='"+z+"']").hide();
        $("svg").find("#"+ii).children("#"+i[0]).show();
    });
}

var Page = (function() {
    var config = {
            $bookBlock : $( '#bb-bookblock' ),
            $navNext : $( '#bb-nav-next' ),
            $navPrev : $( '#bb-nav-prev' ),
            $navFirst : $( '#bb-nav-first' ),
            $navLast : $( '#bb-nav-last' )
        },
        init = function() {
            config.$bookBlock.bookblock( {
                speed : 800,
                shadowSides : 0.8,
                shadowFlip : 0.7
            } );
            initEvents();
        },
        initEvents = function() {

            var $slides = config.$bookBlock.children();

            // add navigation events
            config.$navNext.on( 'click touchstart', function() {
                config.$bookBlock.bookblock( 'next' );
                return false;
            } );

            config.$navPrev.on( 'click touchstart', function() {
                config.$bookBlock.bookblock( 'prev' );
                return false;
            } );

            config.$navFirst.on( 'click touchstart', function() {
                config.$bookBlock.bookblock( 'first' );
                return false;
            } );

            config.$navLast.on( 'click touchstart', function() {
                config.$bookBlock.bookblock( 'last' );
                return false;
            } );

            // add swipe events
            $slides.on( {
                'swipeleft' : function( event ) {
                    config.$bookBlock.bookblock( 'next' );
                    return false;
                },
                'swiperight' : function( event ) {
                    config.$bookBlock.bookblock( 'prev' );
                    return false;
                }
            } );

            // add keyboard events
            $( document ).keydown( function(e) {
                var keyCode = e.keyCode || e.which,
                    arrow = {
                        left : 37,
                        up : 38,
                        right : 39,
                        down : 40
                    };

                switch (keyCode) {
                    case arrow.left:
                        config.$bookBlock.bookblock( 'prev' );
                        break;
                    case arrow.right:
                        config.$bookBlock.bookblock( 'next' );
                        break;
                }
            } );
        };
    return { init : init };
})();

$( document ).ready(function() {

    Page.init();
    $.ajax({
        url: $('meta[name=site-url]').attr('content') + '/ajax/svg_web/'+result.story+'_1_a.svg',
        dataType: "text",
        success: function(data){
            $(".pageleft").html(data);
            formatSvg();
            $.ajax({
                url: $('meta[name=site-url]').attr('content') + '/ajax/svg_web/'+result.story+'_1_b.svg',
                dataType: "text",
                success: function(data){
                    $(".pageright").html(data);
                    formatSvg();
                    $.ajax({
                        url: $('meta[name=site-url]').attr('content') + '/ajax/svg_web/1.svg',
                        dataType: "text",
                        success: function(data){
                            $(".page2").html(data);
                            $(".page2").children("svg").css("width","100%");
                            $(".page2").children("svg").css("height","100%");
                        }
                    });
                }
            });
        }
    });

    var mainWidth = $(".apearence_form").width();
    var svgHeight = mainWidth * 0.50;
    $(".apearence_form").css("height",svgHeight+100+"px");
    $(".bb-bookblock").css("height",svgHeight+"px");

    $(window).on('resize', function(e) {
        clearTimeout(resizeTimer);
        resizeTimer = setTimeout(function() {
            var mainWidth = $(".apearence_form").width();
            var svgHeight = mainWidth * 0.50;
            $(".apearence_form").css("height",svgHeight+100+"px");
            $(".bb-bookblock").css("height",svgHeight+"px");
        }, 250);
    });

    $("body").on("click",".pageleft",function(){
        $("#bb-nav-prev").click();
    });
    $("body").on("click",".pageright",function(){
        $("#bb-nav-next").click();
    });

});