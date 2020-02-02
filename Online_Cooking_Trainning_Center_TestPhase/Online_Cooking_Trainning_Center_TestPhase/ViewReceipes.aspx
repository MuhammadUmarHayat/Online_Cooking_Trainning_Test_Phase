<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewReceipes.aspx.cs" Inherits="Online_Cooking_Trainning_Center_TestPhase.ViewReceipes" %>

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


             <br />
           Enter Type  <asp:TextBox ID="txtType" runat="server"></asp:TextBox>
           
             <asp:Button ID="BtnSearch" runat="server" Text="Seaarch" 
                 onclick="BtnSearch_Click" />
                   <br />
             <div>

        <asp:DataList ID="DataList1" runat="server" BackColor="Gray" BorderColor="#666666"

            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"

            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="1" RepeatDirection="Horizontal"

            Width="600px">

            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />

            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"

                HorizontalAlign="Center" VerticalAlign="Middle" />

            <HeaderTemplate>

                Recipe Details</HeaderTemplate>

            <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px" />

            <ItemTemplate>

                <asp:Image ID="imgEmp" runat="server" Width="100px" Height="120px" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "photo") %>' style="padding-left:40px"/><br />

                <b>Category :</b>

                <asp:Label ID="lblCName" runat="server" Text='<%# Bind("category") %>'></asp:Label>

                <br />

                <b>title:</b>

                <asp:Label ID="lblName" runat="server" Text='<%# Bind("title") %>'></asp:Label>

                <br />

               <b> ingrediants:</b>

                <asp:Label ID="lblCity" runat="server" Text=' <%# Bind("ingrediants") %>'></asp:Label>

                <br />

                <b>Method :</b>

                <asp:Label ID="lblCountry" runat="server" Text='<%# Bind("description") %>'></asp:Label>

                <br />
                <b>requiredTime:</b>

                <asp:Label ID="Label2" runat="server" Text='<%# Bind("requiredTime") %>'></asp:Label>

                <br />
                <b>Author :</b>

                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Author") %>'></asp:Label>

                <br />
                <b>Date of making :</b>

                <asp:Label ID="Label4" runat="server" Text='<%# Bind("date") %>'></asp:Label>

                <br />







            </ItemTemplate>

        </asp:DataList>

    </div>

             <br />
             <br />
             <br />




             




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>