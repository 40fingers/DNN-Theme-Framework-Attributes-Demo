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
                Portal Attributes</h2>
            <div>
                Portal URL / Alias = <span class="Token">PortalSettings.PortalAlias.HTTPAlias</span>
                <div class="Example">
                    <%=PortalSettings.PortalAlias.HTTPAlias%></div>
            </div>
            <div>
                Portal ID = <span class="Token">PortalSettings.PortalAlias.PortalID</span>
                <div class="Example">
                    <%=PortalSettings.PortalAlias.PortalID%></div>
            </div>
            <div>
                Portal Description = <span class="Token">PortalSettings.Description</span>
                <div class="Example">
                    <%=PortalSettings.Description%></div>
            </div>
            <div>
                Portal Namen = <span class="Token">PortalSettings.PortalName</span>
                <div class="Example">
                    <%=PortalSettings.PortalName%></div>
            </div>
            <div>
                Portal Admin Email address = <span class="Token">PortalSettings.Email</span>
                <div class="Example">
                    <%=PortalSettings.Email%></div>
            </div>
            <div>
                Portal home folder = <span class="Token">PortalSettings.HomeDirectory</span>
                <div class="Example">
                    <%=PortalSettings.HomeDirectory%></div>
            </div>
            <div>
                Portal Logo File = <span class="Token">PortalSettings.LogoFile</span>
                <div class="Example">
                    <%=PortalSettings.LogoFile%></div>
            </div>
            <div>
                Link to Home page = <span class="Token">NavigateUrl(PortalSettings.HomeTabId)</span>
                <div class="Example">
                    <%=NavigateUrl(PortalSettings.HomeTabId)%></div>
            </div>
            <div>
                Link to Splash page = <span class="Token">NavigateURL(PortalSettings.SplashTabId)</span>
                <div class="Example">
                    <%=NavigateURL(PortalSettings.SplashTabId)%></div>
            </div>
            <div>
                Link to Host page = <span class="Token">NavigateURL(PortalSettings.SuperTabId)</span>
                <div class="Example">
                    <%=NavigateURL(PortalSettings.SuperTabId)%></div>
            </div>
            <div>
                Link to Admin page = <span class="Token">NavigateURL(PortalSettings.AdminTabId)</span>
                <div class="Example">
                    <%=NavigateURL(PortalSettings.AdminTabId)%></div>
            </div>
            <h3>
                Usage Examples
            </h3>
            <div>
                Show the logo of this portal
                <div class="Example">
                    <img src="<%=PortalSettings.HomeDirectory & PortalSettings.LogoFile%>" alt="logo" /></div>
            </div>
			<div>
                Logo as background image
                <div class="Example">
                    <div style="background:url('<%=PortalSettings.HomeDirectory & PortalSettings.LogoFile%>');height:86px;"></div></div>
            </div>
            <div>
                Show the Portal Admins Email address
                <div class="Example">
                    <a href="mailto:<%=PortalSettings.Email%>">Email Webmaster Link</a></div>
            </div>
            <div>
                Show link to the Home page
                <div class="Example">
                    <a href="<%=NavigateUrl(PortalSettings.HomeTabId)%>">GoTo Home Link</a>
                </div>
            </div>
			
	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


