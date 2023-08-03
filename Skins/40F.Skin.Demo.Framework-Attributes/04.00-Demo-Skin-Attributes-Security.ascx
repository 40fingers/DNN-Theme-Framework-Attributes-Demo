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
	
 		<div class="FrameworkAttributes">
            <h2>Security</h2>

            <div class="Item">
                <h4>Is the visitor logged in?</h4>
                <div class="Token">IIf(Request.IsAuthenticated, "LoggedIn", "NotLoggedIn")</div>
                <div class="Example"><%=IIf(Request.IsAuthenticated, "LoggedIn", "NotLoggedIn")%></div>
            </div>

            <h2>User</h2>
            <div class="Item">
                <h4>Currently logged in UserName</h4>
                <div class="Token">UserController.GetCurrentUserInfo().Username</div>
                <div class="Example"><%= UserController.GetCurrentUserInfo().Username %></div>
            </div>

            <div class="Item">
                <h4>Currently logged in User Display Name</h4>
                <div class="Token">UserController.GetCurrentUserInfo().Displayname</div>
                <div class="Example"><%=UserController.GetCurrentUserInfo().Displayname%></div>
            </div>

            <div class="Item">
                <h4>Portal Profile Page</h4>
                <div class="Token">NavigateURL(PortalSettings.UserTabId)</div>
                <div class="Example"><%=NavigateURL(PortalSettings.UserTabId)%></div>
            </div>

            <div class="Item">
                <h4>Link to User Account Page</h4>
                <div class="Token">Dim objUserInfo2 As UserInfo = UserController.GetCurrentUserInfo
					If objUserInfo2.UserID <> -1 Then
						Dim sMyAccountLink = NavigateURL(PortalSettings.UserTabId, "Profile", "userId=" & UserController.GetCurrentUserInfo().UserID, "pageno=1")
						Response.Write(String.Format("<a href='{0}'>Your Account</a>", sMyAccountLink))
					End If</div>
                <div class="Example">
                    <%                  
                    Dim objUserInfo2 As UserInfo = UserController.GetCurrentUserInfo
                    If objUserInfo2.UserID <> -1 Then
                        Dim sMyAccountLink = NavigateURL(PortalSettings.UserTabId, "Profile", "userId=" & UserController.GetCurrentUserInfo().UserID, "pageno=1")
                        Response.Write(String.Format("<a href='{0}'>Your Account</a>", sMyAccountLink))
                    End If
                    %>
                    </div>
            </div>

            <div class="Item">
                <h4>Current User Creation Date</h4>
                <div class="Token">UserController.GetCurrentUserInfo().CreatedOnDate</div>
                <div class="Example"><%=UserController.GetCurrentUserInfo().CreatedOnDate%></div>
            </div>

            <div class="Item">
                <h4>Current User Email</h4>
                <div class="Token">UserController.GetCurrentUserInfo().Email</div>
                <div class="Example"><%=UserController.GetCurrentUserInfo().Email%></div>
            </div>

            <div class="Item">
                <h4>Current User FirstName</h4>
                <div class="Token">UserController.GetCurrentUserInfo().FirstName</div>
                <div class="Example"><%=UserController.GetCurrentUserInfo().FirstName%></div>
            </div>

            <div class="Item">
                <h4>Current User LastName</h4>
                <div class="Token">UserController.GetCurrentUserInfo().LastName</div>
                <div class="Example"><%=UserController.GetCurrentUserInfo().LastName%>></div>
            </div>

            <div class="Item">
                <h4>Current User Id</h4>
                <div class="Token">UserController.GetCurrentUserInfo().UserID</div>
                <div class="Example"><%=UserController.GetCurrentUserInfo().UserID%></div>
            </div>


            <div class="Item">
                <h4>Current User Profile Properties</h4>
                <div class="Token">UserController.GetCurrentUserInfo().Profile.GetPropertyValue("Property")</div>
                   
                <div class="Example">
                     FirstName: <% = UserController.GetCurrentUserInfo().Profile.GetPropertyValue("FirstName")%><br />
                    LastName: <% = UserController.GetCurrentUserInfo().Profile.GetPropertyValue("LastName")%><br />
                    Country: <% = UserController.GetCurrentUserInfo().Profile.GetPropertyValue("Country")%></div>
            </div>

            <div class="Item">
                <h4>Current User PhotoUrl</h4>
                <div class="Token">UserController.GetCurrentUserInfo().PhotoURL</div>
                <div class="Example"><%=UserController.GetCurrentUserInfo().Profile.PhotoURL%></div>
                <div class="Token">&lt;img src=&quot;&lt;%=UserController.GetCurrentUserInfo().Profile.PhotoURL%&gt;&quot; /&gt;</div>
                <div class="Example"><img src="<%=UserController.GetCurrentUserInfo().Profile.PhotoURL%>" /></div>
            </div>

            <div class="Item">
                <h4>Is Current Administrator?</h4>
                
                 <div class="Token">DotNetNuke.Security.PortalSecurity.IsInRoles(PortalSettings.AdministratorRoleName)</div>
				  <div class="Example"><%=DotNetNuke.Security.PortalSecurity.IsInRoles(PortalSettings.AdministratorRoleName)%></div>
				  <div class="Token">You are &lt;%If NOT DotNetNuke.Security.PortalSecurity.IsInRoles(PortalSettings.AdministratorRoleName)%&gt;NOT&lt;%End If%&gt; an Administrator</div>
                <div class="Example">You are <%If NOT DotNetNuke.Security.PortalSecurity.IsInRoles(PortalSettings.AdministratorRoleName)%>NOT<%End If%> an Administrator</div>
            </div>
			
			
            <div class="Item">
                <h4>Is Current User SuperUser / Host</h4>
                <div class="Token">UserController.GetCurrentUserInfo().IsSuperUser</div>
                <div class="Example"><%=UserController.GetCurrentUserInfo().IsSuperUser%></div>
                 <div class="Token">You are &lt;%If NOT UserController.GetCurrentUserInfo().IsSuperUser%&gt;NOT&lt;%End If%&gt; a Superuser</div>
                <div class="Example">You are <%If NOT UserController.GetCurrentUserInfo().IsSuperUser%>NOT<%End If%> a Superuser</div>
            </div>

            <div class="Item">
                <h4>User is a member of Roles..</h4>
                <div class="Token">
                Dim myRoles as String = "TestRole1;TestRole2;TestRole3"
                If DotNetNuke.Security.PortalSecurity.IsInRoles(PortalSettings.AdministratorRoleName) Then
                ...
                End If
                </div>
                <div class="Example">
                <% Dim myRoles as String = "TestRole1;TestRole2;TestRole3"
                 If DotNetNuke.Security.PortalSecurity.IsInRoles(myRoles) Then
                %>
                    You are a member of Roles: <%=myRoles%>
                <% Else %>
                    You are NOT a member of Roles: <%=myRoles%>
                <%End If%>
            </div>
            </div>
			
        </div>
			
	
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


