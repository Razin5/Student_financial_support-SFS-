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

public partial class year_to_date : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_year.Text = DropDownList1.SelectedItem.ToString();
        //SqlConnection con =new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);


        //SqlCommand cmd = new SqlCommand();

        //cmd.CommandText = "select COUNT(distinct StudentId) as TotalStudents,COUNT(StudentId) as TotalGrants,SUM(Value) as GrantAmount,SUM(koha_funds) as KohaGrantAmount,SUM(Value)+SUM(koha_funds) as TotalGrantAmount from Grants where YEAR(Date_of_grant)=@Year";

        //cmd.Connection = con;
        //cmd.Parameters.AddWithValue("@Year", txt_year.Text);
        //con.Open();
        //cmd.ExecuteNonQuery();

    }
}