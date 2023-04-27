Imports System.Collections.ObjectModel
Imports System.Data.SqlClient

Public Class WebForm11
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user_id As String = Session("user_id").ToString()
        Dim ConnectionStr As String
        ConnectionStr = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FoodApp;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"

        Dim Connection As New SqlConnection(ConnectionStr)
        Connection.Open()
        Dim qry As String
        qry = "select * From buyTab where UID='" + user_id + "'"
        Dim cmd As New SqlCommand(qry, Connection)
        Dim srd As SqlDataReader
        srd = cmd.ExecuteReader()
        If srd.Read() Then
            While srd.Read()
                txtAddressValue.Text = srd.GetValue(6).ToString()
                txtPhoneValue.Text = srd.GetValue(7).ToString()
            End While
        End If
        Connection.Close()

        Connection.Open()
        Dim uqry As String
        uqry = "select * From userTab where UID='" + user_id + "'"
        Dim ucmd As New SqlCommand(uqry, Connection)
        Dim usrd As SqlDataReader
        usrd = ucmd.ExecuteReader()
        While usrd.Read()
            txtUserNameValue.Text = usrd.GetValue(1).ToString()
            txtMailValue.Text = usrd.GetValue(2).ToString()
        End While
        Connection.Close()

        Connection.Open()

        Dim pqry As String
        pqry = "select * from buyTab Where UID='" + user_id + "'"
        Dim pcmd As New SqlCommand(pqry, Connection)
        Dim psrd As SqlDataReader
        psrd = pcmd.ExecuteReader()

        Dim tPrice As String = "0"
        While psrd.Read()
            tPrice = (Convert.ToInt32(tPrice) + (Convert.ToInt32(psrd.GetValue(3).ToString())) * (Convert.ToInt32(psrd.GetValue(4).ToString()))).ToString()
        End While
        txtTotalValue.Text = tPrice

        Connection.Close()
    End Sub

End Class