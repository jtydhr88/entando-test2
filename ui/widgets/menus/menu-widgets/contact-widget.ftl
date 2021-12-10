<#assign wp=JspTaglibs["/aps-core"]>
<script src="<@wp.resourceURL />user-management/static/js/2.6e4c2afb.chunk.js"></script>
<script src="<@wp.resourceURL />user-management/static/js/main.b7751993.chunk.js"></script>
<script src="<@wp.resourceURL />user-management/static/js/runtime-main.55091dc2.js"></script>

<link href="<@wp.resourceURL />user-management/static/css/2.598ea7c3.chunk.css" rel="stylesheet">

<#-- entando_resource_injection_point -->

<@wp.info key="currentLang" var="currentLangVar" />

<dw-contact-widget
   locale="${currentLangVar}"
   service-url="/news-content"
></dw-contact-widget>


