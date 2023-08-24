<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="ItemType.aspx.cs" Inherits="MasterPage19.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style17 {
            width: 100%;
            border: 1px solid #000000;
            background-color: #ffffff;
            margin-top:20px;
        }
        .auto-style18 {
            height: 24px;
        }
        .auto-style27 {
            width: 618px;
        }
        .auto-style28 {
            text-align: center;
        }
         .auto-style32 {
             width: 368px;
         }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:UpdatePanel ID="uptype" runat="server">
       <ContentTemplate>
             <asp:Panel ID="pnlname" runat="server" Direction="LeftToRight" Font-Size="20px" BackColor="WhiteSmoke" Height="28px">
      <div class="auto-style16">
          ItemTypes</div>
                   </asp:Panel>
           
    <table cellspacing="4" class="auto-style17"> 
        <tr>
            <td class="auto-style18" style="font-size: 25px; font-weight: 300; text-align: center; background-color: #C0C0C0;">Item Types</td>
        </tr>
        <tr>
            <td>
                <table cellspacing="4" class="auto-style17">
                 
                    <tr class="auto-style28">
                     
                       
                        </td>
                        <td class="auto-style32">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style32">&nbsp;</td>
                        <td class="auto-style27">
                            <asp:SqlDataSource ID="SDSitemtype" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>" SelectCommand="SELECT * FROM [itemtype]">
                            </asp:SqlDataSource>
                            <asp:GridView ID="grdviewitype" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SDSitemtype" Width="592px" >
                                <Columns>
                                    <asp:TemplateField HeaderText="SR No">
                                        <EditItemTemplate>
                                           
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                             <%#Container.DataItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="ItemType" HeaderText="ItemType" SortExpression="ItemType" />
                                    <asp:BoundField DataField="Remark" HeaderText="Remark" SortExpression="Remark" />
                                </Columns>
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                            </asp:GridView>
                            <asp:ValidationSummary ID="vsitemtype" runat="server" ForeColor="Red" ValidationGroup="nmnm" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
     </ContentTemplate>
       </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
