<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditRecipe.aspx.cs" Inherits="Online_Cooking_Trainning_Center_TestPhase.EditRecipe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Online Cooking Training Center Test phase</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong>Online Cooking Training Center Test phase

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx" 
                    CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" 
                    NavigateUrl="~/ViewProfile.aspx" CssClass="auto-style5">View Profile</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AddRecipes.aspx">Add Receipes</asp:HyperLink>
                |<asp:HyperLink ID="HyperLink5" runat="server" 
                    NavigateUrl="~/ViewReceipes.aspx">Search Receipes</asp:HyperLink>
                |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/EditRecipe.aspx">Edit Recipe</asp:HyperLink>
                |<asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/LogOut.aspx">LogOut</asp:HyperLink>

</div>
           
         <div style="background-color:#00c1ff">




             




             Welcome! 
             <asp:Label ID="Label1" runat="server" 
                 style="color: #660066; font-weight: 700; font-size: large"></asp:Label>
             <br />
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                 CellPadding="3" DataSourceID="SqlDataSource1">
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     <asp:BoundField DataField="foodtype" HeaderText="foodtype" 
                         SortExpression="foodtype" />
                     <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                     <asp:BoundField DataField="ingrediants" HeaderText="ingrediants" 
                         SortExpression="ingrediants" />
                     <asp:BoundField DataField="description" HeaderText="description" 
                         SortExpression="description" />
                     <asp:BoundField DataField="requiredTime" HeaderText="requiredTime" 
                         SortExpression="requiredTime" />
                     <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                     <asp:BoundField DataField="Author" HeaderText="Author" 
                         SortExpression="Author" />
                     <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                 </Columns>
                 <FooterStyle BackColor="White" ForeColor="#000066" />
                 <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                 <RowStyle ForeColor="#000066" />
                 <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#007DBB" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#00547E" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:YahyaDesignDBConnectionString %>" 
                 SelectCommand="SELECT * FROM [recipes] WHERE ([Author] = @Author)" UpdateCommand="update [recipes] set foodtype =@foodtype,title=@title,ingrediants=@ingrediants,description=@description,requiredTime=@requiredTime WHERE ([Author] = @Author)" DeleteCommand="Delete * FROM [recipes] WHERE ([Author] = @Author)">
                 <SelectParameters>
                     <asp:SessionParameter Name="Author" SessionField="UserID" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
             <br />




             




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>