<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rep_ethnicity.aspx.cs" Inherits="rep_ethnicity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="ddl_ethnicity" Autopostback="true" runat="server" Width="128px" OnSelectedIndexChanged="ddl_ethnicity_SelectedIndexChanged">
            <asp:ListItem Value="0">---Select---</asp:ListItem>
            <asp:ListItem>Indian</asp:ListItem>
            <asp:ListItem>Chinese</asp:ListItem>
            <asp:ListItem>Asian</asp:ListItem>
            <asp:ListItem>European</asp:ListItem>
            <asp:ListItem>Pakeha</asp:ListItem>
            <asp:ListItem>Samoan</asp:ListItem>
            <asp:ListItem>Maori</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Student_Id" DataSourceID="SqlDataSource1">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT DISTINCT * FROM [Students_registration] WHERE ([ethnicity] = @ethnicity)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddl_ethnicity" DefaultValue="Indian" Name="ethnicity" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br/>

</asp:Content>

