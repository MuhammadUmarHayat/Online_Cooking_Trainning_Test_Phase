<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="Online_Cooking_Trainning_Center_TestPhase.ViewProfile" %>

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
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RegisterationPage.aspx" CssClass="auto-style5">View Profile</asp:HyperLink>

</div>
           
         <div style="background-color:#00c1ff">




             




             Welcome!
             <asp:Label ID="Label1" runat="server" 
                 style="color: #660066; font-weight: 700; font-size: large"></asp:Label>
             <br />
             <br />
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                 CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" 
                         SortExpression="UserID" />
                     <asp:BoundField DataField="address" HeaderText="address" 
                         SortExpression="address" />
                     <asp:BoundField DataField="phonNo" HeaderText="phonNo" 
                         SortExpression="phonNo" />
                     <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                 </Columns>
                 <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                 <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                 <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                 <RowStyle BackColor="White" ForeColor="#003399" />
                 <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                 <SortedAscendingCellStyle BackColor="#EDF6F6" />
                 <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                 <SortedDescendingCellStyle BackColor="#D6DFDF" />
                 <SortedDescendingHeaderStyle BackColor="#002876" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:YahyaDesignDBConnectionString %>" 
                 SelectCommand="SELECT DISTINCT [UserID], [address], [phonNo], [email],[phonNo] FROM [Users] WHERE ([UserID] = @UserID)" UpdateCommand="update Users set  [address]=@address, [phonNo]=@phonNo, [email]=@email WHERE ([UserID] = @UserID)" DeleteCommand="delete from users WHERE ([UserID] = @UserID)">
                 <SelectParameters>
                     <asp:SessionParameter DefaultValue="Session(&quot;UserID&quot;)" Name="UserID" 
                         SessionField="UserID" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
             <br />
             <br />
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