<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="year_to_date.aspx.cs" Inherits="year_to_date" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="txt_year" runat="server" Visible="false"></asp:TextBox>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
        
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
            <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br/>
    <br/>
    <br/>
    <br/>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Type_of_voucher" HeaderText="Type_of_voucher" SortExpression="Type_of_voucher" />
            <asp:BoundField DataField="TotalStudents" HeaderText="TotalStudents" ReadOnly="True" SortExpression="TotalStudents" />
            <asp:BoundField DataField="TotalGrants" HeaderText="TotalGrants" ReadOnly="True" SortExpression="TotalGrants" />
            <asp:BoundField DataField="GrantAmount" HeaderText="GrantAmount" ReadOnly="True" SortExpression="GrantAmount" />
            <asp:BoundField DataField="KohaGrantAmount" HeaderText="KohaGrantAmount" ReadOnly="True" SortExpression="KohaGrantAmount" />
            <asp:BoundField DataField="TotalGrantAmount" HeaderText="TotalGrantAmount" ReadOnly="True" SortExpression="TotalGrantAmount" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="select Type_of_voucher,COUNT(distinct StudentId) as TotalStudents,
COUNT(StudentId) as TotalGrants,SUM(Value) as GrantAmount,
SUM(koha_funds) as KohaGrantAmount,
SUM(Value)+SUM(koha_funds) as TotalGrantAmount
from Grants where YEAR(Date_of_grant)=@Year
group by Type_of_voucher">
        <SelectParameters>
            <asp:ControlParameter ControlID="txt_year" DefaultValue="2014" Name="Year" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

