var xml = '<?xml version="1.0" encoding="utf-8"?>';
var text;
var viewBox;
var json;
var resizeTimer;
var result = {};
var maxPage = 22;
var story;
var gender;
var lang;
var route;
var page;

function getData(story){

	// TEXTS USED FOR EACH LANGUAGE
	$.ajax({
		url: route + 'json_master/texts.json',
		dataType: "text",
		success: function(data){
			text = JSON.parse(data);
		}
	});

	// LOADING JSON CONFIG + SVG
	$.ajax({
		url: route + 'json_master/'+story+'.json',
		dataType: "text",
		error: function(){
			$(".panel").html( "<p>"+text[lang].errorload+"</p>" );
		},
		success: function(data){
			var jsonBase = JSON.parse(data);
			json = jsonBase.modelo;
			$.ajax({
				url: route + 'svg_web/'+story+'.svg',
				dataType: "text",
				error: function(){
					$(".panel").html( "<p>"+text[lang].errorload+"</p>" );
				},
				success: function(data){
					console.log("Load complete");
					$(".panel").html( data );
					for(i=0;i<$(".panel").find("svg")[0].attributes.length;i++){
						if( $(".panel").find("svg")[0].attributes[i].name == "viewBox" ){
							viewBox = $(".panel").find("svg")[0].attributes[i].value;
						};
					};
					drawControls(gender);
/*					
					$("[id^='chica']").hide();
					$("[id^='chico']").show();
					$("[id^='colorpelo']").css("fill","#c3ba60");
					$("[id^='pelo_x5f_']").hide();
					$("[id^='pelo_x5f_']:first").show();
					$("[id^='colorojo']").css("fill","lightblue");
					$("[id^='colorpiel']").css("fill","#F8DCBD");
*/
				}
			});
		}
	});
}
function drawControls(gender){

	if(gender=="girl") gender="chica";
	if(gender=="boy")  gender="chico";

	$(".panel").find("[id^='chico']").hide();
	$(".panel").find("[id^='chica']").hide();
	$(".panel").find("[id^='"+gender+"']").show();
	
	$(".controlbox").html("");

	if (typeof json[gender] != "undefined"){
		$.each( json[gender] , function(ii,i){

			var box = '<div class="grupo_control"><div class="header_control"><div class="boton_control control_left"><i class="fas fa-angle-left"></i></div><div class="title_control">'+text[lang][ii]+'</div><div class="boton_control control_right"><i class="fas fa-angle-right"></i></div></div>';
			var sub = 0;
			var reduced = '';
			var hide;

			if(i.length > 1 ){
				box += '<div class="header_control subheader"><div class="title_control subtitle" data-id="0">'+text[lang]["colour"]+'</div><div class="title_control subtitle" data-id="1">'+text[lang]["form"]+'</div></div>';
				reduced = 'reduced';
			}
			$.each( i , function(io,o){
			
				if(sub > 0 ) hide = 'hide';
				box += '<div class="body_control ' + reduced + ' body_control' + sub + ' ' + hide + '">';
				
				if( o.tipo == 'Color' ){
					$.each( o.extra , function(iu,u){
						if ( u[0] != "" ){
							box += '<span class="configOpt configColor" data-target="'+o.target+'" data-id="'+u[0]+'" data-stroke="'+u[1]+'" style="background: #'+u[0]+';"></span>';
						}
					});
				}
				if( o.tipo == 'Mostrar/Ocultar' ){
					if( o.extra != "" && o.target != "" && o.extra != "..." && o.target != "..." && o.extra != "Sin opciones" ){
						$(".panel").find("[id^='"+gender+"']").find("[id^='"+o.target+"']").children("[id^='"+o.extra+"']").each(function(iu,u) {
							var html = $(this).html();
							var id = $(this).attr("id");
							box += '<span class="configOpt configHide" data-target="'+o.target+'" data-filtro="'+o.extra+'" data-id="'+id+'">'+xml+'<svg class="mini" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="'+viewBox+'">'+html+'</svg></span>';
						});
					}
					if( o.target != "" && o.target != "..." && o.extra == "Sin opciones" ){
						var html = $(".panel").find("[id^='"+gender+"']").find("#"+o.target).html();
						box += '<span class="configOpt configHide" data-target="'+o.target+'" data-filtro="1" data-id="1">'+xml+'<svg class="mini" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="'+viewBox+'">'+html+'</svg></span>';
						box += '<span class="configOpt configHide" data-target="'+o.target+'" data-filtro="0" data-id="0" style="background:#DDD;"><i class="fas fa-ban" style="font-size: xx-large; line-height: 80px; color: red;"></i></span>';
					}

				};
				
				box += '</div>';
				sub++;
			});
			box += '</div>';
			$(".controlbox").append(box);
		});
	}		
	if (typeof json["otros"] != "undefined"){
		$.each( json["otros"] , function(ii,i){

			var box = '<div class="grupo_control"><div class="header_control"><div class="boton_control control_left"><i class="fas fa-angle-left"></i></div><div class="title_control">'+text[lang][ii]+'</div><div class="boton_control control_right"><i class="fas fa-angle-right"></i></div></div>';
			var sub = 0;
			var reduced = '';

			if(i.length > 1 ){
				box += '<div class="header_control subheader"><div class="title_control subtitle" data-id="0">'+text[lang]["colour"]+'</div><div class="title_control subtitle" data-id="1">'+text[lang]["form"]+'</div></div>';
				reduced = 'reduced';
			}
			$.each( i , function(io,o){
				
				if( o.tipo == 'Color' ){
					box += '<div class="body_control '+reduced+' body_control'+sub+'">';
					$.each( o.extra , function(iu,u){
						if ( u[0] != "" ){
							box += '<span class="configOpt configColor" data-target="'+o.target+'" data-id="'+u[0]+'" data-stroke="'+u[1]+'" style="background: #'+u[0]+';"></span>';
						}
					});
				}
				if( o.tipo == 'Mostrar/Ocultar' ){
					box += '<div class="body_control '+reduced+' body_control'+sub+'">';
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
				box += '</div>';
				
				sub++;
			});
			box += '</div>';
			$(".controlbox").append(box);
		});
	}		
	
	var len = $(".grupo_control").length;
	$(".controlbox").css("width",len+"00%")
	$(".grupo_control").css("width",(100/len)+"%")
	$(".body_control").find(".configOpt:first").click();

}
function soloLetras(str){
	var regex = /[^a-zA-Z].*/gm;
	var subst = '';
	return str.replace(regex, subst);
}
function formatSvg(numPage){
	gender = result["gender"];
	if(gender=="girl") gender="chica";
	if(gender=="boy")  gender="chico";
	var name = $("[name='character_name']").val();
	$(".page"+numPage).find("tspan").each(function(i,a){
		var x = $(this).text().replace("$NAMECHICO", name);
		$(this).text(x);
	});

	
	$(".page"+numPage).find("[id^='chica']").hide();
	$(".page"+numPage).find("[id^='chico']").hide();
	$(".page"+numPage).find("[id^='"+gender+"']").show();
	
	$.each( result["color"] , function(ii,i){
		$.each( i , function(ai,a){
			if( ai == 0 && a != "" ){
				$(".page"+numPage).find("[id^='"+ii+"']").css("fill","#"+a);
			}
			if( ai == 1 && a != "" ){
				$(".page"+numPage).find("[id^='"+ii+"']").css("stroke","#"+a);
			}
		});
	});
	$.each( result["show"] , function(ii,i){
		var z = soloLetras(i[0]);
		$(".page"+numPage).find("[id^='"+gender+"']").find("[id^='"+ii+"']").find("[id^='"+z+"']").hide();
		$(".page"+numPage).find("[id^='"+gender+"']").find("[id^='"+ii+"']").find("[id^='"+i[0]+"']:first").css("display","block");
	});
}
function makePages(max){
	for(i=1;i<=max;i++){
		$(".bb-bookblock").append('<div class="bb-item"><div class="page page'+i+'"><div class="pageleft"></div><div class="pageright"></div></div></div>');
	}
}
function loadPage(numPage){
	var existe = $(".page"+numPage).find("svg").length;
	if ( existe == 0){
		$.ajax({
			url: route + '/svg_web/'+result.story+'_'+numPage+'a.svg',
			dataType: "text",
			success: function(data){
				$(".page"+numPage).find(".pageleft").html(data);
				formatSvg(numPage);
			}
		});		
		$.ajax({
			url: route + '/svg_web/'+result.story+'_'+numPage+'b.svg',
			dataType: "text",
			success: function(data){
				$(".page"+numPage).find(".pageright").html(data);
				formatSvg(numPage);
			}
		});
	}
}

$( document ).ready(function() {

	story = $('.apearence_form [name=story_id]').val();
	gender = $('.apearence_form [name=gender]').val();
	lang = $('.apearence_form [name=language]').val();
	route = $('meta[name=site-url]').attr('content') + '/ajax/';

    if($('[name=character_info]').val()){
        result = JSON.parse($('[name=character_info]').val());
    } else {
        result = {"lang": lang,"story":story,"gender":gender,"color":{},"show":{},"dedication":""};
        $('input[name=character_info]').val(JSON.stringify(result));
    }
	if( $('[name=gender]').val() ){
		result.gender = gender;
	}
	// Character1 //
	if( $('.appearance-page').length > 0 ) {
		getData(story);
		$("body").on("click", ".configColor", function () {
			var id = $(this).attr("data-id");
			var target = $(this).attr("data-target");
			var stroke = $(this).attr("data-stroke");
			$(this).siblings(".choosen").removeClass("choosen");
			$(this).addClass("choosen");
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
			
			$(this).siblings(".choosen").removeClass("choosen");
			$(this).addClass("choosen");
			if (id == 1 || id == 0) {
				if (id == 1) {
					$(".panel").find("[id^='" + target + "']").show();
				} else {
					$(".panel").find("[id^='" + target + "']").hide();
				}
			} else {
				$(".panel").find("[id^='" + target + "']").find("[id^='" + filtro + "']").hide();
				$(".panel").find("[id^='" + target + "']").find("[id^='" + id + "']:first").show();
			}
			result['show'][target] = [id];
			$('input[name=character_info]').val(JSON.stringify(result));
		});
		$("body").on("click", ".control_right", function () {
			var a = $(this).parent().parent().prevAll().length;
			var d = $(this).parent().parent().nextAll().length;
			if( d > 0 ){
			 $(".controlbox").css("margin-left","-" + ((a+1)*100) + "%");
			}
		});
		$("body").on("click", ".control_left", function () {
			var a = $(this).parent().parent().prevAll().length;
			if( a > 0 ){
			 $(".controlbox").css("margin-left", ((a-1)*(-100)) + "%");
			}
		});
		$("body").on("click", ".subtitle", function () {
			var a = $(this).attr("data-id");
			$(this).parent().nextAll(".body_control").addClass("hide");
			$(this).parent().nextAll(".body_control"+a).removeClass("hide");
		});
	}

	// Character4 //
	if( $(".bb-bookblock").length > 0 ) {
		
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
						shadowFlip : 0.7,
						onEndFlip	: function( page, isLimit ) {
							var act = $(".bb-item[style='display: block;']").prevAll().length+1;
							if( act < maxPage ){
								loadPage(act+1);
							}
							if( act > 1 ){
								loadPage(act-1);
							}
							return false;
						},
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

		
		
		makePages(maxPage);
		loadPage(1);
		loadPage(2);
		loadPage(maxPage);

		Page.init();
		
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

	}
});