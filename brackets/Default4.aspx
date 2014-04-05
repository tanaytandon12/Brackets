<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server" 
            style="top: 33px; left: 110px; position: absolute; height: 22px; width: 172px"></asp:TextBox>
        <br /><asp:TextBox ID="TextBox2" runat="server" 
            style="top: 77px; left: 131px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="location name"></asp:Label>
    </div>
    <p>
        <asp:Label ID="Label3" runat="server" Text="word length"></asp:Label>
    </p>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="top: 166px; left: 97px; position: absolute; height: 25px; width: 90px" 
        Text="generate" />
    <p>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="top: 164px; left: 294px; position: absolute; height: 26px; width: 56px" 
            Text="City" />
    </p>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        style="top: 164px; left: 416px; position: absolute; height: 26px; width: 56px" 
        Text="Logout" />
    </form>
</body>
</html>
