<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="campus_report.aspx.cs" Inherits="campus_report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="ddl_campus" runat="server" Width="128px" AutoPostBack="true" >
    <asp:ListItem Value="0">---Select---</asp:ListItem>
            <asp:ListItem>Auckland</asp:ListItem>
            <asp:ListItem>Hamilton</asp:ListItem>
            <asp:ListItem>Napier</asp:ListItem>
            <asp:ListItem>Wellington</asp:ListItem>
            <asp:ListItem>Nelson</asp:ListItem>
            <asp:ListItem>Christchruch</asp:ListItem>
            <asp:ListItem>Dunedin</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
    <br />
       <br/>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Student_Id" DataSourceID="LinqDataSource1">
        <Columns>
            <asp:BoundField DataField="Student_Id" HeaderText="Student_Id" ReadOnly="True" SortExpression="Student_Id" />
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="accomodation" HeaderText="accomodation" SortExpression="accomodation" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
            <asp:BoundField DataField="home" HeaderText="home" SortExpression="home" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="method" HeaderText="method" SortExpression="method" />
            <asp:BoundField DataField="maritial_status" HeaderText="maritial_status" SortExpression="maritial_status" />
            <asp:BoundField DataField="ethnicity" HeaderText="ethnicity" SortExpression="ethnicity" />
            <asp:BoundField DataField="Campus" HeaderText="Campus" SortExpression="Campus" />
            <asp:BoundField DataField="faculty" HeaderText="faculty" SortExpression="faculty" />
            <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
        </Columns>
    </asp:GridView>


    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" TableName="Students_registrations" Where="Campus == @Campus">
        <WhereParameters>
            <asp:ControlParameter ControlID="ddl_campus" DefaultValue="Hamilton" Name="Campus" PropertyName="SelectedValue" Type="String" />
        </WhereParameters>
    </asp:LinqDataSource>


</asp:Content>

