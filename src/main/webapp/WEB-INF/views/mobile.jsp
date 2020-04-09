<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="zh" data-ios="true" data-theme="light">
<head>
    <meta charSet="utf-8"/>
    <title data-react-helmet="true">${title}</title>
    <meta name="viewport"
          content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0,viewport-fit=cover"/>
    <meta name="renderer" content="webkit"/>
    <meta name="force-rendering" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="google-site-verification" content="FTeR0c8arOPKh8c5DYh_9uu98_zJbaWw53J-Sch9MTg"/>
    <meta name="apple-itunes-app"
          content="app-id=432274380, app-argument=zhihu://answers/1017129048?utm_source=mobile_smart_banner"/>
    <meta data-react-helmet="true" name="description" property="og:description"
          content="坐标深圳，17年当我月薪才1w出头的时候，我老爸突然跟我说，”要不先把房子买了吧？“后来一段时间就在深…"/>
    <meta data-react-helmet="true" name="keywords" content="房地产,买房,一线城市,按揭购房,贷款"/>
    <link data-react-helmet="true" rel="apple-touch-icon"
          href="https://static.zhihu.com/heifetz/assets/apple-touch-icon-152.67c7b278.png"/>
    <link data-react-helmet="true" rel="apple-touch-icon"
          href="https://static.zhihu.com/heifetz/assets/apple-touch-icon-152.67c7b278.png" sizes="152x152"/>
    <link data-react-helmet="true" rel="apple-touch-icon"
          href="https://static.zhihu.com/heifetz/assets/apple-touch-icon-120.b3e6278d.png" sizes="120x120"/>
    <link data-react-helmet="true" rel="apple-touch-icon"
          href="https://static.zhihu.com/heifetz/assets/apple-touch-icon-76.7a750095.png" sizes="76x76"/>
    <link data-react-helmet="true" rel="apple-touch-icon"
          href="https://static.zhihu.com/heifetz/assets/apple-touch-icon-60.a4a761d4.png" sizes="60x60"/>
    <link rel="shortcut icon" type="image/x-icon" href="https://static.zhihu.com/static/favicon.ico"/>
    <link rel="search" type="application/opensearchdescription+xml" href="https://static.zhihu.com/static/search.xml"
          title="知乎"/>
    <link rel="dns-prefetch" href="//static.zhimg.com"/>
    <link rel="dns-prefetch" href="//pic1.zhimg.com"/>
    <link rel="dns-prefetch" href="//pic2.zhimg.com"/>
    <link rel="dns-prefetch" href="//pic3.zhimg.com"/>
    <link rel="dns-prefetch" href="//pic4.zhimg.com"/>
    <style>
        .u-safeAreaInset-top {
            height: constant(safe-area-inset-top) !important;
            height: env(safe-area-inset-top) !important;

        }

        .u-safeAreaInset-bottom {
            height: constant(safe-area-inset-bottom) !important;
            height: env(safe-area-inset-bottom) !important;

        }
    </style>
    <link href="/static/css/mobile.app.d4fdd83ee953cc4149c6.css" rel="stylesheet"/>
    <link href="/static/css/mobile.question-routes.2070739da704148593ba.css" rel="stylesheet"/>
    <script defer="" crossorigin="anonymous" src="/static/js/init.js"
            data-sentry-config="{&quot;dsn&quot;:&quot;https://2d8d764432cc4f6fb3bc78ab9528299d@crash2.zhihu.com/1224&quot;,&quot;sampleRate&quot;:0.1,&quot;release&quot;:&quot;627-0994dd7e&quot;,&quot;ignoreErrorNames&quot;:[&quot;NetworkError&quot;,&quot;SecurityError&quot;],&quot;ignoreErrors&quot;:[&quot;origin message&quot;,&quot;Network request failed&quot;,&quot;Loading chunk&quot;,&quot;这个系统不支持该功能。&quot;,&quot;Can&#x27;t find variable: webkit&quot;,&quot;Can&#x27;t find variable: $&quot;,&quot;内存不足&quot;,&quot;out of memory&quot;,&quot;DOM Exception 18&quot;,&quot;The operation is insecure&quot;,&quot;[object Event]&quot;,&quot;[object FileError]&quot;,&quot;[object DOMError]&quot;,&quot;[object Object]&quot;,&quot;拒绝访问。&quot;,&quot;Maximum call stack size exceeded&quot;,&quot;UploadError&quot;,&quot;无法 fetch&quot;,&quot;draft-js&quot;,&quot;缺少 JavaScript 对象&quot;,&quot;componentWillEnter&quot;,&quot;componentWillLeave&quot;,&quot;componentWillAppear&quot;,&quot;getInlineStyleAt&quot;,&quot;getCharacterList&quot;],&quot;whitelistUrls&quot;:[&quot;static.zhihu.com&quot;]}"></script>
    <script nonce="dc8e2b43-d521-4063-b9b2-8488eba77611">if (window.requestAnimationFrame) {
        window.requestAnimationFrame(function () {
            window.FIRST_ANIMATION_FRAME = Date.now();
        });
    }</script>
</head>
<body class="Body--Mobile Body--iOS Body--isAppleDevice Body--Safari">
<div id="root">
    <div class="App">
        <div class="LoadingBar"></div>
        <div>
            <header class="Sticky MobileAppHeader" style="line-height:50px">
                <div class="MobileAppHeader-inner"><a class="MobileAppHeader-logo"
                                                      href="//www.zhihu.com?utm_source=zhihu&amp;utm_campaign=guest_feed&amp;utm_content=guide"
                                                      aria-label="知乎">
                    <svg viewBox="0 0 200 91" fill="#0084FF" width="64" height="30">
                        <path d="M53.29 80.035l7.32.002 2.41 8.24 13.128-8.24h15.477v-67.98H53.29v67.978zm7.79-60.598h22.756v53.22h-8.73l-8.718 5.473-1.587-5.46-3.72-.012v-53.22zM46.818 43.162h-16.35c.545-8.467.687-16.12.687-22.955h15.987s.615-7.05-2.68-6.97H16.807c1.09-4.1 2.46-8.332 4.1-12.708 0 0-7.523 0-10.085 6.74-1.06 2.78-4.128 13.48-9.592 24.41 1.84-.2 7.927-.37 11.512-6.94.66-1.84.785-2.08 1.605-4.54h9.02c0 3.28-.374 20.9-.526 22.95H6.51c-3.67 0-4.863 7.38-4.863 7.38H22.14C20.765 66.11 13.385 79.24 0 89.62c6.403 1.828 12.784-.29 15.937-3.094 0 0 7.182-6.53 11.12-21.64L43.92 85.18s2.473-8.402-.388-12.496c-2.37-2.788-8.768-10.33-11.496-13.064l-4.57 3.627c1.363-4.368 2.183-8.61 2.46-12.71H49.19s-.027-7.38-2.372-7.38zm128.752-.502c6.51-8.013 14.054-18.302 14.054-18.302s-5.827-4.625-8.556-1.27c-1.874 2.548-11.51 15.063-11.51 15.063l6.012 4.51zm-46.903-18.462c-2.814-2.577-8.096.667-8.096.667s12.35 17.2 12.85 17.953l6.08-4.29s-8.02-11.752-10.83-14.33zM199.99 46.5c-6.18 0-40.908.292-40.953.292v-31.56c1.503 0 3.882-.124 7.14-.376 12.773-.753 21.914-1.25 27.427-1.504 0 0 3.817-8.496-.185-10.45-.96-.37-7.24 1.43-7.24 1.43s-51.63 5.153-72.61 5.64c.5 2.756 2.38 5.336 4.93 6.11 4.16 1.087 7.09.53 15.36.277 7.76-.5 13.65-.76 17.66-.76v31.19h-41.71s.88 6.97 7.97 7.14h33.73v22.16c0 4.364-3.498 6.87-7.65 6.6-4.4.034-8.15-.36-13.027-.566.623 1.24 1.977 4.496 6.035 6.824 3.087 1.502 5.054 2.053 8.13 2.053 9.237 0 14.27-5.4 14.027-14.16V53.93h38.235c3.026 0 2.72-7.432 2.72-7.432z"
                              fill-rule="evenodd"></path>
                    </svg>
                </a>
                    <div class="MobileAppHeader-actions"><label class="MobileAppHeader-searchBox Input-wrapper">
                        <svg class="Zi Zi--Search" fill="#999" viewBox="0 0 24 24" width="18" height="18">
                            <path d="M17.068 15.58a8.377 8.377 0 0 0 1.774-5.159 8.421 8.421 0 1 0-8.42 8.421 8.38 8.38 0 0 0 5.158-1.774l3.879 3.88c.957.573 2.131-.464 1.488-1.49l-3.879-3.878zm-6.647 1.157a6.323 6.323 0 0 1-6.316-6.316 6.323 6.323 0 0 1 6.316-6.316 6.323 6.323 0 0 1 6.316 6.316 6.323 6.323 0 0 1-6.316 6.316z"
                                  fill-rule="evenodd"></path>
                        </svg>
                        <input type="search" value="" class="Input" placeholder="搜索"/></label><a
                            class="MobileAppHeader-downloadLink"
                            href="https://www.zhihu.com/app?auto_download=true&amp;utm_source=zhihu&amp;utm_campaign=guest_feed&amp;utm_content=guide"
                            data-za-detail-view-name="下载 App">下载 App</a>
                        <div class="MobileAppHeader-navItem MobileAppHeader-moreIconWrapper"><span
                                class="MobileAppHeader-expandBtn"><svg class="Zi Zi--More" fill="currentColor"
                                                                       viewBox="0 0 24 24" width="24" height="24"><path
                                d="M3.5 5h16a1.5 1.5 0 0 1 0 3h-16a1.5 1.5 0 0 1 0-3zm0 6h16a1.5 1.5 0 0 1 0 3h-16a1.5 1.5 0 0 1 0-3zm0 6h16a1.5 1.5 0 0 1 0 3h-16a1.5 1.5 0 0 1 0-3z"
                                fill-rule="evenodd"></path></svg></span></div>
                    </div>
                </div>
                <div></div>
            </header>
        </div>
        ${content}
    </div>
</div>
<script src="/static/js/vendor.7b36fae46082fd30a0db.js"></script>
<script src="/static/js/mobile.app.5e5741eb387dfc6e3a32.js"></script>
<script src="/static/js/mobile.question-routes.f92ec9debaa908599946.js"></script>
</body>
</html>