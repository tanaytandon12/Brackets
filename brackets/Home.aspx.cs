using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;


public partial class Home : System.Web.UI.Page
{
    connect con;
    string sql;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

            MySqlConnection ct = new MySqlConnection(@"server=localhost; uid=root; password=akgec; database=tt;");
            sql = "select * from user where email='" + TextBox1.Text + "' and pwd = '" + TextBox2.Text + "'";
            MySqlCommand cmdt = new MySqlCommand(sql,ct);
            MySqlDataAdapter adt = new MySqlDataAdapter(cmdt);
            DataSet dt = new DataSet();
            adt.Fill(dt);

            if (dt.Tables[0].Rows.Count == 0)
            {
                Label1.Text = "Wrong Credentials";
                Label1.Visible = true;

            }
            else
            {
                Session["id"] = dt.Tables[0].Rows[0]["id"];

                sql = "select * from player where id = '" + Session["id"] + "'";
                con = new connect(sql);

                if (con.ds.Tables[0].Rows.Count == 0)
                {
                    sql = "insert into player (id) values ('" + Session["id"] + "')";
                    con = new connect(sql);
                    sql = "insert into user(id,name,email,pwd,clg) values ('" + Session["id"] + "','" + dt.Tables[0].Rows[0]["name"] + "','" + dt.Tables[0].Rows[0]["email"] + "','" + dt.Tables[0].Rows[0]["pwd"] + "','" + dt.Tables[0].Rows[0]["clg"] + "')";
                    con = new connect(sql);
                }

                Response.Redirect("innerpage.aspx");

            }

        
    }
}
