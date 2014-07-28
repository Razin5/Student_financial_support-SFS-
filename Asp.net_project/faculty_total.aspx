<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="faculty_total.aspx.cs" Inherits="faculty_total" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 140px; width: 682px; margin-left: 310px">
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="faculty" DataValueField="Student_Id" AutoPostBack="true">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT DISTINCT faculty,Student_Id from Students_registration"></asp:SqlDataSource>
        <br/>
        <br/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-top: 0px" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                <asp:BoundField DataField="Type_of_voucher" HeaderText="Type_of_voucher" SortExpression="Type_of_voucher" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Value" HeaderText="Value" SortExpression="Value" />
                <asp:BoundField DataField="koha_funds" HeaderText="koha_funds" SortExpression="koha_funds" />
                <asp:BoundField DataField="Date_of_grant" HeaderText="Date_of_grant" SortExpression="Date_of_grant" />
              
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT DISTINCT * FROM [Grants] WHERE ([StudentId] = @StudentId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1000003" Name="StudentId" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br/>
        <br/>
        <asp:Label ID="Label1" Font-Bold="true" Font-Size="Large" runat="server" Text=""></asp:Label>
    </p>
</asp:Content>

