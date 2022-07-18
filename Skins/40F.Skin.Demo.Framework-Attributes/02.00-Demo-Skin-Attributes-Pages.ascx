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
                Page Attributes</h2>
            <div>
                Page Description = <span class="Token">PortalSettings.ActiveTab.Description</span>
                <div class="Example">
                    <%=PortalSettings.ActiveTab.Description%></div>
            </div>
            <div>
                Page Link = <span class="Token">PortalSettings.ActiveTab.FullUrl</span>
                <div class="Example">
                    <%=PortalSettings.ActiveTab.FullUrl%></div>
            </div>
            <div>
                Page Name = <span class="Token">PortalSettings.ActiveTab.TabName</span>
                <div class="Example">
                    <%=PortalSettings.ActiveTab.TabName%></div>
            </div>
            <div>
                Page Title = <span class="Token">PortalSettings.ActiveTab.Title</span>
                <div class="Example">
                    <%=PortalSettings.ActiveTab.Title%></div>
            </div>
            <div>
                Page Keywords = <span class="Token">PortalSettings.ActiveTab.KeyWords</span>
                <div class="Example">
                    <%=PortalSettings.ActiveTab.KeyWords%></div>
            </div>
            <div>
                Page TabId = <span class="Token">PortalSettings.ActiveTab.TabID</span>
                <div class="Example">
                    <%=PortalSettings.ActiveTab.TabID%></div>
            </div>
            <div>
                Page Level = <span class="Token">PortalSettings.ActiveTab.Level</span>
                <div class="Example">
                    <%=PortalSettings.ActiveTab.Level%></div>
            </div>
            <div>
                Page Icon = <span class="Token">PortalSettings.ActiveTab.IconFile</span>
                <div class="Example">
                    <%=PortalSettings.ActiveTab.IconFile%></div>
            </div>
			
            <div>
                Page Icon Large = <span class="Token">PortalSettings.ActiveTab.IconFileLarge</span>
                <div class="Example">
                    <%=PortalSettings.ActiveTab.IconFileLarge%>
				</div>
				
				<div class="Usage">
				<img src='<%=IIF(PortalSettings.ActiveTab.IconFileLarge > "", PortalSettings.ActiveTab.IconFileLarge, PortalSettings.HomeDirectory & PortalSettings.LogoFile)%>' />
				</div>
            </div>
			
			
            <h2>
                Page Has Child Pages</h2>
            <div class="Intro">
                PortalSettings.ActiveTab.HasChildren returns True if the current page has Children.
				
			</div>
            <div>
                
                <div class="Example">
                    This page has Children = <%=PortalSettings.ActiveTab.HasChildren.ToString()%> 
				</div>
            </div>
			
            
            <h2>
                Breadcrumbs</h2>
            <div class="Intro">
                PortalSettings.ActiveTab.BreadCrumbs(x) returns the page info (TabInfo) on level x.<br />
                The problem is that if you ask for a non exisiting page you get an error, so you need an extra check</div>
            <div>
                Root page Name = <span class="Token">If PortalSettings.ActiveTab.Level > (0) Then Response.Write(PortalSettings.ActiveTab.BreadCrumbs(0).TabName)</span>
                <div class="Example">
                    <%If PortalSettings.ActiveTab.Level > (0) Then Response.Write(PortalSettings.ActiveTab.BreadCrumbs(0).TabName)%></div>
            </div>
            <div class="Examples">
                <h3>
                    Usage Examples</h3>
                <h1>
                    <%= PortalSettings.ActiveTab.Title%></h1>
                <div class="Example">
                    <a href="<%If PortalSettings.ActiveTab.Level > (0) Then Response.Write(PortalSettings.ActiveTab.BreadCrumbs(0).FullUrl)%>">GoTo Root Page</a></div>
                <div class="Example">
                    <a href="<%If PortalSettings.ActiveTab.Level > (0) Then Response.Write(PortalSettings.ActiveTab.BreadCrumbs(PortalSettings.ActiveTab.Level-1).FullUrl)%>">GoTo Parent Page</a>
                </div>
            </div>
			
	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


