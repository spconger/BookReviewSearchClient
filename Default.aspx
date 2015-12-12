<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Choose a Review by Title</h1>
        <p><asp:DropDownList ID="AuthorDropDownList" runat="server"></asp:DropDownList><br />
            <asp:Button ID="ReviewsButton" runat="server" Text="Get Reviews" OnClick="ReviewsButton_Click" />
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <h2><%#Eval("BookTitle") %></h2>
                    <hr />
                    <h3><%#Eval("ReviewTitle") %></h3>
                    <p><strong><%#Eval("ReviewerName") %></strong></p>
                    <p><%#Eval("ReviewDate") %>    rating  <%#Eval("BookRating") %></p>
                    <hr />
                    <p><%#Eval("ReviewBody") %></p>

                </ItemTemplate>

            </asp:DataList>
    </div>
    </form>
</body>
</html>
