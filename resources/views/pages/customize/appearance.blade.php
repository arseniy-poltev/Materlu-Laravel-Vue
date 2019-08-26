@extends('layouts.app')

@section('content')

	<style>
	.apearence{-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;width:73.7%;margin:20px auto 2% auto;padding:2%;background:#FFF;border-radius:20px;box-shadow:0 2px 63px 3px rgba(53,53,53,.1)}
	.apearence_form{display:none}.controls,.panel{height:50vh;width:50%;border-radius:8px;box-shadow:0 2px 2px 2px rgba(4,148,132,.3);overflow:hidden}
	.panel{background:linear-gradient(135deg,rgba(236,28,36,.8) 0,rgba(246,147,34,.8) 17%,rgba(253,241,29,.8) 33%,rgba(140,197,67,.8) 49%,rgba(102,215,251,.8) 66%,rgba(22,100,190,.8) 82%,rgba(112,86,191,.8) 100%)}
	.panel svg{height:100%;width:100%}
	.controls{width:calc(50% - 30.01px);margin-left:30px;overflow:hidden}
	.controlbox,.grupo_control{width:0%;height:100%;margin:0;padding:0}
	.controlbox{overflow:hidden;transition:margin ease .4s}
	.grupo_control{display:block;float:left;border-radius:4px}
	.header_control{display:flex;width:100%;height:60px;background-image:linear-gradient(243deg,#028d8a 0,#00be62 100%);line-height:60px;font-size:x-large;text-align:center;color:#FFF;font-weight:700}
	.boton_control{width:60px;cursor:pointer}
	.boton_control:hover{background:rgba(255,255,255,.2)}
	.boton_control:active,.subtitle:active{box-shadow:inset 0 1px 2px 2px rgba(0,0,0,.2)}
	.title_control{width:calc(100% - 120px)}
	.subheader{font-size:medium;height:30px;line-height:30px;background:#2c7759;cursor:pointer}
	.subheader .title_control:hover{background:#338463}
	.body_control{flex-wrap:wrap;width:calc(100% - 40px);height:calc(100% - 100px);padding:20px;text-align:center;overflow-y:auto;overflow-x:hidden}
	.reduced{height:calc(100% - 140px)}
	.configColor,.configHide{display:inline-block;height:80px;width:80px;margin:10px;border-radius:3px;box-shadow:0 1px 3px 1px rgba(0,0,0,.4);cursor:pointer;vertical-align:top;background:#eee;flex-shrink:0}
	.configColor:active,.configHide:active{box-shadow:inset 0 1px 3px 1px rgba(0,0,0,.4)}
	.choosen{box-shadow:0 1px 1px 3px #e71f58}
	@media (max-width:800px){
	 .character_title,.progressbar{display:none}
	 .apearence{display:block;width:calc(94% - 40px);margin:3%;padding:4%}
	 .controls,.panel{display:block;height:40vh;width:100%;margin:0;border-radius:0;box-shadow:none}
	 .panel{border-radius:10px 10px 0 0}
	 .controls{height:195px}
	 .header_control{font-size:large;height:45px;line-height:45px}
	 .body_control{display:flex;flex-direction:row;flex-wrap:nowrap;flex-flow:row;height:115px;width:unset;margin-top:10px;padding:0;overflow-x:auto;overflow-y:hidden}
	}
	.hide{display:none}
	h3{display:none}
	@media (min-width:1400px){
     h3{display:block}
	}
	</style>

    <main class="appearance-page">
        {{--<div class="back_link_wrapper">--}}
        {{--<a href="{{ u('stories') }}" class="back_link">--}}
        {{--<img src="{{ asset('images/characterPage/back-arrow.png') }}" alt="arrow image">--}}
        {{--<span class="back_link_text">{{ t('Stories') }}</span>--}}
        {{--</a>--}}
        {{--</div>--}}
        <h3 class="character_title">{{ t('Character set up') }}</h3>
        <div class="progressbar">
            <div class="progressbar_images">
                <div class="progress1"></div>
                <div class="progress2 on_progress2-desktop" id="progress2"></div>
                <div class="progress3" id="progress3"></div>
                <div class="progress4" id="progress4"></div>
                <div class="progress5" id="progress5"></div>

            </div>
            <div class="progressbar_descr">
                <span class="progressbar_descr-item">{{ t('Name') }}</span>
                <span class="progressbar_descr-item">{{ t('Appearance') }}</span>
                <span class="progressbar_descr-item">{{ t('Dedication') }}</span>
                <span class="progressbar_descr-item">{{ t('Review') }}</span>
            </div>
        </div>
        <div class="apearence ap_apearence" id="apBox">

            <form action="{{ u('customize/appearance') }}" method="post" class="apearence_form" id="customize_appearance_form">
                @csrf

                <input type="hidden" name="story_id" value="{{ $data->story_id }}">
                <input type="hidden" name="gender" value="{{ $data->gender }}">
                <input type="hidden" name="language" value="{{ get_language_by_id($data->language)->abbr }}">
                <input type="hidden" name="character_info" value="{{ $data->character_info }}">

            </form>
            
			<div class="panel"></div>
			<div class="controls">
				<div class="controlbox"></div>
			</div>
		</div>
			
		<div class="arrow_box ap_arrow-box">
			<div class="prev_arrow"><img src="{{ asset('images/characterPage/right-arrow.png') }}"><a href="{{ u('customize/' . $data->story_id . '/name') }}" class="back_link2">{{ t('Name') }}</a></div>
			<button type="submit" class="ap_button2 customize_appearance_form_btn" id="apButton2">{{ t('Dedication') }} <img src="{{ asset('images/characterPage/right-arrow.png') }}" class="right_arrow"></button>
		</div>

    </main>

    <script>
        gtag('event', 'load_{{ $data->story_id }}', {'event_category': 'customize', 'event_label': 'appearance', 'value':'1'});
    </script>

@endsection