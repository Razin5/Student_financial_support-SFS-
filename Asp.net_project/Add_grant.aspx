<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add_grant.aspx.cs" Inherits="Add_grant" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="margin-top: 10px; margin-bottom: 50px; margin-left:250px; margin-right:200px; align-content:center; height: 282px; width: 715px;">
        <strong>
            <br/>
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        <asp:Label ID="lbl_id" runat="server" Text="Student Id"></asp:Label>
        :&nbsp;&nbsp; </strong>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Student_Id" DataValueField="Student_Id">
        <asp:ListItem Value="0"></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Student_Id] FROM [Students_registration]"></asp:SqlDataSource>
        <br/>
        <br/>
        &nbsp;
        <asp:Label ID="lbl_voucher" runat="server" Text="Type of voucher:"></asp:Label>
        &nbsp;&nbsp; <asp:DropDownList ID="ddl_voucher" runat="server" Height="22px" Width="113px" OnSelectedIndexChanged="ddl_voucher_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem >---Select---</asp:ListItem>  
            <asp:ListItem>Advice</asp:ListItem>
            <asp:ListItem>PetrolVouchers</asp:ListItem>
            <asp:ListItem>FoodVouchers</asp:ListItem>
            <asp:ListItem>TrainTickets</asp:ListItem>
            <asp:ListItem>Hardship</asp:ListItem>
               </asp:DropDownList>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Label ID="lbl_decription" runat="server" Text="Grant Description"></asp:Label>
        :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_description" runat="server" TextMode="MultiLine" Enabled="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfv_description" runat="server" ControlToValidate="txt_description" ErrorMessage="Enter description" ForeColor="Red" Display="Dynamic"  Enabled="False" ValidationGroup="Valid"></asp:RequiredFieldValidator>
        <br/>
        <br/>
        &nbsp;
        <asp:Label ID="lbl_value" runat="server" Text="Voucher value:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_value" runat="server" Enabled="False" ></asp:TextBox>
         &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="rfv_funds" runat="server" ControlToValidate="txt_value" ErrorMessage="Enter Funds" ForeColor="Red" Display="Dynamic" Enabled="False" ValidationGroup="Valid" ></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="lbl_koha" runat="server" Text="Koha funds:"></asp:Label>
         &nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txt_funds" runat="server" Enabled="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfv_koha" runat="server" ControlToValidate="txt_funds" ErrorMessage="Enter Koha Funds" ForeColor="Red" Display="Dynamic" Enabled="False" ValidationGroup="Valid"></asp:RequiredFieldValidator>
        <br/>
        <br/>
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_submit" runat="server" Text="Submit" Height="28px" Width="119px" OnClick="btn_submit_Click" CausesValidation="true" ValidationGroup="Valid" />
         </asp:Content>

