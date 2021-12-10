<#assign wp=JspTaglibs["/aps-core"]>
<script src="<@wp.resourceURL />user-management/static/js/2.6e4c2afb.chunk.js"></script>
<script src="<@wp.resourceURL />user-management/static/js/main.b7751993.chunk.js"></script>
<script src="<@wp.resourceURL />user-management/static/js/runtime-main.55091dc2.js"></script>

<link href="<@wp.resourceURL />user-management/static/css/2.598ea7c3.chunk.css" rel="stylesheet">

<#-- entando_resource_injection_point -->

<@wp.info key="langs" var="langsVar" />
<@wp.info key="currentLang" var="currentLangVar" />

<#assign langstrs = [] />
<#list langsVar as curLangVar>
  <#assign langurl><@wp.url lang="${curLangVar.code}" paramRepeat=true /></#assign>
  <#assign langdesc><@wp.i18n key="LANG_${curLangVar.code?upper_case}" /></#assign>
  <#assign langstr = ["{\"code\": \"" + curLangVar.code + "\", \"descr\": \"" + langdesc + "\", \"url\": \""+ langurl +"\"}"]  />
  <#assign langstrs = langstrs + langstr />
</#list>
<#assign lang_json_string = langstrs?join(", ") />

<dw-choose-language-widget
  current-lang="${currentLangVar}"
  languages="[${lang_json_string?html}]"
></dw-choose-language-widget>

