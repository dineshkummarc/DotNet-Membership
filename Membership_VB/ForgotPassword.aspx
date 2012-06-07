<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
        <MailDefinition From="noreply@vertigosoftware.com" IsBodyHtml="True" Priority="High"
            Subject="Your new, temporary password.">
        </MailDefinition>
    </asp:PasswordRecovery>
</asp:Content>

