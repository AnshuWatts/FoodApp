Imports System.Data.SqlClient
Imports System.Security.Cryptography

Public Class WebForm7
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnAddTocart_Click(sender As Object, e As EventArgs) Handles btnAddTocart.Click
        If Session("UserName") Is Nothing Then
            Response.Redirect("Login.aspx")
        Else
            Dim user_id As String = Session("user_id").ToString()
            Dim p_id As String = Request.QueryString("pid")
            Dim p_quantity As String = txtQuantity.Text

            Dim ConnectionStr As String = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FoodApp;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
            Dim Connection As New SqlConnection(ConnectionStr)
            Connection.Open()
            Dim rqry As String
            rqry = "select * from productTab Where PID='" + p_id + "'"
            Dim rcmd As New SqlCommand(rqry, Connection)
            Dim rsrd As SqlDataReader
            rsrd = rcmd.ExecuteReader()

            Dim UID, OrderID, PID, Price, Quantity, Title, ImageUrl As String
            UID = user_id
            OrderID = UID + DateTime.Today.ToString("ydddmm")
            Quantity = p_quantity
            While rsrd.Read()
                PID = rsrd.GetValue(0).ToString()
                Title = rsrd.GetValue(1).ToString()
                Price = rsrd.GetValue(2).ToString()
                ImageUrl = rsrd.GetValue(3).ToString()
            End While

            Connection.Close()


            Connection.Open()

            Dim qry As String
            qry = "select * from cartTab Where PID='" + p_id + "'"
            Dim cmd As New SqlCommand(qry, Connection)
            Dim srd As SqlDataReader
            srd = cmd.ExecuteReader()
            If If((srd.Read()), If((srd.GetValue(0).ToString() = user_id), True, False), False) Then
                Quantity = (Convert.ToInt32(Quantity) + Convert.ToInt32(srd.GetValue(4).ToString())).ToString()
                Connection.Close()
                Connection.Open()
                Dim uqry As String = "UPDATE cartTab SET Quantity=@Quantity where PID='" + p_id + "'"
                Dim ucmd As New SqlCommand(uqry, Connection)
                ucmd.Parameters.Add("@Quantity", Quantity)
                ucmd.ExecuteNonQuery()
                Connection.Close()
            Else
                Connection.Close()
                Connection.Open()
                Dim wqry As String
                wqry = "insert into cartTab values(@UID,@OrderId,@PID,@Price,@Quantity,@Title,@Imageurl)"
                Dim wcmd As New SqlCommand(wqry, Connection)

                wcmd.Parameters.Add("@UID", UID)
                wcmd.Parameters.Add("@OrderId", OrderID)
                wcmd.Parameters.Add("@PID", PID)
                wcmd.Parameters.Add("@Price", Price)
                wcmd.Parameters.Add("@Quantity", Quantity)
                wcmd.Parameters.Add("@Title", Title)
                wcmd.Parameters.Add("@Imageurl", ImageUrl)
                wcmd.ExecuteNonQuery()

            End If

            Connection.Close()

            msg.Visible = True
        End If
    End Sub

End Class