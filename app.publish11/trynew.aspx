<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trynew.aspx.cs" Inherits="MasterPage19.trynew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>search Employee Data</h1>
                <%-- <h2>Display in Grid view control</h2>--%>

                <hr />
                Search :  
                <asp:TextBox ID="TxtSearch" runat="server" Height="18px" Width="145px"></asp:TextBox>
                <asp:Button ID="ButSearch" runat="server" Text="Search" OnClick="ButSearch_Click" />
                <hr />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True" EmptyDataText="no records found" CellPadding="4" CellSpacing="3" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </center>

        </div>
    </form>
</body>
</html>
