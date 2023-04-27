Public Class Site
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("UserName") Is Nothing Then
            Logout.Visible = False
        Else
            Logout.Visible = True
        End If
    End Sub

    Protected Sub Logout_Click(sender As Object, e As EventArgs) Handles Logout.Click
        Session.Clear()
        Response.Redirect("Home.aspx")
    End Sub

    Protected Sub btnAccount_Click(sender As Object, e As EventArgs) Handles btnAccount.Click
        If Session("UserName") Is Nothing Then
            Response.Redirect("Login.aspx")
        Else
            Response.Redirect("Account.aspx")
        End If
    End Sub
End Class