using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Display_Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_result.Text = Session["studentID"].ToString();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow selectRow = GridView1.SelectedRow;

        Session["studentID"] = GridView1.DataKeys[selectRow.RowIndex]["Student_Id"].ToString();
       Response.Redirect ("Students_grant.aspx");
    }
    protected void btn_addgrant_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add_grant.aspx");
    }
}