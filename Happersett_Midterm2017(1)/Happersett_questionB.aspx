<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Happersett_questionB.aspx.cs" Inherits="Happersett_Midterm2017_1_.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:SqlDataSource runat="server"
            ID="Midterm_deets"
            SelectCommand="SELECT SupplierID, CompanyName, ContactName, State, Phone FROM Suppliers ORDER BY CompanyName DESC"
            ConnectionString="<%$ ConnectionStrings:Midterm %>" >
    </asp:SqlDataSource>
        <h1> All Suppliers </h1>
         <asp:GridView ID="GridView1" runat="server" DataSourceID="Midterm_deets" AllowPaging="false" AllowSorting="true"></asp:GridView>

        <h1> Search </h1>
      <asp:SqlDataSource 
            runat="server"
            ID="Midterm_Search"
            SelectCommand="select * from Suppliers where CompanyName LIKE @CompanyName + '%'"
            ConnectionString="<%$ ConnectionStrings:Midterm %>" >
          <SelectParameters>
            <asp:ControlParameter
              Name="CompanyName"
              ControlID="textsearch"
              PropertyName="Text"
             /> 
           </SelectParameters>
       </asp:SqlDataSource>  
            
        <asp:TextBox ID="textsearch" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <asp:GridView ID="gv1" DataSourceID="Midterm_Search" runat="server" Visible="False"></asp:GridView>
    </div>


    </form>
</body>
</html>
