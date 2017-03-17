<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Happersett_questionA.aspx.cs" Inherits="Happersett_Midterm2017_1_.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <asp:SqlDataSource runat="server"
            ID="Midterm"
            SelectCommand="SELECT * FROM Suppliers"
            ConnectionString="<%$ ConnectionStrings:Midterm %>" >
   </asp:SqlDataSource> 
    <asp:SqlDataSource 
            runat="server"
            ID="Midterm_select"
            SelectCommand="select * from Suppliers where CompanyName=@CompanyName"
            ConnectionString="<%$ ConnectionStrings:Midterm %>" >
          <SelectParameters>
            <asp:ControlParameter
              Name="CompanyName"
              ControlID="rb1"
              PropertyName="SelectedValue"
             /> 
           </SelectParameters>
       </asp:SqlDataSource>  
        <asp:RadioButtonList ID="rb1" DataSourceID="Midterm" DataTextField="CompanyName" runat="server"></asp:RadioButtonList>
        <asp:Button ID="Button1" runat="server" Text="Select" />
        <asp:Panel ID="Panel1" DataSourceId="Midterm_select"  runat="server" GroupingText="Supplier Details">
            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceId="Midterm_select"></asp:DetailsView>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
