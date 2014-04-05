using System;
using System.Data;
using System.Configuration;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for getTTID
/// </summary>
public class code
{
    
	public code()
	{
	
	}

    //get the city to be selected
    public int getCityId(String id)
    {
        String val = id.Substring(2);
        int value = Int32.Parse(val);
        int x = value%4;
        return (x+1);    
    }

    //get the location to be selected
    public int getLocId(String id)
    {
        String val = id.Substring(2);
        int value = Int32.Parse(val);
        int x = value % 8;
        return (x);
    }
}
