<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:LoginView ID="LoginView1" runat="server">
        <LoggedInTemplate>
            Welcome back,
            <asp:LoginName ID="LoginName1" runat="server" />
            <br />
            <br />
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
            <br />
            <br />
            <a href="ChangePassword.aspx">ChangePassword.aspx</a>
        </LoggedInTemplate>
        <AnonymousTemplate>
            You are not logged in.<br />
            <br />
            <a href="Login.aspx">Login.aspx</a><br />
            <a href="CreateAccount.aspx">CreateAccount.aspx</a>
        </AnonymousTemplate>
    </asp:LoginView>
</asp:Content>
