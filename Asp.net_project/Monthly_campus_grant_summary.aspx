<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Monthly_campus_grant_summary.aspx.cs" Inherits="Monthly_campus_grant_summary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 114px; width: 593px; margin-left: 292px">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem Value="0">---Select---</asp:ListItem>
            <asp:ListItem Value="01">January</asp:ListItem>
            <asp:ListItem Value="02">February</asp:ListItem>
            <asp:ListItem Value="03">March</asp:ListItem>
            <asp:ListItem Value="04">April</asp:ListItem>
            <asp:ListItem Value="05">May</asp:ListItem>
            <asp:ListItem Value="06">June</asp:ListItem>
            <asp:ListItem Value="07">July</asp:ListItem>
            <asp:ListItem Value="08">August</asp:ListItem>
            <asp:ListItem Value="09">September</asp:ListItem>
            <asp:ListItem Value="10">October</asp:ListItem>
            <asp:ListItem Value="11">November</asp:ListItem>
            <asp:ListItem Value="12">December</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true">
<asp:ListItem Value="0">---Select---</asp:ListItem>
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
            <asp:ListItem>2002</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem>2006</asp:ListItem>
            <asp:ListItem>2007</asp:ListItem>
            <asp:ListItem>2008</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
        </asp:DropDownList>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Type_of_voucher" HeaderText="Type_of_voucher" SortExpression="Type_of_voucher" />
                <asp:BoundField DataField="CurrentMonth" HeaderText="CurrentMonth" ReadOnly="True" SortExpression="CurrentMonth" />
                <asp:BoundField DataField="TotalStudents" HeaderText="TotalStudents" ReadOnly="True" SortExpression="TotalStudents" />
                <asp:BoundField DataField="TotalGrants" HeaderText="TotalGrants" ReadOnly="True" SortExpression="TotalGrants" />
                <asp:BoundField DataField="Funds" HeaderText="Funds" ReadOnly="True" SortExpression="Funds" />
                <asp:BoundField DataField="KohaFunds" HeaderText="KohaFunds" ReadOnly="True" SortExpression="KohaFunds" />
                <asp:BoundField DataField="GrantAmount" HeaderText="GrantAmount" ReadOnly="True" SortExpression="GrantAmount" />
                <asp:BoundField DataField="Campus" HeaderText="Campus" SortExpression="Campus" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="select A.Type_of_voucher,datename(MONTH,A.Date_of_grant) as CurrentMonth,count(distinct A.StudentId) as TotalStudents,COUNT( A.StudentId) as TotalGrants,
 SUM(Value) as Funds,
  SUM(Koha_funds) as KohaFunds,
 (SUM(Value)+sum(koha_funds)) as GrantAmount, B.Campus
 from Grants as A join Students_registration as B
on A.StudentId=B.Student_Id
where MONTH(A.Date_of_grant)=@month and YEAR(A.Date_of_grant)=@Year
group by Type_of_voucher,datename(MONTH,A.Date_of_grant),Campus
order by Campus">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="%" Name="month" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" DefaultValue="%" Name="Year" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

