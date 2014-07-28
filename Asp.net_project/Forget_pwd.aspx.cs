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

public partial class Forget_pwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string strconnection = ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString;

        SqlConnection conn = new SqlConnection(strconnection);
        SqlCommand cmd1 = new SqlCommand("SELECT * FROM Login", conn);

        conn.Open();
       

        //SqlCommand cmd1 = new SqlCommand("SELECT [password] FROM [Login] WHERE ([email] = @email) AND ([name] = @name) AND ([Id]= @Id)", conn);
        //cmd1.Parameters.AddWithValue("@email", txt_email.Text);
        //cmd1.Parameters.AddWithValue("@name", txt_name.Text);
        //cmd1.Parameters.AddWithValue("@Id", txt_id.Text);
        SqlDataReader rd1 = cmd1.ExecuteReader();
        while (rd1.Read())
        {
            if (rd1["Id"].ToString() == txt_id.Text.Trim() && rd1["name"].ToString() == txt_name.Text.Trim() && rd1["email"].ToString() == txt_email.Text)
            {//lblPhoneShow.Text = rd1["Phone"].ToString();
                //lblEmailShow.Text = rd1["Email"].ToString();
                //lblLNShow.Text = rd1["LastName"].ToString();
                //lblMessage.Text = rd1["Password"].ToString();

                Response.Write("<script>alert('your password is " + rd1["password"].ToString() + "')</script>");
                txt_id.Text = "";
                txt_name.Text = "";
                txt_email.Text = "";
            }
            else if(rd1["Id"].ToString() == txt_id.Text.Trim() || rd1["name"].ToString() == txt_name.Text.Trim() || rd1["email"].ToString() == txt_email.Text)
            {
                Response.Write("<script>alert('Provided details are INVALID')</script>");
                txt_id.Text = "";
                txt_name.Text = "";
                txt_email.Text = "";
            }
        }
        conn.Close();
    }
}