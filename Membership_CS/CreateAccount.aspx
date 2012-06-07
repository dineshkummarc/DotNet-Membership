<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" Title="Untitled Page" %>
<script runat="server">
    public void ActivateStep(object sender, EventArgs e)
    {
        ListBox1.DataSource = Roles.GetAllRoles();
        ListBox1.DataBind();
    }
    
    public void DeactivateStep(object sender, EventArgs e) 
    {
        Roles.AddUserToRole(User.Identity.Name, ListBox1.SelectedValue);
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
            </asp:CreateUserWizardStep>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Choose your role" OnActivate="ActivateStep" OnDeactivate="DeactivateStep">
                Select a role:<br />
                <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
            </asp:WizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>