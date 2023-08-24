<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="Stock.aspx.cs" Inherits="MasterPage19.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            text-align: center;
        }
        .pnlsearch1{
            margin-top:55px;
            background-color:#C0C0C0;   
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       
        <ContentTemplate>
           
    <asp:Panel ID="pnlbody" runat="server">
        <div ID="divid" runat="server" class="pnlsearch1">
                  <div class="pnlsearch">
                     
                        <h1 class="auto-style14">Search Data</h1>
                     
                            <div class="auto-style14">
                                Search :
                                <asp:TextBox ID="TxtSearch" runat="server" Height="18px" Width="145px"></asp:TextBox>
                                <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" CompletionInterval="100" CompletionSetCount="8" EnableCaching="false" Enabled="true" MinimumPrefixLength="1" ServiceMethod="GetItemList" TargetControlID="TxtSearch">
                                </ajaxToolkit:AutoCompleteExtender>
                                <asp:Button ID="ButSearch" runat="server" OnClick="ButSearch_Click" Text="Search" />
                        </div>
                        <hr />
                    </div>
                 </div>
           <center>
                      <h3> Stock </h3>
        <div class="auto-style8">
            <asp:GridView ID="grdviewstock" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style13" DataKeyNames="ID" DataSourceID="sds_stock" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="SR No">
                        <EditItemTemplate>
                          
                        </EditItemTemplate>
                        <ItemTemplate>
                                <%#Container.DataItemIndex+1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
                    <asp:BoundField DataField="PurchaseDate" HeaderText="PurchaseDate" SortExpression="PurchaseDate" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="ExpiryDate" HeaderText="ExpiryDate" SortExpression="ExpiryDate" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="Remark" HeaderText="Remark" SortExpression="Remark" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>
        <asp:ValidationSummary ID="vsstock" runat="server" ShowMessageBox="true" ValidationGroup="mmm" ForeColor="Red"  />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <asp:SqlDataSource ID="sds_stock" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>" SelectCommand="SELECT * FROM [Stock]">
        </asp:SqlDataSource>
        </asp:Panel>
               </ContentTemplate>
       </asp:UpdatePanel>     
       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
