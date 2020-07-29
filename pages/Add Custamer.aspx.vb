Imports System.Data
Imports System.Data.SqlClient
Partial Class pages_Add_Custamer
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=DESKTOP-BL8Q4F5;Initial Catalog=Libarary_System;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim da As New SqlDataAdapter
    Dim ds As New DataSet

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        cmd.Connection = cn
        cmd.CommandText = "select * from Custamer"

        cn.Open()
        dr = cmd.ExecuteReader()
        GridView1.DataSource = dr
        GridView1.DataBind()
        cn.Close()
    End Sub

    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        cmd.Connection = cn
        cmd.CommandText = "insert into Custamer values(@Custamer_ID,@Custamer_Name,@Phone,@Gender,@City,@Year)"
        cmd.Parameters.AddWithValue("@Custamer_ID", txtid.Text)
        cmd.Parameters.AddWithValue("@Custamer_Name", txtName.Text)
        cmd.Parameters.AddWithValue("@Phone", txtphone.Text)
        cmd.Parameters.AddWithValue("@Gender", DropDown.Text)
        cmd.Parameters.AddWithValue("@City", txtCity.Text)
        cmd.Parameters.AddWithValue("@Year", txtYear.Text)

        Try
            cn.Open()
            cmd.ExecuteNonQuery()
            cn.Close()


            Response.Write(" ma hubtaa datada aad xareenesid !!")

        Catch ex As Exception

            Response.Write("mahadsanid waa laguu xareeyay")
        End Try




    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        cmd.Parameters.Clear()
        cmd.Connection = cn
        cmd.CommandText = "UPDATE Custamer set Custamer_Name=@Custamer_Name,Phone=@Phone,Gender=@Gender,City=@City,Year=@Year WHERE Custamer_ID=@Custamer_ID"
        cmd.Parameters.AddWithValue("@Custamer_ID", txtid.Text)
        cmd.Parameters.AddWithValue("@Custamer_Name", txtName.Text)
        cmd.Parameters.AddWithValue("@Phone", txtphone.Text)
        cmd.Parameters.AddWithValue("@Gender", DropDown.Text)
        cmd.Parameters.AddWithValue("@City", txtCity.Text)
        cmd.Parameters.AddWithValue("@Year", txtYear.Text)
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
        cmd.CommandText = "delete from Custamer where Custamer_ID=@Custamer_ID"
        cmd.Parameters.AddWithValue("@Custamer_ID", txtid.Text)
        Try
            cn.Open()

            cmd.ExecuteNonQuery()
            cn.Close()

            Response.Write(" Mahubtaa Datada aad deleteso!!!!!!!!")


        Catch ex As Exception
            Response.Write(" Waa la deletay")
        End Try
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim row As GridViewRow = GridView1.SelectedRow
        txtid.Text = row.Cells(1).Text
        txtName.Text = row.Cells(2).Text
        txtYear.Text = row.Cells(3).Text
        txtphone.Text = row.Cells(4).Text
        txtCity.Text = row.Cells(5).Text
        DropDown.Text = row.Cells(6).Text
    End Sub
End Class
