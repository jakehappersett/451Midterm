<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Happersett_default.aspx.cs" Inherits="Happersett_Midterm2017_1_.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <h1>Jake Happersett Midterm</h1>
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem NavigateUrl="~/Happersett_questionA/Happersett_questionA.aspx" Text="Question A " Value="Question A "></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Happersett_questionB/Happersett_questionB.aspx" Text="Question B " Value="Question B "></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Happersett_questionC/Happersett_questionC.aspx" Text="Question C" Value="Question C"></asp:MenuItem>
            </Items>
        </asp:Menu>

        <h3>Question D</h3>
        <p>
          1. The basic difference between DataBoundControl and ObjectDataSource is the scale of the application that is going to be created from them.  A clean multi layered application should be built with the ObjectDataSource control to represent the data. 


            <br />
            <br />
            2. In general DataSet is going to collect tables in memory while DataReader is going to store them server side. The use case for each of them is very scenario-based, large data sets are probably better to use with DataReader as it will be harder for a personal computer to process. 
        </p>
    
    </div>
    </form>
</body>
</html>
