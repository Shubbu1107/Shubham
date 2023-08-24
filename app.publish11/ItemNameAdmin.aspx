<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="ItemNameAdmin.aspx.cs" Inherits="MasterPage19.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            text-align: left;
        }
        .auto-style16 {
            text-align: center;
        }
        .pnlhearder{
            margin-top:55px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
         <asp:UpdatePanel ID="uptype" runat="server">
     <ContentTemplate>
   
         <asp:Panel ID="pnlname" runat="server" cssclass="pnlhearder" Font-Size="20px" BackColor="WhiteSmoke" Height="35px">
             <div class="auto-style16" style="border-style: solid; border-width: 1px; border-color: black;">
                 ItemName</div>

     
     </asp:Panel>
     <center>
  
    <asp:Panel ID="pnl" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px">
        
        <div class="auto-style14">
            <div class="auto-style13">
                <center>
                    <br />
                <asp:GridView ID="grdviewIname" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SDSiname" ForeColor="#333333" GridLines="None" ShowFooter="True" Width="327px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="SR No">
                            <EditItemTemplate>
                                
                            </EditItemTemplate>
                            <ItemTemplate>
                                  <%#Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action" ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="lbtndelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" ConfirmText="Are You Sure you Want To Delete This?" TargetControlID="lbtndelete" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                            <EditItemTemplate>
                                <asp:Label ID="lblId" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <div class="auto-style13">
                                    <asp:LinkButton ID="lbtninsert" runat="server" Font-Underline="False" ForeColor="Black" OnClick="lbtninsert_Click" ValidationGroup="mm">INSERT</asp:LinkButton>
                                </div>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_ftr_id" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ItemName" SortExpression="ItemName">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtname" runat="server" Text='<%# Bind("ItemName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvitemname" runat="server" ControlToValidate="txtname" ErrorMessage="please Enter Itemname " ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtftrname" runat="server" Text='<%# Bind("ItemName") %>' ValidationGroup="mm"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtftrname" ErrorMessage="please Enter Itemname " ForeColor="Red" SetFocusOnError="True" ValidationGroup="mm">*</asp:RequiredFieldValidator>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblname" runat="server" Text='<%# Bind("ItemName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Remark" SortExpression="Remark">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtremark" runat="server" Text='<%# Bind("Remark") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvremark" runat="server" ControlToValidate="txtremark" ErrorMessage="please Enter Remark" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txt_frt_remark" runat="server" Text='<%# Bind("Remark") %>' ValidationGroup="mm"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv_frt_remark" runat="server" ControlToValidate="txt_frt_remark" ErrorMessage="please Enter Remark" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mm">*</asp:RequiredFieldValidator>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbl_remark" runat="server" Text='<%# Bind("Remark") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                    <asp:SqlDataSource ID="SDSiname" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>" DeleteCommand="DELETE FROM [itemname] WHERE [ID] = @ID" InsertCommand="INSERT INTO [itemname] ([ItemName], [Remark]) VALUES (@ItemName, @Remark)" SelectCommand="SELECT * FROM [itemname]" UpdateCommand="UPDATE [itemname] SET [ItemName] = @ItemName, [Remark] = @Remark WHERE [ID] = @ID">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ItemName" Type="String" />
                            <asp:Parameter Name="Remark" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ItemName" Type="String" />
                            <asp:Parameter Name="Remark" Type="String" />
                            <asp:Parameter Name="ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    </center>
            </div>
            <asp:ValidationSummary ID="vsitemtype" runat="server" ForeColor="Red" HeaderText="You Have Recieved Errors : " ShowMessageBox="true" ValidationGroup="mm" />
        </div>
      
        </asp:Panel>
          </center>
          
            </ContentTemplate>
       </asp:UpdatePanel>
     
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
