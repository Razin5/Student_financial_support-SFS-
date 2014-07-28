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

public partial class Add_grant : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //TextBox1.Text = DateTime.Now.ToString();
       // TextBox1.Visible = false;
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        //if (txt_description.Enabled== true)

        //{
        //    rfv_description.Enabled= true;
        //}
        //else if (txt_value.Enabled == true)
        //{
        //    rfv_funds.Enabled = true;
        //}
        //if (txt_funds.Enabled == true )
        //{
        //    rfv_koha.Enabled = true;
        //}
        //if (ddl_voucher.SelectedValue == "Hardship")
        //{
            
            
        //}
        //else if (ddl_voucher.SelectedValue == "Advice")
        //{
            
        //}
        //else if (ddl_voucher.SelectedValue == "---Select---")
        //{
        //    rfv_description.Enabled = false;
        //    rfv_funds.Enabled = false;
        //    rfv_koha.Enabled = false;
        //}
        //else
        //{
        //    rfv_funds.Enabled = true;
        //    txt_funds.Text = "0";
        //}

        if (ddl_voucher.SelectedValue == "Hardship")
        {
           
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);

           
             SqlCommand cmd = new SqlCommand ("insert into Grants (StudentId,Type_of_voucher,Description,Value,koha_funds) Values(@StudentId,@Type_of_voucher,@Description,@Value,@koha_funds)", con);
             cmd.Parameters.AddWithValue("@StudentId", DropDownList1.Text);
             cmd.Parameters.AddWithValue("@Type_of_voucher", ddl_voucher.Text);
             cmd.Parameters.AddWithValue("@Description", txt_description.Text);
             cmd.Parameters.AddWithValue("@Value", txt_value.Text);
             cmd.Parameters.AddWithValue("@koha_funds", txt_funds.Text);
             con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<Script>alert('Grant Added')</Script>");
            

        }
        else if (ddl_voucher.SelectedValue == "Advice")
        {
            //string strconnection = ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);

            //con = new SqlConnection(strconnection);

            
            //string str = ("insert into Grants (column1,column2,column3,column6) Values(@var1,@var2,@var3,@var6)", con);
            SqlCommand cmd = new SqlCommand("insert into Grants (StudentId,Type_of_voucher,Description,Value,koha_funds) Values(@StudentId,@Type_of_voucher,@Description,@Value,@koha_funds)", con);
            cmd.Parameters.AddWithValue("@StudentId", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@Type_of_voucher", ddl_voucher.Text);
            cmd.Parameters.AddWithValue("@Description", txt_description.Text);
            cmd.Parameters.AddWithValue("@Value", txt_value.Text);
            cmd.Parameters.AddWithValue("@koha_funds", txt_funds.Text);
            
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<Script>alert('Grant Added')</Script>");
            
        }
        else 
        { 
             SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);

            //con = new SqlConnection(strconnection);

            
            //string str = ("insert into Grants (column1,column2,column3,column6) Values(@var1,@var2,@var3,@var6)", con);
             SqlCommand cmd = new SqlCommand("insert into Grants (StudentId,Type_of_voucher,Value,koha_funds) Values(@StudentId,@Type_of_voucher,@Value,@koha_funds)", con);
            cmd.Parameters.AddWithValue("@StudentId", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@Type_of_voucher", ddl_voucher.Text);
            cmd.Parameters.AddWithValue("@Value", txt_value.Text);
            cmd.Parameters.AddWithValue("@koha_funds", txt_funds.Text);
            

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<Script>alert('Grant Added')</Script>");
            
        }
    }
    protected void ddl_voucher_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_voucher.SelectedValue == "Hardship")
        {
            rfv_description.Enabled = true;
            rfv_funds.Enabled = true;
            rfv_koha.Enabled = true;
            lbl_decription.Text = "Grant Description: ";
            lbl_value.Text = " Funds:";
            lbl_value.Font.Bold = true;
            lbl_decription.Font.Bold = true;
            lbl_decription.Enabled = true;
            lbl_koha.Font.Bold = true;
            txt_funds.Enabled = true;
            txt_value.Enabled = true;
            txt_description.Text = "";
            txt_description.Enabled = true;
            lbl_koha.ForeColor = System.Drawing.Color.Red;
            lbl_value.ForeColor = System.Drawing.Color.Red;
            lbl_decription.ForeColor = System.Drawing.Color.Red;
            
        }
        else if (ddl_voucher.SelectedValue == "---Select---")
        {
            txt_description.Enabled = false;
            txt_value.Enabled = false;
            txt_funds.Enabled = false;

            lbl_koha.ForeColor = System.Drawing.Color.Black;
            lbl_value.ForeColor = System.Drawing.Color.Black;
            lbl_decription.ForeColor = System.Drawing.Color.Black;
        }
        else if (ddl_voucher.SelectedValue == "Advice")
        {
            rfv_description.Enabled = true;
            rfv_funds.Enabled = false;
           
            rfv_koha.Enabled = false;
            txt_funds.Text = "0";
            txt_value.Text = "0";
            lbl_decription.Text = "Advice Description:";
            lbl_value.Font.Bold = false;
            lbl_decription.Font.Bold = true;
            txt_description.Enabled = true;
            lbl_koha.Font.Bold = false;
            txt_funds.Enabled = false;
            txt_value.Enabled = false;
            txt_description.Text = "";

            lbl_koha.ForeColor = System.Drawing.Color.Black;
            lbl_value.ForeColor = System.Drawing.Color.Black;
            lbl_decription.ForeColor = System.Drawing.Color.Red;

            // GrantDescriptiontxt.Width = 194;
            // GrantDescriptiontxt.Height = 121;
            // GrantDescriptiontxt.TextMode = MultiLine;
        }
        else
        {
            rfv_funds.Enabled = true;
            rfv_description.Enabled = false;
            rfv_koha.Enabled = false;
            txt_funds.Text = "0";
            lbl_value.Text = "Voucher Value:";
            lbl_value.Font.Bold = true;
            lbl_decription.Font.Bold = false;
           txt_description.Enabled = false;
            lbl_koha.Font.Bold = false;
            txt_funds.Enabled = false;
            txt_value.Enabled = true;

            lbl_koha.ForeColor = System.Drawing.Color.Black;
            lbl_value.ForeColor = System.Drawing.Color.Red;
            lbl_decription.ForeColor = System.Drawing.Color.Black;
        }

    }
}