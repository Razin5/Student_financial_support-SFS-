<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CampusTotal.aspx.cs" Inherits="CampusTotal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 221px; width: 678px; margin-left: 211px">
        &nbsp;&nbsp;
        <br/>
        <asp:DropDownList ID="ddl_campus" runat="server" Width="128px" DataSourceID="SqlDataSource2"  DataValueField="Student_Id" AutoPostBack="True"  OnSelectedIndexChanged="ddl_campus_SelectedIndexChanged" DataTextField="Campus">
          
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT DISTINCT Campus,Student_Id FROM Students_registration;"></asp:SqlDataSource>
        <br/>
        <br/>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="False" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                <asp:BoundField DataField="Type_of_voucher" HeaderText="Type_of_voucher" SortExpression="Type_of_voucher" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Value" HeaderText="Value" SortExpression="Value" />
                <asp:BoundField DataField="koha_funds" HeaderText="koha_funds" SortExpression="koha_funds" />
                <asp:BoundField DataField="Date_of_grant" HeaderText="Date_of_grant" SortExpression="Date_of_grant" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT DISTINCT * FROM [Grants] WHERE ([StudentId] = @StudentId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddl_campus" DefaultValue="1000006" Name="StudentId" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="" Font-Size="Medium" Font-Bold="true"></asp:Label>
    </p>
</asp:Content>

