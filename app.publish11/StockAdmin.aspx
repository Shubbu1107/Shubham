<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="StockAdmin.aspx.cs" Inherits="MasterPage19.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 2px;
        }
        #pnlbody{
           /* width:350px;*/
            text-align:center;

        }
        
        .auto-style4 {
            text-align: left;
        }
        
        .auto-style8 {
            text-align: center;
        }
        
        .auto-style13 {
            margin-right: 2px;
            margin-top: 0px;
            width: 1333PX;
        }
        .pnlsearch1{
            margin-top:50px;
            background-color:#C0C0C0;
        }
        .auto-style14 {
            text-align: left;
        }
        .auto-style15 {
            margin-right: 2px;
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       
        <ContentTemplate>
           
    <asp:Panel ID="pnlbody" runat="server">
        <div ID="divid" runat="server" class="pnlsearch1">
                  <div class="pnlsearch">
                     
                        <h1 class="auto-style8">Search Data</h1>
                     
                            <div class="auto-style8">
                                Search :
                                <asp:TextBox ID="TxtSearch" runat="server" Height="18px" Width="145px"></asp:TextBox>
                                <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" CompletionInterval="100"  CompletionSetCount="8" EnableCaching="false" Enabled="true" MinimumPrefixLength="1" ServiceMethod="GetItemList" TargetControlID="TxtSearch">
                                </ajaxToolkit:AutoCompleteExtender>
                                <asp:Button ID="ButSearch" runat="server" OnClick="ButSearch_Click" Text="Search" />
                        </div>
                        <hr />
                    </div>
                 </div>
           <center>
        <div class="auto-style14">
            <asp:GridView ID="grdviewstock" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style13" DataKeyNames="ID" DataSourceID="sds_stock" ForeColor="Black" GridLines="Vertical" ShowFooter="True" Width="1257px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="SR No">
                        <EditItemTemplate>
                          
                        </EditItemTemplate>
                        <ItemTemplate>
                           <%#Container.DataItemIndex+1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False" HeaderText="Action">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <div class="auto-style4">
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="btndeletee" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" ConfirmText="Are You Sure you Want To Delete This?" TargetControlID="btndeletee" />
                                
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:Button ID="btninsert" runat="server" Height="24px" OnClick="btninsert_Click" Text="Insert" ValidationGroup="mmm" Width="86px" />
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ItemName" SortExpression="ItemName">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtitemname" runat="server" Text='<%# Bind("ItemName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvitemname" runat="server" ControlToValidate="txtitemname" ErrorMessage="Please Enter Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_ftr_itemname" runat="server" ValidationGroup="mmm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_frt_name" runat="server" ControlToValidate="txt_ftr_itemname" ErrorMessage="Please Enter Name" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ItemName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CompanyName" SortExpression="CompanyName">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtcompany" runat="server" Text='<%# Bind("CompanyName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvcompanyname" runat="server" ControlToValidate="txtcompany" ErrorMessage="Please Enter Company name" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_ftr_company" runat="server" ValidationGroup="mmm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_frt_companyname" runat="server" ControlToValidate="txt_ftr_company" ErrorMessage="Please Enter CompanyName" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("CompanyName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtqunatity" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_frt_quantity" runat="server" ControlToValidate="txtqunatity" ErrorMessage="Please Enter CompanyName" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_ftr_quantity" runat="server" ValidationGroup="mmm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_frt_quantity" runat="server" ControlToValidate="txt_ftr_quantity" ErrorMessage="Please Enter quantity" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price" SortExpression="Price">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtprice" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPrice" runat="server" ControlToValidate="txtprice" ErrorMessage="Please Enter Price" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_ftr_Price" runat="server" ValidationGroup="mmm" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_frt_Price" runat="server" ControlToValidate="txt_ftr_Price" ErrorMessage="Please Enter Price" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TotalAmount" SortExpression="TotalAmount">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtamount" runat="server" Text='<%# Bind("TotalAmount") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAmount" runat="server" ControlToValidate="txtamount" ErrorMessage="Please Enter Price" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_ftr_Amount" runat="server" ValidationGroup="mmm" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_frt_Amount" runat="server" ControlToValidate="txt_ftr_Amount" ErrorMessage="Please Enter Price" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("TotalAmount") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PurchaseDate" SortExpression="PurchaseDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtpurchasedt" runat="server" Text='<%# Bind("PurchaseDate","{0:d}") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvpurchasedt" runat="server" ControlToValidate="txtpurchasedt" ErrorMessage="Please Enter Purchasedate" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_ftr_purchasedt" runat="server" TextMode="Date" ValidationGroup="mmm" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_frt_purchasedt" runat="server" ControlToValidate="txt_ftr_purchasedt" ErrorMessage="Please Enter Purchasedate" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("PurchaseDate","{0:d}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ExpiryDate" SortExpression="ExpiryDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtexpire" runat="server" Text='<%# Bind("ExpiryDate","{0:d}") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_ftr_expire" runat="server" Text='<%# Bind("ExpiryDate","{0:d}") %>' TextMode="Date"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("ExpiryDate","{0:d}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Remark" SortExpression="Remark">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtremark" runat="server" CssClass="auto-style2" Text='<%# Bind("Remark") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_remark" runat="server" ControlToValidate="txtremark" ErrorMessage="Please enter remark" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txt_ftr_remark" runat="server" Text='<%# Bind("Remark") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv_ftr_remark" runat="server" ControlToValidate="txt_ftr_remark" ErrorMessage="Please enter remark" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("Remark") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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
    <asp:SqlDataSource ID="sds_stock" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>" DeleteCommand="DELETE FROM [Stock] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Stock] ([ItemName], [CompanyName], [Quantity], [Price], [TotalAmount], [PurchaseDate], [ExpiryDate], [Remark]) VALUES (@ItemName, @CompanyName, @Quantity, @Price, @TotalAmount, @PurchaseDate, @ExpiryDate, @Remark)" SelectCommand="SELECT * FROM [Stock]" UpdateCommand="UPDATE [Stock] SET [ItemName] = @ItemName, [CompanyName] = @CompanyName, [Quantity] = @Quantity, [Price] = @Price, [TotalAmount] = @TotalAmount, [PurchaseDate] = @PurchaseDate, [ExpiryDate] = @ExpiryDate, [Remark] = @Remark WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="TotalAmount" Type="String" />
            <asp:Parameter DbType="Date" Name="PurchaseDate" />
            <asp:Parameter DbType="Date" Name="ExpiryDate" />
            <asp:Parameter Name="Remark" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="TotalAmount" Type="String" />
            <asp:Parameter DbType="Date" Name="PurchaseDate" />
            <asp:Parameter DbType="Date" Name="ExpiryDate" />
            <asp:Parameter Name="Remark" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
        </asp:Panel>
               </ContentTemplate>
       </asp:UpdatePanel>     
       
</asp:Content>
    
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
