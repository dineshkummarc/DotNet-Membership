<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" Title="Untitled Page" %>
<script runat="server">
    Public Sub ActivateStep(ByVal sender As Object, ByVal e As System.EventArgs)
        ListBox1.DataSource = Roles.GetAllRoles()
        ListBox1.DataBind()
    End Sub
    
    Public Sub DeactivateStep(ByVal sender As Object, ByVal e As System.EventArgs)
        Roles.AddUserToRole(User.Identity.Name, ListBox1.SelectedValue)
    End Sub
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server">
            </asp:CreateUserWizardStep>
            <asp:WizardStep runat="server" Title="Choose your role" OnActivate="ActivateStep" OnDeactivate="DeactivateStep">
                Select a role:<br />
                <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
            </asp:WizardStep>
            <asp:CompleteWizardStep runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

