<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Grant_date.aspx.cs" Inherits="Grant_date" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <p style="height: 78px; width: 643px; margin-left: 198px">
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged1"></asp:Calendar>
    
        &nbsp;<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            <Columns>
                <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                <asp:BoundField DataField="Type_of_voucher" HeaderText="Type_of_voucher" SortExpression="Type_of_voucher" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Value" HeaderText="Value" SortExpression="Value" />
                <asp:BoundField DataField="Date_of_grant" HeaderText="Date_of_grant" SortExpression="Date_of_grant" ReadOnly="True" />
                <asp:BoundField DataField="Koha_funds" HeaderText="Koha_funds" SortExpression="Koha_funds" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [StudentId], [Type_of_voucher], [Description], [Value], DATEADD(DD,0,DATEDIFF(DD,0,Date_of_grant)) as Date_of_grant, 
[Koha_funds] 
FROM [Grants] 
WHERE DATEADD(DD,0,DATEDIFF(DD,0,Date_of_grant)) = @Date_of_grant">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" DefaultValue="26/06/2014" Name="Date_of_grant" PropertyName="SelectedDate" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br/>
    </p>
   
</asp:Content>

