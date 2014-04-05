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

public partial class Default4 : System.Web.UI.Page
{
    string ques;
    connect con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("AdminPanel.aspx");
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string loc = TextBox1.Text.ToUpper();
        string word = TextBox2.Text.ToString();
        string c;
        int a;
        Random r = new Random();
        for (int i = 0; i < loc.Length; i++)
        {
            c = loc[i].ToString();
            if (c == " ")
            {
                c = "32";
            }
            if (word == "1")
            {
                string query = "select l1 from questions where id = '" + c + "'";
                con = new connect(query);
                ques = ques + "[" + con.ds.Tables[0].Rows[0][0].ToString() + "]";
            }
            else
            {
                if (word == "2")
                {
                    a = r.Next(0, 2);
                    do
                    {

                        string query = "select l3 from questions where id = '" + c + "'";
                        con = new connect(query);
                        ques = ques + "[" + con.ds.Tables[0].Rows[0][0].ToString() + "]";
                    } while (con.ds.Tables[0].Rows[0][0].ToString() == "");
                }
                else
                {
                    if (word == "3")
                    {
                        a = r.Next(0, 3);
                        do
                        {

                            string query = "select l3,l5,l6 from questions where id = '" + c + "'";
                            con = new connect(query);
                            ques = ques + "[" + con.ds.Tables[0].Rows[0][a].ToString() + "]";
                        } while (con.ds.Tables[0].Rows[0][a].ToString() == "");
                    }
                    else
                    {
                        if (word == "4")
                        {
                            a = r.Next(0, 4);
                            do
                            {

                                string query = "select l7,l5,l6,l8 from questions where id = '" + c + "'";
                                con = new connect(query);
                                ques = ques + "[" + con.ds.Tables[0].Rows[0][a].ToString() + "]";
                            } while (con.ds.Tables[0].Rows[0][a].ToString() == "");
                        }
                        else
                        {
                            if (word == "5")
                            {
                                a = r.Next(0, 4);
                                do
                                {

                                    string query = "select l7,l8,l9,l10 from questions where id = '" + c + "'";
                                    con = new connect(query);
                                    ques = ques + "[" + con.ds.Tables[0].Rows[0][a].ToString() + "]";
                                } while (con.ds.Tables[0].Rows[0][a].ToString() == "");
                            }
                            else
                            {
                                if (word == "6")
                                {
                                    a = r.Next(0, 4);
                                    do
                                    {

                                        string query = "select l9,l10,l11 from questions where id = '" + c + "'";
                                        con = new connect(query);
                                        ques = ques + "[" + con.ds.Tables[0].Rows[0][a].ToString() + "]";
                                    } while (con.ds.Tables[0].Rows[0][a].ToString() == "");
                                }
                            }
                        }
                    }
                }

            }
           
          }

        Session["ques"] = ques;
        Session["loc"] = TextBox1.Text.ToString();
        Response.Redirect("Default2.aspx");
            
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("default1.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("AdminPanel.aspx");
    }
}
