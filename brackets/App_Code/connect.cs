using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;



/// <summary>
/// Summary description for connect
/// </summary>
public class connect
{

    MySqlConnection con;
    MySqlCommand cmd;
    MySqlDataAdapter ad;
    public DataSet ds = new DataSet();
    public connect()
    {

        con = new MySqlConnection(ConfigurationManager.ConnectionStrings["connect_brackets"].ConnectionString);
        cmd = new MySqlCommand();
        cmd.Connection = con;
    }

    public connect(string q)
    {

        con = new MySqlConnection(ConfigurationManager.ConnectionStrings["connect_brackets"].ConnectionString);
        cmd = new MySqlCommand(q, con);
        if (q[0] == 's')
        {
            filldata();
        }
        else
        {
            executenonquery();
        }

    }
    public connect(string q, params string[] s)
    {

        con = new MySqlConnection(ConfigurationManager.ConnectionStrings["connect_brackets"].ConnectionString);
        cmd = new MySqlCommand(q, con);
        AddParameters(s);
        if (q[0] == 's')
        {
            filldata();
        }
        else
        {
            executenonquery();
        }

    }
    public string query
    {
        set
        {
            cmd.CommandText = value;
        }
        get
        {
            return cmd.CommandText;
        }
    }
    public void executenonquery()
    {
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void AddParameters(params string[] s)
    {
        if (s.Length % 2 != 0)
        {
            return;
        }
        for (int i = 0; i < s.Length; i += 2)
            cmd.Parameters.AddWithValue(s[i], s[i + 1]);
    }
    public void filldata()
    {
        ad = new MySqlDataAdapter();
        ad.SelectCommand = cmd;
        ad.Fill(ds);
    }

}
