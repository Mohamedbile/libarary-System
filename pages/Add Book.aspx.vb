Imports System.Data
Imports System.Data.SqlClient
Partial Class pages_Add_Book
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=DESKTOP-BL8Q4F5;Initial Catalog=Libarary_System;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim da As New SqlDataAdapter
    Dim ds As New DataSet

    Protected Sub btninsert_Click(sender As Object, e As EventArgs) Handles btninsert.Click
        cmd.Connection = cn
        cmd.CommandText = "insert into Book values(@Book_ID,@Book_Name,@Publisher_Year,@Author,@Edition,@Price)"
        cmd.Parameters.AddWithValue("@Book_ID", txtid.Text)
        cmd.Parameters.AddWithValue("@Book_Name", txtname.Text)
        cmd.Parameters.AddWithValue("@Publisher_Year", txtpublisher.Text)
        cmd.Parameters.AddWithValue("@Author", txtAuthor.Text)
        cmd.Parameters.AddWithValue("@Edition", txtEdition.Text)
        cmd.Parameters.AddWithValue("@Price", txtPrice.Text)

        Try
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()


            Response.Write(" ma hubtaa datada aad xareenesid !!")

        Catch ex As Exception

            Response.Write("mahadsanid waa laguu xareeyay")
        End Try



    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        cmd.Connection = cn
        cmd.CommandText = "select * from Book"

        cn.Open()
        dr = cmd.ExecuteReader()
        GridView1.DataSource = dr
        GridView1.DataBind()
        cn.Close()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim row As GridViewRow = GridView1.SelectedRow
        txtid.Text = row.Cells(1).Text
        txtname.Text = row.Cells(2).Text
        txtpublisher.Text = row.Cells(3).Text
        txtAuthor.Text = row.Cells(4).Text
        txtEdition.Text = row.Cells(5).Text
        txtPrice.Text = row.Cells(6).Text
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        cmd.Parameters.Clear()
        cmd.Connection = cn
        cmd.CommandText = "UPDATE Book set Book_Name=@Book_Name,Publisher_Year=@Publisher_Year,Author=@Author,Edition=@Edition,Price=@Price WHERE Book_ID=@Book_ID"
        cmd.Parameters.AddWithValue("@Book_ID", txtid.Text)
        cmd.Parameters.AddWithValue("@Book_Name", txtname.Text)
        cmd.Parameters.AddWithValue("@Publisher_Year", txtpublisher.Text)
        cmd.Parameters.AddWithValue("@Author", txtAuthor.Text)
        cmd.Parameters.AddWithValue("@Edition", txtEdition.Text)
        cmd.Parameters.AddWithValue("@Price", txtPrice.Text)
        Try
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()

            Response.Write("ma hubtaa in Updateka aad sameenesid!!!!")

        Catch ex As Exception
            Response.Write(" waa laguu uptade kareeyay Mahadsanid")
        End Try
    End Sub


    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        cmd.Parameters.Clear()
        cmd.Connection = cn
        cmd.CommandText = "delete from Book where Book_ID=@Book_ID"
        cmd.Parameters.AddWithValue("@Book_ID", txtid.Text)
        Try
            cn.Open()

            cmd.ExecuteNonQuery()
            cn.Close()

            Response.Write(" Mahubtaa Datada aad deleteso!!!!!!!!")


        Catch ex As Exception
            Response.Write(" Waa la deletay")
        End Try
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click

    End Sub

    Protected Sub txtpublisher_TextChanged(sender As Object, e As EventArgs) Handles txtpublisher.TextChanged

    End Sub
End Class
