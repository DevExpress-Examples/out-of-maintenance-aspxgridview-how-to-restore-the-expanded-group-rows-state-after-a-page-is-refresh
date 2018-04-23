Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports System.Collections.Generic

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As EventArgs)
		Dim states As List(Of Integer) = New List(Of Integer)()

		For i As Int32 = 0 To grid.VisibleRowCount - 1
			If grid.IsGroupRow(i) AndAlso grid.IsRowExpanded(i) Then
				states.Add(i)
			End If
		Next i
		Session("expandedRows") = states
	End Sub
	Protected Sub btnLoad_Click(ByVal sender As Object, ByVal e As EventArgs)
		Dim states As List(Of Integer) = TryCast(Session("expandedRows"), List(Of Integer))
		If states Is Nothing Then
			Return
		End If

		grid.CollapseAll()
		For Each index As Integer In states
			grid.ExpandRow(index)
		Next index
	End Sub
End Class
