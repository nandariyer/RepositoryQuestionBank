<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
        <em>What would you like to do?</em></h2>
    <p>
        &nbsp;</p>
        <p><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Account/ChangePassword.aspx"> Change Password </asp:HyperLink>
        </p>
        <p>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/QuestionBank/AddQuestion.aspx">  Add Questions </asp:HyperLink></p>

    <p><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Account/Register.aspx">  Add a New User </asp:HyperLink>
       </p>
    
    <p><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/QuestionBank/ValidateQuestion.aspx"> Validate Questions </asp:HyperLink>
        </p>
    <p><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/QuestionBank/UserInfo.aspx"> View User Input and Payment Information </asp:HyperLink>
        </p>
</asp:Content>

