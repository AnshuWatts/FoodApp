Imports System.Data.SqlClient

Public Class WebForm6
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim ConnectionStr As String
        ConnectionStr = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FoodApp;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"

        Dim Connection As New SqlConnection(ConnectionStr)
        Connection.Open()

        Dim qry As String
        qry = "select * from productTab "
        Dim cmd As New SqlCommand(qry, Connection)
        Dim srd As SqlDataReader
        srd = cmd.ExecuteReader()

    End Sub

End Class