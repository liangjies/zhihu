<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--[if IEMobile 7 ]> <html lang="zh_CN" class="no-js iem7"> <![endif]-->
<!--[if lt IE 7]> <html class="ie6 lt-ie10 lt-ie9 lt-ie8 lt-ie7 no-js" lang="zh_CN"> <![endif]-->
<!--[if IE 7]>    <html class="ie7 lt-ie10 lt-ie9 lt-ie8 no-js" lang="zh_CN"> <![endif]-->
<!--[if IE 8]>    <html class="ie8 lt-ie10 lt-ie9 no-js" lang="zh_CN"> <![endif]-->
<!--[if IE 9]>    <html class="ie9 lt-ie10 no-js" lang="zh_CN"> <![endif]-->
<!--[if (gte IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!-->
<html class="js no-touch opacity csstransforms3d csstransitions svg cssfilters is-not-mobile-device full-urls has-search-focus" lang="zh_CN">
<!--<![endif]-->
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8;charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=1">
    <meta name="HandheldFriendly" content="true">
    <link rel="stylesheet" href="/static/css/s1764.css" type="text/css">
    <link rel="stylesheet" href="/static/css/o1764.css" type="text/css">
    <link href="/static/css/lato-open-sans.css" rel="stylesheet">
    <link rel="shortcut icon" href="/assets/doge_ico.png" type="image/png">
    <meta property="og:url" content="https://DogeDoge.com/">
    <meta property="og:site_name" content="DogeDoge">
    <title>知乎查看</title>
    <meta property="og:title" content="知乎查看">
    <style>
        .content-wrap--home {
            top: 18%;
        }
        @media only screen and (min-height: 700px)
            .foot-home {
                bottom: 20%;
            }

            .foot-home {
                position: absolute;
                bottom: 0;
                left: 0;
                right: 0;
                width: 100%;
                padding: 1em 0;
                text-align: center;
            }
    </style>
</head>
<body id="pg-index" class="page-index body--home">
<script src="/static/js/jquery.min.js"></script>
<div class="site-wrapper site-wrapper--home js-site-wrapper">
    <div class="header-wrap--home js-header-wrap">
        <div class="header--aside js-header-aside">
            <div class="header--aside__item showcase header__label">
				<span class="header__clickable js-hl-button" data-type="showcase"><span class="js-popout-trig" aria-haspopup="true" aria-label="不追踪，不误导。" role="button" aria-pressed="false"><span id="wedonttrack">不追踪，不误导。</span></span>
                    <!-- <span class="popout-trig js-popout"><span class="js-popout-link js-showcase-popout ddgsi ddgsi-down" aria-hidden="true" data-type="showcase"></span> -->

				</span>
            </div>
        </div>
    </div>
    <div id="" class="content-wrap--home">
        <div id="content_homepage" class="content--home">
            <div class="cw--c">
                <div class="logo-wrap--home">
                    <a id="logo_homepage_link" class="logo_homepage" href="/">
                        About DogeDoge
                        <span class="logo_homepage__tt">有问题，上知乎。</span>
                    </a>
                </div>
                <div class="search-wrap--home">
                    <form id="search_form_homepage" class="search--home js-search-form search--adv search--focus" name="x" method="GET" action="/results" _lpchecked="1">
                        <input id="search_form_input_homepage" class="js-search-input search__input--adv" type="text" autocomplete="off" name="q" tabindex="1" value="" autocapitalize="off" autocorrect="off" placeholder="请输入正确的网址">
                        <input id="search_button_homepage" class="search__button js-search-button" type="submit" tabindex="2" value="S">
                        <input id="search_form_input_clear" class="search__clear js-search-clear" type="button" tabindex="3" value="X">
                        <div id="search__autocomplete" class="search__autocomplete" style="position: absolute; display: none;"></div>
                    </form>
                </div>
                <div class="tag-home">
                    <div class="tag-home__wrapper">
                        <!-- <div class="tag-home__item">
                            试一试：<a href='/results?q=%E5%A4%A9%E6%B0%94%E9%A2%84%E6%8A%A5'>查个天气</a> <img src="/static/icons/weather/partly-cloudy-night.svg" height="24" style="margin-bottom: -5px;">
                        </div>
                        <div class="tag-home__item">
                            办年货：<a href='/results?q=%E5%B9%B4%E8%B4%A7%E8%8A%82'>超值年货会场入口</a> <img src="/static/icons/twemoji/svg/1f970.svg" height="22" style="margin-bottom: -5px;">
                        </div> -->
                    </div>
                </div>
                <div id="error_homepage">
                </div>
            </div>
            <!-- cw -->
        </div>
        <!-- content_homepage //-->
    </div>
    <!-- content_wrapper_homepage //-->
    <div id="footer_homepage" class="foot-home js-foot-home">
        <a href="http://beian.miit.gov.cn" target="_blank" style="color: #bdbdbd;">粤ICP备18103370号</a> / ad<!-- >@. -->min@<!-- >@. -->ice<!-- >@. -->wx.com
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        var client={
            browser:function(){
                var ua = navigator.userAgent, app = navigator.appVersion;
                return {//移动终端浏览器版本信息
                    isTrident: ua.indexOf('Trident') > -1, //IE内核
                    isPresto: ua.indexOf('Presto') > -1, //opera内核
                    isWebKit: ua.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
                    isGecko: ua.indexOf('Gecko') > -1 && ua.indexOf('KHTML') == -1, //火狐内核
                    isiOS: !!ua.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
                    isAndroid: ua.indexOf('Android') > -1 || ua.indexOf('Linux') > -1, //android终端或者uc浏览器
                    iPhone: ua.indexOf('iPhone') > -1 , //是否为iPhone或者QQHD浏览器
                    iPad: ua.indexOf('iPad') > -1, //是否iPad
                    isWebApp: ua.indexOf('Safari') == -1, //是否web应该程序，没有头部与底部
                    isWeixin: ua.indexOf('MicroMessenger') > -1, //是否微信
                    isQQ: ua.match(/\sQQ/i) == " qq" //是否QQ
                };
            }(),
            os:function() {
                var ua = navigator.userAgent,
                    isWindowsPhone = /(?:Windows Phone)/.test(ua),
                    isSymbian = /(?:SymbianOS)/.test(ua) || isWindowsPhone,
                    isAndroid = /(?:Android)/.test(ua),
                    isFireFox = /(?:Firefox)/.test(ua),
                    isChrome = /(?:Chrome|CriOS)/.test(ua),
                    isTablet = /(?:iPad|PlayBook)/.test(ua) || (isAndroid && !/(?:Mobile)/.test(ua)) || (isFireFox && /(?:Tablet)/.test(ua)),
                    isPhone = /(?:iPhone)/.test(ua) && !isTablet,
                    isPc = !isPhone && !isAndroid && !isSymbian;
                return {
                    isTablet: isTablet,
                    isPhone: isPhone,
                    isAndroid : isAndroid,
                    isPc : isPc
                };
            }(),
            lang:(navigator.browserLanguage || navigator.language).toLowerCase()
        }
        if(client.os.isPc) {
            $('#search_form_input_homepage').val('').focus();
        }
        $('#search_form_input_homepage').on('input propertychange', function() {
            do_sugg(this);
        });
        $(document).mouseup(function(e){
            var _con = $('#search_form_input_homepage,#search__autocomplete');
            if(!_con.is(e.target) && _con.has(e.target).length === 0){
                $("#search__autocomplete").hide();
                $('#search_form_homepage').removeClass('has-suggestions');
            }
        });
        $('#search_form_input_homepage').focus(function () {
//			$("#search__autocomplete").show();
            do_sugg(this);
        });
        $('#search_form_input_clear').click(function () {
            $('#search_form_input_homepage').val('').focus();;
            $('#search_form_homepage').removeClass("has-text").removeClass('has-suggestions');
            $("#search__autocomplete").hide();
            //$('#error_homepage').html("").hide();
        });
        $(document).keydown(function (event) {
            if($('#search__autocomplete').is(':visible')){
                keyDown(event);
            }
        });
    });
    function do_sugg(obj){
        var count = $(obj).val().length;
        var auto_div = $("#search__autocomplete");
        if (count>0) {
            $('#search_form_homepage').addClass("has-text");
            $.ajax({cache:true,url:"/sugg/"+$(obj).val(),async:true,success:function(result){
                    var tempDiv = document.createElement("DIV");
                    $('#search_form_homepage').addClass('has-suggestions');
                    auto_div.show();
                    var newDIV = $(tempDiv).addClass('acp-wrap').html(result);
                    var fake_acp = document.createElement("DIV");
                    var fake_acp = $(fake_acp).addClass('acp').attr('tabindex','0').text($(obj).val());
                    fake_acp.hide();
                    auto_div.html(newDIV);
                    newDIV.prepend(fake_acp);
                    auto_div.show();
                    auto_div.find('.acp').on({
                        mouseenter: function () {
                            $("div.acp").removeClass('acp--highlight');
                            $(this).addClass("acp--highlight");
                            $(this).click(function () {
                                $('#search_form_input_homepage').val($(this).text());
                                auto_div.hide();
                                document.getElementById('search_form_homepage').submit();
                            })
                        },
                        mouseleave: function () {
                            $("div.acp").removeClass('acp--highlight');
                        }
                    });
                }});
        } else {
            $('#search_form_homepage').removeClass("has-text").removeClass('has-suggestions');
            auto_div.hide();
        }
    }
    //方向键控制页面控件焦点移动
    function keyDown(event) {
        var suggs = $("div.acp");                  //通过class属性值获取控件组合
        var this_sugg = $(".acp.acp--highlight");                  //通过class属性值获取控件组合
        var focus = document.activeElement;                 //得到处于激活状态的控件
        var event = window.event || event;                              //获取事件
        var key = event.keyCode;                                     //得到按下的键盘Ascii码
        var target_input = $('#search_form_input_homepage');                                     //得到按下的键盘Ascii码
        var this_tabindex = $(this_sugg).attr('tabindex');
        var this_flag = 0;var last_flag = 0;
        if (typeof this_tabindex == typeof undefined || this_tabindex == false) {
            this_flag = 0;
        } else {
            this_flag = parseInt(this_tabindex);
        }
        var last_tabindex = $(suggs).last().attr('tabindex');
        if (typeof last_tabindex == typeof undefined || last_tabindex == false) {
            last_flag = 0;
        } else {
            last_flag = parseInt(last_tabindex);
        }
        switch (key) {
            case 38:                //向上键
                $(suggs).removeClass('acp--highlight');
                if (this_flag>0 && this_flag<=last_flag) {
                    $(suggs[this_flag-1]).addClass('acp--highlight');
                    if (this_flag>0) {
                        target_input.val($(suggs[this_flag-1]).text());
                    }
                } else if(this_flag==0) {
                    $(suggs[last_flag]).addClass('acp--highlight');
                    target_input.val($(suggs[last_flag]).text());
                } else {
                    //hi
                }
                event.returnValue=false;
                break;
            case 40:                //向下键
                $(suggs).removeClass('acp--highlight');
                if (this_flag>=0 && this_flag<last_flag) {
                    $(suggs[this_flag+1]).addClass('acp--highlight');
                    target_input.val($(suggs[this_flag+1]).text());
                } else {
                    $(suggs[0]).addClass('acp--highlight');
                    target_input.val($(suggs[0]).text());
                }
                break;
            case 13:                //回车键
                if (this_flag>0) {
                    target_input.val($(suggs[this_flag]).text());
                }
                break;
        }
    }
</script>

<script type="text/javascript">
    var _paq = window._paq || [];
    /* tracker methods like "setCustomDimension" should be called before "trackPageView" */
    _paq.push(['trackPageView']);
    _paq.push(['enableLinkTracking']);
    (function() {
        var u="/data/";
        _paq.push(['setTrackerUrl', u+'up']);
        _paq.push(['setSiteId', '1']);
        var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
        g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'js'; s.parentNode.insertBefore(g,s);
    })();
</script>
<script type="text/javascript">
    var system ={};
    var p = navigator.platform;
    system.win = p.indexOf("Win") == 0;
    system.mac = p.indexOf("Mac") == 0;
    system.x11 = (p == "X11") || (p.indexOf("Linux") == 0);
    if(!system.win&&!system.mac&&!system.xll){//如果是手机,跳转到
        document.getElementById('search_form_homepage').action="/m/results";
    }
</script>
</body>
</html>