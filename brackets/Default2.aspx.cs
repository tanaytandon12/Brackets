using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("AdminPanel.aspx");
        }

        TextBox1.Text = Session["ques"].ToString();
        TextBox2.Text = Session["loc"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ques = TextBox1.Text;
        string loc = TextBox2.Text;
        int id = Int32.Parse(TextBox3.Text.ToString()); ;
        int loc_city = Int32.Parse(TextBox4.Text.ToString()); 
        string sql = "insert into ques_loc (id,loc_ques,loc_ans,loc_city) values (" + id + ",'" + ques + "','" 
            + loc + "'," + loc_city + ")";
        connect con = new connect(sql);
        Response.Redirect("default4.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("default1.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("default3.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("default4.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("AdminPanel.aspx");
    }
}
