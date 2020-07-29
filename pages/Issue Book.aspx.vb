Imports System.Data
Imports System.Data.SqlClient
Partial Class pages_Issue_Book
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=DESKTOP-BL8Q4F5;Initial Catalog=Libarary_System;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim da As New SqlDataAdapter
    Dim ds As New DataSet

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        cmd.Connection = cn
        cmd.CommandText = "select * from Issue_Book"

        cn.Open()
        dr = cmd.ExecuteReader()
        GridView1.DataSource = dr
        GridView1.DataBind()
        cn.Close()
    End Sub

  
    Protected Sub btnIssue_Click(sender As Object, e As EventArgs) Handles btnIssue.Click
        cmd.Connection = cn
        cmd.CommandText = "insert into Issue_Book values(@Custmaer_ID,@Custamer_Name,@Phone,@Book_ID,@Book_Name,@Publisher_Year,@Author,@Edition,@Price,@Due_Date)"
        cmd.Parameters.AddWithValue("@Custmaer_ID", txtid.Text)
        cmd.Parameters.AddWithValue("@Custamer_Name", txtcustamername.Text)
        cmd.Parameters.AddWithValue("@Phone", txtphone.Text)

        cmd.Parameters.AddWithValue("@Book_ID", txtbookid.Text)

        cmd.Parameters.AddWithValue("@Book_Name", txtname.Text)
        cmd.Parameters.AddWithValue("@Publisher_Year", txtyear.Text)
        cmd.Parameters.AddWithValue("@Author", txtAuthor.Text)
        cmd.Parameters.AddWithValue("@Edition", txtEditition.Text)
        cmd.Parameters.AddWithValue("@Price", txtprice.Text)
        cmd.Parameters.AddWithValue("@Due_Date", txtDate.Text)


        Try
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()



            Response.Write("Ma hubtaa Booka Aad Qaadenesid")




        Catch ex As Exception

            Response.Write("Mahadsanid Macmiil Kacmo Furan KU soo dhawoow")
        End Try






    End Sub

    Protected Sub btnGo_Click(sender As Object, e As EventArgs) Handles btnGo.Click
        getBookId()

        cmd.Connection = cn
        cmd.CommandText = "Select Custamer_Name,phone from Custamer where Custamer_ID = @Custamer_ID "
        cmd.Parameters.AddWithValue("@Custamer_ID", txtid.Text)
        cn.Open()
        dr = cmd.ExecuteReader


        If dr.Read Then
            txtcustamername.Text = dr.GetValue(0)
            txtphone.Text = dr.GetValue(1)
            txtDate.Text = dr.GetValue(1)
          

        End If

        cn.Close()

        Try
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()








        Catch ex As Exception

            Response.Write(ex.Message)
        End Try
    End Sub




    Public Function getBookId()
        cmd.Connection = cn
        cmd.CommandText = "Select Book_Name,Publisher_Year,Author,Edition,Price from Book where Book_ID = @Book_ID "
        cmd.Parameters.AddWithValue("@Book_ID", txtbookid.Text)

        cn.Open()
        dr = cmd.ExecuteReader


        If dr.Read Then

            txtname.Text = dr.GetValue(0)
            txtyear.Text = dr.GetValue(1)
            txtAuthor.Text = dr.GetValue(2)
            txtEditition.Text = dr.GetValue(3)
            txtprice.Text = dr.GetValue(4)




        End If

        cn.Close()
    End Function

    Protected Sub btnReturn_Click(sender As Object, e As EventArgs) Handles btnReturn.Click
        cmd.Connection = cn
        cmd.CommandText = "delete from Issue_Book where Book_ID= @Book_ID"
        cmd.Parameters.AddWithValue("@Book_ID", txtbookid.Text)
        Try
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()


            Response.Write(" Mahubtaa Book Aad Soo Celisay!!!!!!!!")


        Catch ex As Exception
            Response.Write(" Mahadsanid Macmiil")
        End Try
    End Sub



    Protected Sub go_Click(sender As Object, e As EventArgs) Handles go.Click
        cmd.Connection = cn
        cmd.CommandText = "Select Book_ID,Custamer_Name,Phone,Book_Name,Publisher_Year,Author,Edition,Price,Due_Date from Issue_Book where Custmaer_ID = @Custmaer_ID "
        cmd.Parameters.AddWithValue("@Custmaer_ID", txtid.Text)
        cn.Open()
        dr = cmd.ExecuteReader


        If dr.Read Then
            txtbookid.Text = dr.GetValue(0)
            txtcustamername.Text = dr.GetValue(1)
            txtphone.Text = dr.GetValue(2)
            txtname.Text = dr.GetValue(3)
            txtyear.Text = dr.GetValue(4)
            txtAuthor.Text = dr.GetValue(5)
            txtEditition.Text = dr.GetValue(6)
            txtprice.Text = dr.GetValue(7)
            txtDate.Text = dr.GetValue(8)

        End If

        cn.Close()

        Try
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()








        Catch ex As Exception

            Response.Write(ex.Message)
        End Try
    End Sub


End Class
