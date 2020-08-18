<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title>How to restore the expanded group rows state after a page is refreshed</title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="sds"
				KeyFieldName="OrderID" EnableRowsCache="False">
				<Columns>
					<dx:GridViewDataTextColumn FieldName="OrderID" ReadOnly="True" VisibleIndex="0">
						<EditFormSettings Visible="False" />
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="CustomerID" GroupIndex="0" SortIndex="0" SortOrder="Ascending"
						VisibleIndex="1">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="EmployeeID" GroupIndex="1" SortIndex="1" SortOrder="Ascending"
						VisibleIndex="2">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataDateColumn FieldName="OrderDate" VisibleIndex="3">
					</dx:GridViewDataDateColumn>
					<dx:GridViewDataDateColumn FieldName="RequiredDate" VisibleIndex="4">
					</dx:GridViewDataDateColumn>
					<dx:GridViewDataDateColumn FieldName="ShippedDate" VisibleIndex="5">
					</dx:GridViewDataDateColumn>
				</Columns>
			</dx:ASPxGridView>
			<asp:SqlDataSource ID="sds" runat="server" ConnectionString="Data Source=(local);Initial Catalog=Northwind;Integrated Security=True"
				ProviderName="System.Data.SqlClient" SelectCommand="SELECT [OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate] FROM [Orders]">
			</asp:SqlDataSource>
			<table>
				<tr>
					<td>
						<dx:ASPxButton ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click">
						</dx:ASPxButton>
					</td>
					<td>
						<dx:ASPxButton ID="btnLoad" runat="server" Text="Restore" OnClick="btnLoad_Click">
						</dx:ASPxButton>
					</td>
				</tr>
		</div>
	</form>
</body>
</html>
