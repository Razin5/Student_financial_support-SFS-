using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Students_registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string strconnection = ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString;
        SqlConnection con = new SqlConnection(strconnection);

        string str = "select count(*) from Students_registration";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        int count = Convert.ToInt16(cmd.ExecuteScalar()) + 1;
        txt_studentid.Text = "100000" + count.ToString();
        txt_studentid.Enabled = false;
        con.Close();
        //if (ddl_faculty.Text == "faculty of Arts")
        //{Faculty of Health">Faculty of Health</asp:ListItem>
        //<asp:ListItem Value="Faculty of Service Industries">Faculty of Service Industries</asp:ListItem>
        //<asp:ListItem Value="Faculty of Trades">Faculty of Trades</asp:ListItem>
        //<asp:ListItem Value="Te Wananga Maori"
        //    ddl_arts.Enabled = true;
        //}
        //ddl_business.Visible = false;
        //ddl_arts.Visible = false; 
        //txt_doj.Text = DateTime.Now();
        //txt_doj.Text = DateTime.Today.ToString("dd/MM/yyyy");
        //txt_doj.Enabled = false; 
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        string gender = "NA";

        if (rdbtn_m.Checked)
        {
            gender = "Male";

        }
        else if (rdbtn_f.Checked)
        {
            gender = "Female";

        }
        
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
            SqlCommand cmd = new SqlCommand("INSERT INTO Students_registration (Student_Id,fname,lname,gender,Dob,address,accomodation,mobile,home,email,method,maritial_status,ethnicity,Campus,faculty,course) VALUES (@Student_Id,@fname,@lname,@gender,@Dob,@address,@accomodation,@mobile,@home,@email,@method,@maritial_status,@ethnicity,@Campus,@faculty,@course)", con);
            cmd.Parameters.AddWithValue("@Student_Id", txt_studentid.Text);
            cmd.Parameters.AddWithValue("@fname", txt_fname.Text);
            cmd.Parameters.AddWithValue("@lname", txt_lname.Text);
            cmd.Parameters.AddWithValue("@gender", gender.ToString());
            cmd.Parameters.AddWithValue("@Dob", txt_dob.Text);
            cmd.Parameters.AddWithValue("@address", txt_address.Text);
            cmd.Parameters.AddWithValue("@accomodation", ddl_accomodation.SelectedValue);
            cmd.Parameters.AddWithValue("@mobile", txt_mobile.Text);
            cmd.Parameters.AddWithValue("@home", txt_home.Text);
            cmd.Parameters.AddWithValue("@email", txt_email.Text);
            cmd.Parameters.AddWithValue("@method", ddl_method.SelectedValue);
            cmd.Parameters.AddWithValue("maritial_status", ddl_maritial.SelectedValue);

            cmd.Parameters.AddWithValue("@ethnicity", ddl_ethnicity.SelectedValue);
            cmd.Parameters.AddWithValue("@Campus", ddl_campus.SelectedValue);
            cmd.Parameters.AddWithValue("@faculty", ddl_faculty.SelectedValue);

            if (ddl_arts.Visible == true)
            {
                cmd.Parameters.AddWithValue("@course", ddl_arts.SelectedValue);
            }
            else if (ddl_business.Visible == true)
            {
                cmd.Parameters.AddWithValue("@course", ddl_business.SelectedValue);
            }
            else if (ddl_service.Visible == true)
            {
                cmd.Parameters.AddWithValue("@course", ddl_service.SelectedValue);
            }
            else if (ddl_trades.Visible == true)
            {
                cmd.Parameters.AddWithValue("@course", ddl_trades.SelectedValue);
            }
            else if (ddl_maoiri.Visible == true)
            {
                cmd.Parameters.AddWithValue("@course", ddl_maoiri.SelectedValue);
            }
            else
            {
                cmd.Parameters.AddWithValue("@course", ddl_health.SelectedValue);
            }

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<Script>alert('Student Added')</Script>");
            txt_address.Text = "";
            txt_dob.Text = "";
            txt_email.Text = "";
            txt_fname.Text = "";
            txt_lname.Text = "";
            txt_mobile.Text = "";
            txt_home.Text = "";
            //ddlAccomodition.SelectedIndex = 0;
            //ddlContact.SelectedIndex = 0;
            //ddlStatus.SelectedIndex = 0;
            //ddlEthnicity.SelectedIndex = 0;
            //ddlCampus.SelectedIndex = 0;
            //ddlFaculty.SelectedIndex = 0;
            ddl_arts.Visible = false;
            ddl_business.Visible = false;
            ddl_maoiri.Visible = false;
            ddl_service.Visible = false;
            ddl_trades.Visible = false;
            ddl_health.Visible = false;


            //string strconnection = ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString;
            //SqlConnection con = new SqlConnection(strconnection);

            //con = new SqlConnection(strconnection);

            //con.Open();
            //string str = "insert into Faculty values ('" + txt_studentid.Text + "','" + txt_fname.Text + "', ' " + txt_lname.Text + "',' " + gender.ToString() + ", ' " + txt_dob.Text + "', ' " + txt_doj.Text + "',' " + txt_address.Text + "',' " + ddl_accomodation.Text + "',' " + txt_mobile.Text + "',' " + txt_home.Text + "',' " + txt_email.Text + "',' " + ddl_method.Text + "',' " + ddl_maritial.Text + "',' " + ddl_ethnicity.Text + "',' " + ddl_campus.Text + "',' " + ddl_faculty.Text + "',)";
            //SqlCommand cmd = new SqlCommand(str, con);
            //cmd.ExecuteNonQuery();
            //con.Close();
        
    }
   

    protected void ddl_faculty_SelectedIndexChanged1(object sender, EventArgs e)
    {
        
        if (ddl_faculty.SelectedValue == "Faculty of Arts")
        {
            ddl_arts.Visible = true;
            ddl_business.Visible = false;
            ddl_maoiri.Visible = false;
            ddl_service.Visible = false;
            ddl_trades.Visible = false;
            ddl_health.Visible = false;
            ddl_arts.Focus();
        }

        else if (ddl_faculty.SelectedValue == "Faculty of Business")
        {
            
            ddl_arts.Visible = false;
            ddl_business.Visible = true;
            ddl_maoiri.Visible = false;
            ddl_service.Visible = false;
            ddl_trades.Visible = false;
            ddl_health.Visible = false;
            ddl_business.Focus();
        }
        else if (ddl_faculty.SelectedValue == "Faculty of Health")
        {
            ddl_arts.Visible = true;
            ddl_business.Visible = false;
            ddl_maoiri.Visible = false;
            ddl_service.Visible = false;
            ddl_trades.Visible = false;
            ddl_health.Visible = false;
            ddl_arts.Focus();
        }
        else if (ddl_faculty.SelectedValue == "Faculty of Service Industries")
        {
            ddl_arts.Visible = false;
            ddl_business.Visible = false;
            ddl_maoiri.Visible = false;
            ddl_service.Visible = true;
            ddl_trades.Visible = false;
            ddl_health.Visible = false;
            ddl_service.Focus();
        }
        else if (ddl_faculty.SelectedValue == "Faculty of Trades")
        {
            ddl_arts.Visible = false;
            ddl_business.Visible = false;
            ddl_maoiri.Visible = false;
            ddl_service.Visible = false;
            ddl_trades.Visible = true;
            ddl_health.Visible = false;
            ddl_trades.Focus();
        }
        else if (ddl_faculty.SelectedValue == "Te Wananga Maori")
        {
            ddl_arts.Visible = false;
            ddl_business.Visible = false;
            ddl_maoiri.Visible = true;
            ddl_service.Visible = false;
            ddl_trades.Visible = false;
            ddl_health.Visible = false;
            ddl_maoiri.Focus();
        }

        else
        {
            ddl_arts.Visible = false;
            ddl_business.Visible = false;
            ddl_maoiri.Visible = false;
            ddl_service.Visible = false;
            ddl_trades.Visible = false;
            ddl_health.Visible = false;
           ddl_faculty.Focus();
        }
        }
    protected void btn_reset_Click(object sender, EventArgs e)
    {
        txt_address.Text = "";
        txt_dob.Text = "";
        txt_email.Text = "";
        txt_fname.Text = "";
        txt_lname.Text = "";
        txt_mobile.Text = "";
        txt_home.Text = "";
        ddl_arts.Visible = false;
        ddl_business.Visible = false;
        ddl_maoiri.Visible = false;
        ddl_service.Visible = false;
        ddl_trades.Visible = false;
        ddl_health.Visible = false;
        ddl_faculty.Focus();
    }
    protected void txt_dob_TextChanged(object sender, EventArgs e)
    {

    }
}