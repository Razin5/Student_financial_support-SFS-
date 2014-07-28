using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CampusTotal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    ddl_campus.Items.Add("Hamilton");
        //    ddl_campus.Items.Add("Napier");
        //    ddl_campus.Items.Add("Wellington");
        //}
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddl_campus_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    int totalvalue = 0;
    int totalfund = 0;
    int sum = 0;
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            totalvalue += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Value"));
            totalfund += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "koha_funds"));
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {

            e.Row.Cells[2].Text = "Total Value";
            e.Row.Cells[3].Text = totalvalue.ToString();
            e.Row.Cells[4].Text = totalfund.ToString();
        }
        sum = totalvalue + totalfund;
        Label1.Text = "Total funds for " + ddl_campus.SelectedItem.ToString() + " campus are " + sum;
    }
}