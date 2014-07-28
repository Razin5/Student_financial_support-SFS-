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

public partial class Add_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Add_Click(object sender, EventArgs e)
    {
       
         if (DropDownList1.SelectedValue == "---SELECT---") 
        {
         
            Response.Write("<Script>alert('User Added Sucessfully')</Script>");
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
            SqlCommand cmd = new SqlCommand("insert into Login (name,password,role,email) Values(@name,@password,@role,@email)", con);
            cmd.Parameters.AddWithValue("@role", DropDownList1.Text);

            cmd.Parameters.AddWithValue("@name", txt_name.Text);
            cmd.Parameters.AddWithValue("@password", txt_pwd.Text);
            cmd.Parameters.AddWithValue("@email", txt_email.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<Script>alert('User Added Sucessfully')</Script>");
        }
        
       
    }
}