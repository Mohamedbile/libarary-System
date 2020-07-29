Imports System.Data
Imports System.Data.SqlClient
Partial Class pages_Searching_Books
    Inherits System.Web.UI.Page

    Dim str As String = "Data Source=DESKTOP-BL8Q4F5;Initial Catalog=Libarary_System;Integrated Security=True;"
    Dim cn As New SqlConnection(str)
    Dim da As New SqlDataAdapter
    Dim ds As New Dataset
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        da.SelectCommand = New SqlCommand
        da.SelectCommand.CommandText = "Select * from Book"
        da.SelectCommand.Connection = cn
        da.Fill(ds, "Book")
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()


    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        da.SelectCommand.CommandText = "select * from Book where Book_Name like '" & id.Text & "%'"

        da.SelectCommand.Connection = cn
        ds.Tables(0).Clear()
        da.Fill(ds, "Book")
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub ddro_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddro.SelectedIndexChanged

    End Sub
End Class
