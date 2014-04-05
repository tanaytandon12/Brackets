<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #form1
        {
            height: 429px;
        }
        #TextArea1
        {
            top: 262px;
            left: 92px;
            position: absolute;
            height: 30px;
            width: 461px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 358px">
    
        <asp:Label ID="Label1" runat="server" Text="lattiude"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" TextMode = "MultiLine"
            style="top: 18px; left: 112px; position: absolute; height: 47px; width: 639px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" TextMode = "MultiLine"
            
            style="top: 103px; left: 115px; position: absolute; height: 59px; width: 637px"></asp:TextBox>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <asp:Label ID="Label2" runat="server" Text="longitude"></asp:Label>
        
        <asp:TextBox ID="TextBox3" runat="server" TextMode = "MultiLine" 
            style="top: 206px; position: absolute; height: 22px; width: 128px; left: 111px"></asp:TextBox>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <asp:Label ID="Label3" runat="server" Text="city"></asp:Label>
       
                      
        <br/>
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            style="top: 312px; left: 511px; position: absolute; height: 26px; width: 56px" 
            Text="Logout" />
        <br/>
       <asp:Label ID="Label4" runat="server" Text="c_id"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" TextMode = "MultiLine"  
            style="top: 245px; left: 108px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        
        
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="top: 312px; left: 115px; position: absolute; height: 26px; width: 56px" 
            Text="submit" />
               
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            style="top: 308px; left: 405px; position: absolute; height: 26px; width: 56px" 
            Text="location" />
               
    </div>
    
    
        
    </form>
</body>
</html>
