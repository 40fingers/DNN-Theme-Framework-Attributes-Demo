<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<!-- #include file="Base/Header.ascx" -->

	<div class="SideMenu">
		<dnn:MENU MenuStyle="Menus/00.00-DDR-XSLT-UL-Classes" runat="server" NodeSelector="0,0,0"></dnn:MENU>
	</div>
		
	<!-- 40FINGERS DNN Demo Skin 
		Created by Timo Breumelhof, www.40fingers.net
		Everything that's used for this Demo is below this line.-->
		
	<!-- START -->

	<!-- #include file="Includes/Intro.ascx" -->
	
            <h2>
                Test</h2>
            <div>
                Portal URL / Alias = <span class="Token">PortalSettings.PortalAlias.HTTPAlias</span>
                <div class="Example">
                    <%=PortalSettings.PortalAlias.HTTPAlias%></div>
            </div>
			
			<h2>
                Test 2</h2>
            <div>
                
                <div class="Example">

            </div>
            
			
	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


