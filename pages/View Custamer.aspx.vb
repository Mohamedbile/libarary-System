Imports System.Data
Imports System.Data.SqlClient
Partial Class pages_View_Custamer
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=DESKTOP-BL8Q4F5;Initial Catalog=Libarary_System;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim da As New SqlDataAdapter
    Dim ds As New DataSet

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        cmd.Connection = cn
        cmd.CommandText = "select *from Custamer"
        cn.Open()
        dr = cmd.ExecuteReader
        GridView1.DataSource = dr
        GridView1.DataBind()
        cn.Close()
    End Sub
End Class
