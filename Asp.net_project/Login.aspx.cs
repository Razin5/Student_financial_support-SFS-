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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select name,password, role FROM Login WHERE name=@name and password=@password and role=@role", con);
        cmd.Parameters.AddWithValue("@name", txt_login.Text);
        cmd.Parameters.AddWithValue("@password", txt_password.Text);
        string role = ddl_role.SelectedValue.ToString();
        cmd.Parameters.AddWithValue("@role", role.ToString().Trim());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            if (role.ToString() == "Admin")
            {
                Response.Redirect("Admin_menu.aspx");

            }
            else if (role.ToString() == "Faculty")
            {
                Response.Redirect("Menu_Main.aspx");
            }

            else
            {
                //ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Login Id and Password')</script>");

                txt_login.Text = "";
                txt_password.Text = "";
                lbl_msg.Text = "The username or password you entered is incorrect";
            }
        }
    }
}
