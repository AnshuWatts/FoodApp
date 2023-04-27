Imports System.Data.SqlClient

Public Class WebForm9
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("UserName") Is Nothing Then
            Response.Redirect("Login.aspx")
        Else
            Dim user_id As String = Session("user_id").ToString()

            Dim ConnectionStr As String = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FoodApp;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
            Dim Connection As New SqlConnection(ConnectionStr)
            Connection.Open()

            Dim qry As String
            qry = "select * from cartTab Where UID='" + user_id + "'"
            Dim cmd As New SqlCommand(qry, Connection)
            Dim srd As SqlDataReader
            srd = cmd.ExecuteReader()

            Dim tPrice As String = "0"
            While srd.Read()
                tPrice = (Convert.ToInt32(tPrice) + (Convert.ToInt32(srd.GetValue(3).ToString())) * (Convert.ToInt32(srd.GetValue(4).ToString()))).ToString()
            End While

            txtTotalPrice.Text = tPrice
        End If
    End Sub

End Class