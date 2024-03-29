<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>

<div class="cContainer cBase">
		<header class="Container ClearAfter">
			<div class="cIcon">
				<dnn:ICON runat="server" id="dnnICON"  />
			</div>
			<h2 class="cTitle">
				<dnn:TITLE runat="server" CssClass="Title" id="dnnTitle"  />
			</h2>
		</header>
		<section class="Container ClearAfter">
			<div id="ContentPane" runat="server" class="Normal cContentpane"></div>
			<h4>
                Container attributes
			</h4>
            <p>
               Container ID:  <%=ModuleControl.ModuleContext.ModuleId %>
            </p>
            <p>
               Container Icon Path:  <%=ModuleControl.ModuleContext.Configuration.IconFile %>
            </p>
            <p>
              Module Title:  <%=ModuleControl.ModuleContext.Configuration.ModuleTitle %>
            </p>
		</section>
</div>


