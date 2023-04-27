Imports System.Data.SqlClient

Public Class WebForm8
    Inherits System.Web.UI.Page
    Dim ConnectionStr As String = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FoodApp;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
    Dim Connection As New SqlConnection(ConnectionStr)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user_id As String = Session("user_id").ToString()
        Dim p_id As String = Request.QueryString("pid")
        Connection.Open()

        Dim qry As String
        qry = "select * from cartTab Where UID='" + user_id + "' and PID='" + p_id + "'"
        Dim cmd As New SqlCommand(qry, Connection)
        Dim srd As SqlDataReader
        srd = cmd.ExecuteReader()
        While srd.Read()
            Image1.ImageUrl = srd.GetValue(6).ToString()
            txtTitle.Text = srd.GetValue(5).ToString()
            txtPrice.Text = srd.GetValue(3).ToString()
            txtTotalPrice.Text = ((Convert.ToInt32(srd.GetValue(3).ToString())) * (Convert.ToInt32(srd.GetValue(4).ToString()))).ToString()
        End While
        Connection.Close()
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim user_id As String = Session("user_id").ToString()
        Dim p_id As String = Request.QueryString("pid")
        Dim Quantity As String
        Quantity = txtQty.Text
        Connection.Open()
        Dim qry As String
        qry = "UPDATE cartTab SET Quantity=@Quantity where UID='" + user_id + "' and PID='" + p_id + "'"
        Dim cmd As New SqlCommand(qry, Connection)
        cmd.Parameters.Add("@Quantity", Quantity)
        cmd.ExecuteNonQuery()
        Connection.Close()
        Response.Redirect("Cart.aspx")
    End Sub

    Protected Sub btnRemove_Click(sender As Object, e As EventArgs) Handles btnRemove.Click
        Dim user_id As String = Session("user_id").ToString()
        Dim p_id As String = Request.QueryString("pid")
        Connection.Open()
        Dim qry As String
        qry = "DELETE from cartTab  where UID='" + user_id + "' and PID='" + p_id + "'"
        Dim cmd As New SqlCommand(qry, Connection)
        cmd.ExecuteNonQuery()
        Connection.Close()
        Response.Redirect("Cart.aspx")
    End Sub

    Protected Sub txtQty_TextChanged(sender As Object, e As EventArgs) Handles txtQty.TextChanged

    End Sub
End Class