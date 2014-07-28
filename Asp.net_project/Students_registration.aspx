<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Students_registration.aspx.cs" Inherits="Students_registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="margin-top: 10px; margin-bottom: 50px; margin-left:250px; margin-right:200px; align-content:center">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>
        <asp:Label ID="lbl_studentid" runat="server" Text="Student Id"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_studentid" runat="server"></asp:TextBox>
        &nbsp;
        <br/>
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_fname" runat="server" Text="First Name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_fname" runat="server"></asp:TextBox>
        </strong>&nbsp;<strong><asp:RequiredFieldValidator ID="rfv_fname" runat="server" ErrorMessage="Enter First Name" ControlToValidate="txt_fname" ForeColor="Red" ValidationGroup="Valid"></asp:RequiredFieldValidator>
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_lname" runat="server" Text="Last Name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
        </strong>&nbsp;<strong><asp:RequiredFieldValidator ID="rfv_lname" runat="server" ControlToValidate="txt_lname" ErrorMessage="Enter Last Name" ForeColor="Red" ValidationGroup="Valid"></asp:RequiredFieldValidator>
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_gender" runat="server" Text="Gender:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rdbtn_m" runat="server" Text="Male" GroupName="Gender" />
&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rdbtn_f" runat="server" Text="Female" GroupName="Gender" />
        </strong>&nbsp;<strong><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_dob" runat="server" Text="Date of Birth:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt_dob"  runat="server"  OnTextChanged="txt_dob_TextChanged"></asp:TextBox>
        </strong>
        <asp:CalendarExtender ID="CalendarExtender1" Format="dd/MM/yyyy" Enabled="True"  TargetControlID="txt_dob" runat="server"></asp:CalendarExtender>
        &nbsp;<strong><asp:RequiredFieldValidator ID="rfv_dob" runat="server" ErrorMessage="Select Date of Birth" ControlToValidate="txt_dob" ForeColor="Red" ValidationGroup="Valid" Display="Dynamic"></asp:RequiredFieldValidator>
        </strong>&nbsp;           <asp:RangeValidator ID="rgvDob" runat="server" ErrorMessage="Please enter date between 01/01/1990 to 01/01/2010"  Type="Date" ControlToValidate="txt_dob" ForeColor="Red" MaximumValue="01/01/2010" MinimumValue="01/01/1990" SetFocusOnError="True" style="font-weight: 700"></asp:RangeValidator>
        <strong><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            

        &nbsp;&nbsp;&nbsp;&nbsp;
            <br/>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Label ID="lbl_address" runat="server" Text="Address:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine" Height="47px" Width="128px"></asp:TextBox>
        </strong>&nbsp;<strong><asp:RequiredFieldValidator ID="rfv_address" runat="server" ErrorMessage="Enter Address" ControlToValidate="txt_address" ForeColor="Red" ValidationGroup="Valid"></asp:RequiredFieldValidator>
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_accomodation" runat="server" Text="Accomodation Type:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddl_accomodation" runat="server" Height="22px" Width="128px">
            <asp:ListItem Value="0">---Select---</asp:ListItem>
            <asp:ListItem>Hostel</asp:ListItem>
            <asp:ListItem>Boarding</asp:ListItem>
            <asp:ListItem>Flat</asp:ListItem>
            <asp:ListItem>Own house</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        
        </strong>&nbsp;<strong><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_mobile" runat="server" Text="Mobile:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_mobile" runat="server"></asp:TextBox>
        </strong>&nbsp;<strong><asp:RequiredFieldValidator ID="rfv_mobile" runat="server" ErrorMessage="Enter mobile number" ControlToValidate="txt_mobile" ForeColor="Red" Display="Dynamic" ValidationGroup="Valid"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rev_mobile" runat="server" ErrorMessage="Enter right format" ControlToValidate="txt_mobile" ForeColor="Red" Display="Dynamic" ValidationExpression="[0-9]{10}" ValidationGroup="Valid"></asp:RegularExpressionValidator>
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_home" runat="server" Text="Home:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_home" runat="server"></asp:TextBox>
        </strong>&nbsp;<strong><asp:RequiredFieldValidator ID="rfv_home" runat="server" ControlToValidate="txt_home" ErrorMessage="Enter landline number" ForeColor="Red" Display="Dynamic" ValidationGroup="Valid"></asp:RequiredFieldValidator>
        </strong>&nbsp;<strong><asp:RegularExpressionValidator ID="rev_home" runat="server" ControlToValidate="txt_home" ErrorMessage="Enter right format" ForeColor="Red" ValidationExpression="[0-9]{10}" Display="Dynamic" ValidationGroup="Valid"></asp:RegularExpressionValidator>
        </strong>&nbsp;<strong><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_email" runat="server" Text="Email Id:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
        </strong>&nbsp;<strong><asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="txt_email" ErrorMessage="Enter email" ForeColor="Red" Display="Dynamic" ValidationGroup="Valid"></asp:RequiredFieldValidator>
        </strong>&nbsp;<strong><asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_email" ErrorMessage="Enter right format" ForeColor="Red" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Valid"></asp:RegularExpressionValidator>
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_method" runat="server" Text="Method of Contact:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddl_method" runat="server" Height="22px" Width="128px">
            <asp:ListItem Value="0">---Select---</asp:ListItem>
            <asp:ListItem>Telephone</asp:ListItem>
            <asp:ListItem>Email</asp:ListItem>
            <asp:ListItem>Mobile</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        </strong>&nbsp;<strong><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_status" runat="server" Text="Marital Status:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddl_maritial" runat="server" Height="22px" Width="128px">
            <asp:ListItem Value="0">---Select---</asp:ListItem>
            <asp:ListItem>Married</asp:ListItem>
            <asp:ListItem>Single</asp:ListItem>
            
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList></strong>&nbsp;<strong><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_ethnicity" runat="server" Text="Ethnicity:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:DropDownList ID="ddl_ethnicity" runat="server" Width="128px">
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
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_campus" runat="server" Text="Campus:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:DropDownList ID="ddl_campus" runat="server" Width="128px">
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
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_faculty" runat="server" Text="Faculty:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddl_faculty" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_faculty_SelectedIndexChanged1">
        <asp:ListItem>---Select---</asp:ListItem>
        <asp:ListItem Value="Faculty of Arts">Faculty of Arts</asp:ListItem>
        <asp:ListItem Value="Faculty of Business">Faculty of Business</asp:ListItem>
        <asp:ListItem Value="Faculty of Health">Faculty of Health</asp:ListItem>
        <asp:ListItem Value="Faculty of Service Industries">Faculty of Service Industries</asp:ListItem>
        <asp:ListItem Value="Faculty of Trades">Faculty of Trades</asp:ListItem>
        <asp:ListItem Value="Te Wananga Maori">Te Wananga Maori</asp:ListItem>
            </asp:DropDownList>
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_courses" runat="server" Text="Courses:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            </strong>&nbsp;<asp:DropDownList ID="ddl_arts" runat="server" Visible="False">
            <asp:ListItem></asp:ListItem>
        <asp:ListItem>Adobe Creative Suite </asp:ListItem>
        <asp:ListItem>Bachelor of Applied Arts (Creative Writing) </asp:ListItem>
        <asp:ListItem>Bachelor of Applied Arts (Music) </asp:ListItem>
        <asp:ListItem>Bachelor of Applied Arts (Performing Arts)</asp:ListItem>
        <asp:ListItem>Bachelor of Applied Arts (Visual Arts and Design)</asp:ListItem>
        <asp:ListItem>Bachelor of Teaching (Early Childhood Education) </asp:ListItem>
        <asp:ListItem>Certificate in Advanced Photography </asp:ListItem>
        <asp:ListItem>Certificate in Desktop Publishing for Print and the Web </asp:ListItem>
        <asp:ListItem>Certificate in Digital Media </asp:ListItem>
        <asp:ListItem>Certificate in DJ Music </asp:ListItem>
        <asp:ListItem>Certificate in Foundation Music</asp:ListItem>
        <asp:ListItem>Certificate in Live Sound and Event Production </asp:ListItem>
        <asp:ListItem>Certificate in Mastercraft </asp:ListItem>
        <asp:ListItem>Certificate in Multimedia Journalism </asp:ListItem>
        <asp:ListItem>Certificate in Practical Photography </asp:ListItem>
        <asp:ListItem>Certificate in Professional Teaching Practice (English) </asp:ListItem>
        <asp:ListItem>Certificate in Rock, Jazz and Commercial Music </asp:ListItem>
        <asp:ListItem>Certificate in Screen Acting </asp:ListItem>
        <asp:ListItem>Diploma in Applied Stage and Screen Arts (Advanced) </asp:ListItem>
        <asp:ListItem>Diploma in Creative Writing </asp:ListItem>
        <asp:ListItem>Diploma in Creative Writing (Advanced) </asp:ListItem>
        <asp:ListItem>Diploma in Digital Design </asp:ListItem>
        <asp:ListItem>Diploma in Digital Design and Multi-media </asp:ListItem>
        <asp:ListItem>Diploma in Early Childhood Education </asp:ListItem>
        <asp:ListItem>Diploma in Jewellery Design </asp:ListItem>
        <asp:ListItem>Diploma in Performing Arts (Commercial Dance) </asp:ListItem>
        <asp:ListItem>Diploma in Performing Arts: Singing (Musical Theatre) </asp:ListItem>
        <asp:ListItem>Diploma in Publishing </asp:ListItem>
        <asp:ListItem>Diploma in Publishing (Applied) </asp:ListItem>
        <asp:ListItem>Diploma in Stage and Screen Arts </asp:ListItem>
        <asp:ListItem>Graduate Diploma in Creative Writing </asp:ListItem>
        <asp:ListItem>National Diploma in Journalism (Multi-media) (Level 5) </asp:ListItem>
        <asp:ListItem>The Creative Writing Programmes Introduction </asp:ListItem>
    </asp:DropDownList>
        <asp:DropDownList ID="ddl_business" runat="server" Visible="False">
            <asp:ListItem></asp:ListItem>
        <asp:ListItem>Bachelor of Applied Business Studies </asp:ListItem>
        <asp:ListItem>Bachelor of Information Technology </asp:ListItem>
        <asp:ListItem>Certificate in English Language </asp:ListItem>
        <asp:ListItem>Certificate in English Language (Advanced) </asp:ListItem>
        <asp:ListItem>Certificate in Information Technology </asp:ListItem>
        <asp:ListItem>Diploma in Information Technology (Level 5) </asp:ListItem>
        <asp:ListItem>Diploma in Information Technology (Level 6) </asp:ListItem>
        <asp:ListItem>Diploma in Management (Not for Profit Sector) </asp:ListItem>
        <asp:ListItem>Graduate Diploma in Applied Business Studies </asp:ListItem>
        <asp:ListItem>Graduate Diploma in Information Technology </asp:ListItem>
        <asp:ListItem>New Zealand Diploma in Business </asp:ListItem>
        <asp:ListItem>New Zealand Institute of Management (NZIM) Certificate in Management </asp:ListItem>
        <asp:ListItem>New Zealand Institute of Management (NZIM) Certificate in Small Business Management </asp:ListItem>
        <asp:ListItem>New Zealand Institute of Management (NZIM) Diploma in Management </asp:ListItem>
        <asp:ListItem>New Zealand Law Society Legal Executive Diploma </asp:ListItem>
    </asp:DropDownList>
         <asp:DropDownList ID="ddl_health" runat="server" Visible="False"> 
             <asp:ListItem></asp:ListItem>
        <asp:ListItem>Bachelor of Health Science (Paramedic) </asp:ListItem>
        <asp:ListItem>Bachelor of Nursing </asp:ListItem>
        <asp:ListItem>Bachelor of Nursing Māori </asp:ListItem>
        <asp:ListItem>Bachelor of Nursing Pacific </asp:ListItem>
        <asp:ListItem>Bachelor of Social Work </asp:ListItem>
        <asp:ListItem>Certificate in Foundation Education (Health Science) </asp:ListItem>
        <asp:ListItem>Certificate in Foundation Education (Social Sciences) </asp:ListItem>
        <asp:ListItem>Certificate in Health Professional Practice Development </asp:ListItem>
        <asp:ListItem>Certificate in Nursing (Long Term Care and Rehabilitation) </asp:ListItem>
        <asp:ListItem>Certificate in Preparation for Tertiary Study </asp:ListItem>
        <asp:ListItem>Competency Assessment Programme for Nurses </asp:ListItem>
        <asp:ListItem>National Certificate in Mental Health (Mental Health Support Work) </asp:ListItem>
        <asp:ListItem>National Certificate in Tamariki Ora – Well Child Services </asp:ListItem>
        <asp:ListItem>National Diploma in Mental Health (Mental Health Support Work) </asp:ListItem>
        <asp:ListItem>Postgraduate Certificate in Hospice Palliative Care </asp:ListItem>
        <asp:ListItem>Postgraduate Certificate in Nursing </asp:ListItem>
        <asp:ListItem>Postgraduate Certificate in Perioperative Specialty Nursing </asp:ListItem>
        <asp:ListItem>Postgraduate Certificate in Primary Health Care Specialty Nursing </asp:ListItem>
        <asp:ListItem>Postgraduate Certificate in Specialty Care </asp:ListItem>
        <asp:ListItem>Pre-entry to Degrees </asp:ListItem>
             </asp:DropDownList >
        <asp:DropDownList ID="ddl_service" runat="server" Visible="False">
            <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Certificate in Beauty and Hairdressing </asp:ListItem>
        <asp:ListItem>Certificate in Beauty Therapy </asp:ListItem>
        <asp:ListItem>Certificate in Cafe Service </asp:ListItem>
        <asp:ListItem>Certificate in Office Administration and Computing (Advanced) </asp:ListItem>
        <asp:ListItem>Certificate in Office Administration and Computing (Intermediate) </asp:ListItem>
        <asp:ListItem>Certificate in Office Administration and Computing (Introductory) </asp:ListItem>
        <asp:ListItem>Certificate in Office Skills/Computing </asp:ListItem>
        <asp:ListItem>Certificate in Outdoor Adventure </asp:ListItem>
        <asp:ListItem>Certificate in Professional Cookery </asp:ListItem>
        <asp:ListItem>Certificate in Retail and Cosmetic Services </asp:ListItem>
        <asp:ListItem>Certificate in Retail Management </asp:ListItem>
        <asp:ListItem>Community Computing </asp:ListItem>
        <asp:ListItem>Diploma in Outdoor Adventure </asp:ListItem>
        <asp:ListItem>Flexi-Learn Computer Applications </asp:ListItem>
        <asp:ListItem>Mountain Safety Council Courses </asp:ListItem>
        <asp:ListItem>National Certificate Business (First Line Management) Level 3 </asp:ListItem>
        <asp:ListItem>National Certificate in Computing (Level 2 and 3) </asp:ListItem>
        <asp:ListItem>National Certificate in Hairdressing (Salon Support) </asp:ListItem>
        <asp:ListItem>National Certificate in Tourism (Core Skills) Level 3 </asp:ListItem>
        <asp:ListItem>National Diploma in Hospitality (Management) (Level 5) </asp:ListItem>
        <asp:ListItem>Short Course Certificate in Avalanche Safety </asp:ListItem>
        <asp:ListItem>Short Course Certificate in Computer Applications </asp:ListItem>
    </asp:DropDownList>
         <asp:DropDownList ID="ddl_trades" runat="server" Visible="False">
             <asp:ListItem></asp:ListItem>
        <asp:ListItem>Certificate in Automotive Engineering </asp:ListItem>
        <asp:ListItem>Certificate in Automotive Engineering (Advanced) </asp:ListItem>
        <asp:ListItem>Certificate in Aviation (Aeroplane) </asp:ListItem>
        <asp:ListItem>Certificate in Aviation (Aeroplane) Instructor Rating </asp:ListItem>
        <asp:ListItem>Certificate in Aviation (Helicopter) </asp:ListItem>
        <asp:ListItem>Certificate in Aviation (Helicopter) Advanced </asp:ListItem>
        <asp:ListItem>Certificate in Aviation (Helicopter) Turbine </asp:ListItem>
        <asp:ListItem>Certificate in Aviation (Multi-engine Instrument Rating) </asp:ListItem>
        <asp:ListItem>Certificate in Carpentry </asp:ListItem>
        <asp:ListItem>Certificate in Civil Construction (Introductory Skills) </asp:ListItem>
        <asp:ListItem>Certificate in Commercial Road Transport </asp:ListItem>
        <asp:ListItem>Certificate in Electrical Engineering </asp:ListItem>
        <asp:ListItem>Certificate in Horticulture and Landscaping </asp:ListItem>
        <asp:ListItem>Certificate in Plumbing, Drainlaying, Gasfitting and Roofing </asp:ListItem>
        <asp:ListItem>Certificate in Road Transport </asp:ListItem>
        <asp:ListItem>Certificate in Trade Skills </asp:ListItem>
        <asp:ListItem>National Certificate in Floristry (Level 2) </asp:ListItem>
             </asp:DropDownList>
         <asp:DropDownList ID="ddl_maoiri" runat="server" Visible="False">
             <asp:ListItem></asp:ListItem>
        <asp:ListItem>Certificate in General Studies </asp:ListItem>
        <asp:ListItem>Certificate in Mastercraft (Ngā Tapuwae o Hine-te-iwaiwa) </asp:ListItem>
        <asp:ListItem>Certificate in Reo Māori – Te Ara Piko </asp:ListItem>
        <asp:ListItem>Certificate in Reo Māori – Tēnei Au </asp:ListItem>
        <asp:ListItem>Certificate in Waka Ama </asp:ListItem>
        <asp:ListItem>Certificate in Waka Ama (Advanced) </asp:ListItem>
        <asp:ListItem>National Certificate in Whakairo (Tūturu) (Level 4) </asp:ListItem>
        <asp:ListItem>National Diploma in Reo Māori (Level 5) </asp:ListItem>
        <asp:ListItem>National Diploma in Reo Māori (Level 6) </asp:ListItem>
        <asp:ListItem>National Diploma in Whakairo (Level 5) </asp:ListItem>
        <asp:ListItem>National Diploma in Whakairo (Level 6) </asp:ListItem>
        <asp:ListItem>Te Hiringa o Te Reo</asp:ListItem>
             </asp:DropDownList>
        <strong><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_add" runat="server" Text="Add Student" OnClick="btn_add_Click" ValidationGroup="Valid"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_reset" runat="server" Text="Reset" Height="26px" Width="108px" OnClick="btn_reset_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_cancel" runat="server" Text="Cancel" Height="26px" Width="108px" />
        </strong>
    </p>
</asp:Content>

