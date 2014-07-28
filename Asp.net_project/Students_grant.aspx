<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Students_grant.aspx.cs" Inherits="Students_grant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Faculty_Id" DataSourceID="SqlDataSource1">
        <Columns>
            
            <asp:TemplateField><ItemTemplate>
            <asp:LinkButton ID="LinkButton1" Runat="server" 
            OnClientClick="return confirm('Are you sure you want to delete this record?');"
            CommandName="Delete">Delete Grant</asp:LinkButton>
        </ItemTemplate>
        </asp:TemplateField>
            <asp:BoundField DataField="Faculty_Id" HeaderText="Faculty_Id" ReadOnly="True" SortExpression="Faculty_Id" />
            <asp:BoundField DataField="Faculty_name" HeaderText="Faculty_name" SortExpression="Faculty_name" />
            <asp:BoundField DataField="Faculty_courses" HeaderText="Faculty_courses" SortExpression="Faculty_courses" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="DOJ" HeaderText="DOJ" SortExpression="DOJ" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Faculty] WHERE [Faculty_Id] = @Faculty_Id" InsertCommand="INSERT INTO [Faculty] ([Faculty_Id], [Faculty_name], [Faculty_courses], [DOB], [DOJ]) VALUES (@Faculty_Id, @Faculty_name, @Faculty_courses, @DOB, @DOJ)" SelectCommand="SELECT * FROM [Faculty]" UpdateCommand="UPDATE [Faculty] SET [Faculty_name] = @Faculty_name, [Faculty_courses] = @Faculty_courses, [DOB] = @DOB, [DOJ] = @DOJ WHERE [Faculty_Id] = @Faculty_Id">
        <DeleteParameters>
            <asp:Parameter Name="Faculty_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Faculty_Id" Type="Int32" />
            <asp:Parameter Name="Faculty_name" Type="String" />
            <asp:Parameter Name="Faculty_courses" Type="String" />
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="DOJ" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Faculty_name" Type="String" />
            <asp:Parameter Name="Faculty_courses" Type="String" />
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="DOJ" Type="String" />
            <asp:Parameter Name="Faculty_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

