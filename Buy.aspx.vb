Imports System.Collections.ObjectModel
Imports System.Data.SqlClient
Imports System.Security.Cryptography

Public Class WebForm10
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnConfirm_Click(sender As Object, e As EventArgs) Handles btnConfirm.Click
        If txtAddress.Text = "" Then
            msg.CssClass = "error"
            msg.Text = "Enter Your Address..."
        Else
            If txtPhone.Text = "" Then
                msg.CssClass = "error"
                msg.Text = "Enter Your Contact..."
            Else
                Dim user_id As String = Session("user_id").ToString()
                Dim address As String = txtAddress.Text
                Dim pay As String = txtPayment.Text
                Dim contact As String = txtPhone.Text
                Dim status As String
                status = "placed"
                Dim data(4, 0) As String
                Dim i As Integer = -1
                Dim count As Integer = 0

                Dim ConnectionStr As String = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FoodApp;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
                Dim Connection As New SqlConnection(ConnectionStr)
                Connection.Open()
                Dim qry As String
                qry = "select * from cartTab Where UID='" + user_id + "'"
                Dim cmd As New SqlCommand(qry, Connection)
                Dim srd As SqlDataReader
                srd = cmd.ExecuteReader()

                While srd.Read()
                    i = i + 1
                    ReDim Preserve data(4, i)
                    data(0, i) = srd.GetValue(2).ToString()
                    data(1, i) = srd.GetValue(3).ToString()
                    data(2, i) = srd.GetValue(4).ToString()
                    data(3, i) = srd.GetValue(5).ToString()
                    data(4, i) = srd.GetValue(6).ToString()
                    count += 1
                End While
                Connection.Close()
                If count = 0 Then
                    msg.Text = "Add Something to Cart"
                Else
                    Dim x As Integer = 0
                    For i = 0 To 4
                        i = i
                    Next
                    For i = 0 To count - 1
                        Connection.Open()
                        Dim wqry As String
                        wqry = "insert into buyTab values(@UID,@PID,@Title,@Price,@Quantity,@ImageUrl,@Address,@Contact,@OrderStatus,@PaymentType)"
                        Dim wcmd As New SqlCommand(wqry, Connection)
                        wcmd.Parameters.Add("@UID", user_id)
                        wcmd.Parameters.Add("@PID", data(0, i))
                        wcmd.Parameters.Add("@Title", data(3, i))
                        wcmd.Parameters.Add("@Price", data(1, i))
                        wcmd.Parameters.Add("@Quantity", data(2, i))
                        wcmd.Parameters.Add("@ImageUrl", data(4, i))
                        wcmd.Parameters.Add("@Address", address)
                        wcmd.Parameters.Add("@Contact", contact)
                        wcmd.Parameters.Add("@OrderStatus", status)
                        wcmd.Parameters.Add("@PaymentType", pay)
                        wcmd.ExecuteNonQuery()
                        Connection.Close()
                    Next
                    Connection.Open()
                    Dim dqry As String
                    dqry = "DELETE from cartTab  where UID='" + user_id + "' "
                    Dim dcmd As New SqlCommand(dqry, Connection)
                    dcmd.ExecuteNonQuery()
                    Connection.Close()
                    msg.CssClass = "msg"
                    msg.Text = "Order Placed"
                    Response.Redirect("Account.aspx")
                End If
            End If
        End If
    End Sub
End Class