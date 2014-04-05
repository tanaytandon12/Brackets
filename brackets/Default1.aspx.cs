using System;
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

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("AdminPanel.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string lat = TextBox1.Text;
        string lon = TextBox2.Text;
        string city = TextBox3.Text;
        int c_id = Int32.Parse(TextBox4.Text.ToString());
        string sql = "insert into ques_city (c_id,city_latitude,city_longitude,city_name) values (" + c_id + ",'" + lat
            + "','" + lon + "','" + city + "')";
        connect con = new connect(sql);
        Response.Redirect("default4.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("default4.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("AdminPanel.aspx");
    }
}
