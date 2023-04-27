Imports System.Data.SqlClient
Imports System.Security.Cryptography

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click

        Dim UID, userName, mail, pass, rePass As String
        UID = txtUserName.Text + DateTime.Today.ToString("ydddmm")
        userName = txtUserName.Text
        mail = txtUserEmail.Text
        pass = txtPassword.Text
        rePass = txtRePassword.Text

        Dim ConnectionStr As String = "Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FoodApp;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
        Dim Connection As New SqlConnection(ConnectionStr)
        Connection.Open()
        Dim qry As String
        qry = "select * from userTab Where UserName='" + userName + "'"
        Dim cmd As New SqlCommand(qry, Connection)
        Dim srd As SqlDataReader
        srd = cmd.ExecuteReader()
        If srd.Read() Then
            lblError.Text = "User Name Already Exist"
        Else
            If pass = rePass Then
                Connection.Close()
                Connection.Open()
                Dim iqry As String
                iqry = "insert into userTab (UID,UserName,Email,Password) values (@UID,@UserName,@Email,@Password)"
                Dim icmd As New SqlCommand(iqry, Connection)
                icmd.Parameters.Add("@UID", UID)
                icmd.Parameters.Add("@UserName", userName)
                icmd.Parameters.Add("@Email", mail)
                icmd.Parameters.Add("@Password", pass)
                icmd.ExecuteNonQuery()
                Response.Redirect("Login.aspx")
            Else
                lblError.Text = "Password Not Matched..."
            End If
        End If
            Connection.Close()
    End Sub
End Class