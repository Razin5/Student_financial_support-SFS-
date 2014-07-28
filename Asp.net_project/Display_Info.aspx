<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Display_Info.aspx.cs" Inherits="Display_Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="margin-top: 10px; margin-bottom: 50px; margin-left:250px; margin-right:200px; align-content:center"">
        &nbsp;&nbsp;
        <br/>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="3" DataKeyNames="Student_ID" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="Black" 
            GridLines="Vertical" AllowPaging="True" AllowSorting="True" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" style="margin-left: 1px; margin-right: 0px;">
            
                <Columns>
                    <asp:TemplateField><ItemTemplate>
            <asp:LinkButton ID="LinkButton1" Runat="server" 
                OnClientClick="return confirm('Are you sure you want to delete this student?');"
                CommandName="Delete">Delete Student</asp:LinkButton>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField><ItemTemplate>
            <asp:LinkButton ID="LinkButton2" Runat="server" 
            CommandName="Select">View Grant</asp:LinkButton>
        </ItemTemplate>
        </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" />
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
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>"
            DeleteCommand="DELETE FROM [Students_registration] WHERE [Student_Id] = @Student_Id" 
            InsertCommand="INSERT INTO [Students_registration] ([Student_Id], [fname], [lname], [gender], [Dob], [address], [accomodation], [mobile], [home], [email], [method], [maritial_status], [ethnicity], [Campus], [faculty], [course]) VALUES (@Student_Id, @fname, @lname, @gender, @Dob, @address, @accomodation, @mobile, @home, @email, @method, @maritial_status, @ethnicity, @Campus, @faculty, @course)"
            SelectCommand="SELECT [Student_Id], [fname], [lname], [gender], [Dob], [address], [accomodation], [mobile], [home], [email], [method], [maritial_status], [ethnicity], [Campus], [faculty], [course]
  FROM [Students_registration]
 WHERE (([fname] like @fname)  OR ([Student_Id] = @Student_Id))" 
            UpdateCommand="UPDATE [Students_registration] SET [fname] = @fname, [lname] = @lname, [gender] = @gender, [Dob] = @Dob, [address] = @address, [accomodation] = @accomodation, [mobile] = @mobile, [home] = @home, [email] = @email, [method] = @method, [maritial_status] = @maritial_status, [ethnicity] = @ethnicity, [Campus] = @Campus, [faculty] = @faculty, [course] = @course WHERE [Student_Id] = @Student_Id">
            
            <DeleteParameters>
                <asp:Parameter Name="Student_Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Student_Id" Type="String" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="Dob" DbType="Date" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="accomodation" Type="String" />
                <asp:Parameter Name="mobile" Type="Int32" />
                <asp:Parameter Name="home" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="method" Type="String" />
                <asp:Parameter Name="maritial_status" Type="String" />
                <asp:Parameter Name="ethnicity" Type="String" />
                <asp:Parameter Name="Campus" Type="String" />
                <asp:Parameter Name="faculty" Type="String" />
                <asp:Parameter Name="course" Type="String" />
                
                
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="txt_result" DefaultValue="%" Name="fname" PropertyName="Text" />
                <asp:ControlParameter ControlID="txt_result" DefaultValue="%" Name="Student_Id" PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="Dob" DbType="Date" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="accomodation" Type="String" />
                <asp:Parameter Name="mobile" Type="Int32" />
                <asp:Parameter Name="home" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="method" Type="String" />
                <asp:Parameter Name="maritial_status" Type="String" />
                <asp:Parameter Name="ethnicity" Type="String" />
                <asp:Parameter Name="Campus" Type="String" />
                <asp:Parameter Name="faculty" Type="String" />
                <asp:Parameter Name="course" Type="String" />
                
                <asp:Parameter Name="Student_Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br/>
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_addgrant" runat="server" Text="Add Grant" OnClick="btn_addgrant_Click" />
        <br/>
        
        <br/>
        <br/>
        <br/>
        <asp:TextBox ID ="txt_result" runat ="server" Visible="false"></asp:TextBox>  
    </p>
</asp:Content>

