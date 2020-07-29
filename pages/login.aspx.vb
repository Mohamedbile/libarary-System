Imports System.Data.SqlClient
Partial Class pages_login
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=DESKTOP-BL8Q4F5;Initial Catalog=Libarary_System;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cmd.Connection = cn
        cmd.CommandText = "Select UserName,Password from login where  UserName=@User and Password=@Pass"

        cmd.Parameters.AddWithValue("@User", txtuser.Text)
        cmd.Parameters.AddWithValue("@Pass", txtpass.Text)
        cn.Open()

        dr = cmd.ExecuteReader
        If dr.Read Then
            Response.Redirect("Home.aspx")
        Else
            MsgBox("invalid uesr name")

        End If

        cn.Close()
    End Sub
End Class
