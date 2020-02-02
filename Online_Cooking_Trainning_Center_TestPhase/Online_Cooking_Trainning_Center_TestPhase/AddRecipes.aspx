<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRecipes.aspx.cs" Inherits="Online_Cooking_Trainning_Center_TestPhase.AddRecipes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">




<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Online Cooking Training Center Test phase</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .style1
        {
            width: 100%;
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
             <table class="style1">
                 <tr>
                     <td>
                         Food Type</td>
                     <td>
                         <asp:TextBox ID="txtFoodType" runat="server" Width="391px"></asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td>
                         Category</td>
                     <td>
                         <asp:TextBox ID="txtCategory" runat="server" Width="391px"></asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td>
                         Recipe Title</td>
                     <td>
                         <asp:TextBox ID="txtReceipe" runat="server" Width="392px"></asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td>
                         Ingrediants</td>
                     <td colspan="3">
                         <asp:TextBox ID="txtIngrediants" runat="server" Height="155px" 
                             TextMode="MultiLine" Width="395px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         Description</td>
                     <td colspan="3">
                         <asp:TextBox ID="txtDescription" runat="server" Height="155px" 
                             TextMode="MultiLine" Width="395px"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         Required Time</td>
                     <td>
                         <asp:TextBox ID="txtRtime" runat="server"></asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td>
                         Photo</td>
                     <td>
                         <asp:FileUpload ID="FileUpload1" runat="server" />
                     </td>
                     <td>
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td>
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td>
                         &nbsp;</td>
                     <td>
                         <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" />
                     </td>
                     <td>
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
             </table>
             <br />




             




           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>