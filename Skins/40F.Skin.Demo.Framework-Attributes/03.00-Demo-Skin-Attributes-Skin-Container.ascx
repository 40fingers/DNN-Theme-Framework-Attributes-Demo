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
                Skin and Container</h2>
            <div>
                Page skin (full path) = <span class="Token">PortalSettings.ActiveTab.SkinSrc</span>
                <div class="Example">
                    <%=PortalSettings.ActiveTab.SkinSrc%>
                </div>
            </div>
            <div>
                Page container (full path) = <span class="Token">PortalSettings.ActiveTab.ContainerSrc</span>
                <div class="Example">
                    <%=PortalSettings.ActiveTab.ContainerSrc%>
                </div>
            </div>
			
	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


