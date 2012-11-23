<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddQuestion.aspx.cs" 
Inherits="QuestionBank_AddQuestion" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

 <style type="text/css">
        .Initial
        {
            display: block;
            padding: 4px 18px 4px 18px;
            float: left;
            background:url("InitialImage.png") no-repeat right top;
            color: Black;
            font-weight: bold;
        }
        .Initial:hover
        {
            color: Gray;
            background-image: url("SelectedButton.png") no-repeat right top;
        }
        .Clicked
        {
            float: left;
            display: block;
            background-image: url("SelectedButton.png") no-repeat right top;
            padding: 4px 18px 4px 18px;
            font-weight: bold;
            color: Blue;
        }
     .style1
     {
         width: 346px;
     }
    </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server" >


   
     <strong>Select Criteria</strong><asp:Table width="100%" ID="Tablecriteria" runat="server">
            <asp:TableHeaderRow>
             <asp:TableHeaderCell Text="Select Board" HorizontalAlign="Center" Font-Bold="true" ></asp:TableHeaderCell>
             <asp:TableHeaderCell Text="Select Class" HorizontalAlign="Center" Font-Bold="true" ></asp:TableHeaderCell>
             <asp:TableHeaderCell Text="Select Subject" HorizontalAlign="Center" Font-Bold="true" ></asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
            <asp:TableCell  HorizontalAlign="Center"> <asp:DropDownList ID="ddlBoard" runat="server" Width="200px"></asp:DropDownList> </asp:TableCell>
            <asp:TableCell  HorizontalAlign="Center"> <asp:DropDownList ID="ddlClass" runat="server"  Width="200px"></asp:DropDownList> </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center"> <asp:DropDownList ID="ddlSubject" runat="server"  Width="200px"></asp:DropDownList> </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    
    <br />
     <strong>Select Type of Question and enter data<br />
    </strong>
    &nbsp;<table width="100%"  style="height: 452px">
   
      <tr>
        <td>
          <asp:Button Text="Question/Answers" BorderStyle="None" ID="Button1" CssClass="Initial" runat="server" OnClick="Tab1_Click" Height="30px" />
          <asp:Button Text="Comprehension" BorderStyle="None" ID="Button2" CssClass="Initial" runat="server"  Height="30px"  OnClick="Tab2_Click" />
          <asp:Button Text="Story Writing" BorderStyle="None" ID="Button3" CssClass="Initial" runat="server" Height="30px"  OnClick="Tab3_Click" />
               <asp:Button Text="MCQ" BorderStyle="None" ID="Button4" CssClass="Initial" runat="server" Height="30px" OnClick="Tab4_Click" />
          <asp:Button Text="Fill in the Blanks" BorderStyle="None" ID="Button5" CssClass="Initial" runat="server" Height="30px"  OnClick="Tab5_Click" />
          <asp:Button Text="True/False" BorderStyle="None" ID="Button6" CssClass="Initial" runat="server" Height="30px"  OnClick="Tab6_Click" />

<asp:MultiView 
    ID="MultiView1"
    runat="server"
    ActiveViewIndex="0"  >
   <asp:View ID="Tab1" runat="server"  >
        <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
        <tr valign="top">
                <td  style="margin-left: 120px;" class="style1">
               
            </td>
        </tr>
            <tr >
                <td  style="margin-left: 120px;" class="style1">
                    Enter Question Text
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 2px" 
                        Width="700px"></asp:TextBox>
                    <br />
                    <br />
                    Enter Answer Text (500 chars MAX)<asp:TextBox ID="TextBox2" runat="server" 
                        style="margin-left: 7px" Width="700px" Height="53px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr >
                <td style="margin-left: 120px;" class="style1">
                    &nbsp;</td>
            </tr>
        </table>
     </asp:View>
    <asp:View ID="Tab2" runat="server">
       <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
            <tr valign="top">
                <td  style="width: 400px">
                    this is tab for short answers</td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="Tab3" runat="server">
        <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
            <tr valign="top">
                <td  style="width: 400px">
                    this is tab for long answers</td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="Tab4" runat="server"  >
       <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
            <tr valign="top">
                <td style="width: 400px">
                    this is tab for MCQ</td>
            </tr>
        </table>
     </asp:View>
    <asp:View ID="Tab5" runat="server">
        <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
            <tr valign="top">
                <td style="width: 400px">
                    this is tab for fill in the blanks</td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="Tab6" runat="server">
       <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
            <tr valign="top">
                <td style="width: 400px">
                    this is tab for long answers</td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>
</td>

</tr>
</table>
</asp:Content>

