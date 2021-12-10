<#assign wp=JspTaglibs["/aps-core"]>
<script src="<@wp.resourceURL />user-management/static/js/2.6e4c2afb.chunk.js"></script>
<script src="<@wp.resourceURL />user-management/static/js/main.b7751993.chunk.js"></script>
<script src="<@wp.resourceURL />user-management/static/js/runtime-main.55091dc2.js"></script>

<link href="<@wp.resourceURL />user-management/static/css/2.598ea7c3.chunk.css" rel="stylesheet">

<#-- entando_resource_injection_point -->

<@wp.info key="currentLang" var="currentLangVar" />

<#assign sessionUser = "" />
<#assign userDisplayName = "" />
<#if (Session.currentUser.username != "guest") >
   <#assign sessionUser = Session.currentUser.username />
   <#if (Session.currentUser.profile??) && (Session.currentUser.profile.displayName??)>
      <#assign userDisplayName = Session.currentUser.profile.displayName />
   <#else>
      <#assign userDisplayName = Session.currentUser />
   </#if>
</#if>

<dw-account-widget
   admin-url="<@wp.info key="systemParam" paramName="appBuilderBaseURL" />"
   user-display-name="${userDisplayName}"
   redirect-url="<@wp.url />"
></dw-account-widget>


