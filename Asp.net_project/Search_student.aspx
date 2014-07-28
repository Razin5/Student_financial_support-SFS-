<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search_student.aspx.cs" Inherits="Main_Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 93px; width: 733px; margin-left: 213px">
        &nbsp;&nbsp;
        <br/>
        <br/>
        <asp:Label ID="lbl_enter" runat="server" Text="Enter student ID or First Name:"></asp:Label>
        &nbsp;&nbsp;<asp:TextBox ID="txt_enter" runat="server"></asp:TextBox>
        <br/>
        <br/>


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


        <asp:Button ID="btn_search" runat="server" Text="Search" OnClick="btn_search_Click" />

    </p>
    <p style="height: 93px; width: 733px; margin-left: 213px">
        

    </p>
</asp:Content>

