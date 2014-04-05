<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <asp:Label ID="Label1" runat="server" Text="">Alphabet</asp:Label>
    
    <asp:TextBox ID="TextBox1" runat="server" 
        style="top: 12px; left: 93px; position: absolute; height: 23px; width: 128px"></asp:TextBox>
    
        <br/>
    <br/>    
        <asp:Label ID="Label2" runat="server" Text="">answer1</asp:Label>
    
    
    <br/>
    <br/>
    <asp:Label ID="Label3" runat="server" Text="Label">answer2</asp:Label>
    
    <asp:TextBox ID="TextBox3" runat="server" 
        
        
        style="top: 94px; left: 102px; position: absolute; height: 21px; width: 179px"></asp:TextBox>
    
    <br/>
    <br/>
    
    <asp:TextBox ID="TextBox7" runat="server" 
        
        style="top: 248px; left: 66px; position: absolute; height: 21px; width: 179px"></asp:TextBox>
    
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        style="top: 101px; left: 432px; position: absolute; height: 26px; width: 56px" 
        Text="Logout" />
    
    <br/>
   
    <br/>
    
    <br/>
    <br/>
    
    <asp:Label ID="Label6" runat="server" Text="">col1</asp:Label>
    
    
            <asp:TextBox ID="TextBox6" runat="server" 
        style="top: 214px; left: 67px; position: absolute; height: 22px; width: 183px" 
        ></asp:TextBox>    
    
    <br/>
    
    
            <asp:TextBox ID="TextBox2" runat="server" 
                
        
        style="top: 57px; left: 108px; position: absolute; height: 22px; width: 183px" 
        ></asp:TextBox>    
    
    <br/>
    <asp:Label ID="Label7" runat="server" Text="Label">col2</asp:Label>
    
    <br/>
    <br/>
    
        
    
    <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click1" 
        
        style="top: 344px; left: 100px; position: absolute; height: 26px; width: 56px" />
    </form>
</body>
</html>
