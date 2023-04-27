Imports System.Data.SqlClient

Public Class WebForm5
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click

        Dim ConnectionStr As String
        ConnectionStr = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FoodApp;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
                           
        Dim Connection As New SqlConnection(ConnectionStr)
        Connection.Open()

        Try
            Dim UserName As String
            UserName = txtUserName.Text
            Dim Password As String
            Password = txtPassword.Text
            Dim qry As String
            qry = "select UId,UserName from userTab where UserName='" + UserName + "' and Password='" + Password + "'"
            Dim cmd As New SqlCommand(qry, Connection)
            Dim srd As SqlDataReader
            srd = cmd.ExecuteReader()
            If srd.Read() Then
                lblError.Text = "Login Success..."
                Session("user_id") = srd.GetValue(0).ToString()
                Session("UserName") = srd.GetValue(1).ToString()
                Response.Redirect("Home.aspx")
            Else
                lblError.Text = "Please Check Your User Id And Password...!"

            End If
            Connection.Close()

        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
    End Sub
End Class