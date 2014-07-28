using System;
using System.Collections.Generic;
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

public partial class Main_Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strconnection = ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString;
        SqlConnection con = new SqlConnection(strconnection);

        string str = "select count(*) from Students_registration";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        Session["studentID"] = "";
        Page.Form.DefaultButton = btn_search.UniqueID;
        txt_enter.Focus();
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);

        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "select Student_Id,fname from Students_registration";


        cmd.Connection = con;

        if (con.State == ConnectionState.Closed) con.Open();

        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            if (dr["Student_Id"].ToString() ==txt_enter.Text.Trim())
            {
                Session["studentID"] = txt_enter.Text;
                 Response.Redirect("Display_Info.aspx");
                return;
            }
            else if (dr["fname"].ToString() == txt_enter.Text.Trim())
            {
                Session["studentID"] = txt_enter.Text;
                 Response.Redirect("Display_Info.aspx");
                return;
            }
            
            else
            {
                Response.Write("<script>alert('Student does not exists')</script>");
                //lblMessage.Visible = true;
                //lblMessage.Text = "Student not present";
            }
        }
    }
        
        //if (txt_enter.Text == "Student Id")
        //{
        //    Response.Redirect("Display_Info.aspx"); 
        //}
        //else if (txt_enter.Text == "fname")
        //{
        //    Response.Redirect("Display_Info.aspx");
        //}
        //else
        //{
        //    Response.Write("<script>alert('Student does not exists')</script>");
        //}
   
}
