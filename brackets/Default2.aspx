<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 384px">
    
        <asp:Label ID="Label1" runat="server" Text="question"></asp:Label>
    
        <asp:TextBox ID="TextBox1" runat="server" TextMode = "MultiLine"
            
            style="top: 15px; left: 110px; position: absolute; height: 78px; width: 387px"></asp:TextBox>
         
        <br /> 
        <br />
        <br />
        <br />
        <br />
        <br />       
        <asp:Label ID="Label2" runat="server" Text="location"></asp:Label>
               
        <asp:TextBox ID="TextBox2" runat="server" 
            style="top: 124px; left: 121px; position: absolute; height: 29px; width: 328px"></asp:TextBox>
         
        <br />
        <br />     
        <br />  
        <asp:Label ID="Label3" runat="server" Text="id"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" 
            style="top: 186px; left: 121px; position: absolute; height: 24px; width: 128px"></asp:TextBox>
        
        <br />
        <br />     
        <asp:Button ID="Button3" runat="server" Text="Alphabet" onclick="Button3_Click" 
            
            style="top: 47px; left: 521px; position: absolute; height: 26px; width: 77px" />
            
        <br />  
        <asp:Label ID="Label4" runat="server" Text="loc_city"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" 
            style="top: 248px; left: 119px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="top: 315px; left: 119px; position: absolute; height: 26px; width: 56px" 
            Text="submit" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="top: 46px; left: 621px; position: absolute; height: 26px; width: 56px" 
            Text="city" />
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            style="top: 49px; left: 700px; position: absolute; height: 26px; width: 120px" 
            Text="Location" />
            
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
            style="top: 320px; left: 692px; position: absolute; height: 26px; width: 56px" 
            Text="Logout" />
            
    </div>
    </form>
</body>
</html>
