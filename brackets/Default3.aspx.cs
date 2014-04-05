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

public partial class Default3 : System.Web.UI.Page
{
    connect con;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] == null)
        {
            Response.Redirect("AdminPanel.aspx");
        }

       }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string id = TextBox1.Text.ToUpper();
        string ans1 = TextBox2.Text.ToUpper();
        //string ans2 = TextBox3.Text.ToUpper();
        string col1 = TextBox6.Text.ToString();
      // string col2 = TextBox7.Text.ToString();
        
        string query1 = "select * from questions where id = '" + id + "'";
        connect con = new connect(query1);
        if (con.ds.Tables[0].Rows.Count == 0)
        {
        //    string query2 = "insert into questions (id,l7,l8,l9,l10) values ('" + id + "','" + ans1 + "','" + ans2 + "','" + ans3 + "','" + ans4 + "')";
          //   con = new connect(query2);
        }
        else
        {
            //update query
            string query3 = "update questions set " + col1 + " = '" + ans1 + "'" +  " where id = '" + id + "'";
            con = new connect(query3);
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("AdminPanel.aspx");
    }
}
