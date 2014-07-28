<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add_user.aspx.cs" Inherits="Add_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 150px; width: 589px; margin-left: 318px">
        <strong>&nbsp;&nbsp;
        <asp:Label ID="lbl_name" runat="server" Text="Users Name:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfv_name" runat="server" ControlToValidate="txt_name" Display="Dynamic" ErrorMessage="Enter Name" ForeColor="Red" ValidationGroup="Valid"></asp:RequiredFieldValidator>
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="lbl_email" runat="server" Text="Email:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
        &nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="Enter Correct Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Valid"></asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="Enter Email" ForeColor="Red" ValidationGroup="Valid"></asp:RequiredFieldValidator>
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="lbl_role" runat="server" Text="Role:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="0">---SELECT---</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Faculty</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="lbl_pwd" runat="server" Text="Password:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt_pwd" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_pwd" Display="Dynamic" ErrorMessage="Enter Password" ForeColor="Red" ValidationGroup="Valid"></asp:RequiredFieldValidator>
        <br/>
        &nbsp;&nbsp;
        <asp:Label ID="lbl_cpwd" runat="server" Text="Confirm Password:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_cpwd" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_cpwd" Display="Dynamic" ErrorMessage="Enter Password" ForeColor="Red" ValidationGroup="Valid"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pwd" ControlToValidate="txt_cpwd" Display="Dynamic" ErrorMessage="Password Mismatch" ForeColor="Red" ValidationGroup="Valid"></asp:CompareValidator>
        <br/>
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_Add" runat="server" Text="ADD USER" OnClick="btn_Add_Click" ValidationGroup="Valid"/>
        </strong>

    </p>
</asp:Content>

