<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_menu.aspx.cs" Inherits="Admin_menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Menu ID="Menu2" runat="server" Height="82px" Width="124px" >
    <Items>
        <asp:MenuItem Text="Admin" Value="Admin" NavigateUrl="~/Admin_menu.aspx">
            <asp:MenuItem Text="User Registration" Value="User Registration">
                <asp:MenuItem Text="Add User" Value="Add User" NavigateUrl="~/Add_user.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Edit User" Value="Edit User" NavigateUrl="~/Edit_user.aspx"></asp:MenuItem>
            </asp:MenuItem>
        </asp:MenuItem>
    </Items>
</asp:Menu>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    <p style="height: 8px; width: 1px; margin-left: 225px">
        &nbsp;</asp:Content>

