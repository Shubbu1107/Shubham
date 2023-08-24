<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="ItemTypeAdmin.aspx.cs" Inherits="MasterPage19.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
            border: 1px solid #000000;
            background-color: #ffffff;
            margin-top:55px;
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
        .auto-style31 {
        width: 422px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:UpdatePanel ID="uptype" runat="server">
       <ContentTemplate>
           
    <table cellspacing="4" class="auto-style17">
        <tr>
            <td class="auto-style18" style="font-size: 25px; font-weight: 300; text-align: center; background-color: #C0C0C0;">Item Types</td>
        </tr>
        <tr>
            <td>
                <table cellspacing="4" class="auto-style17">
                 
                    <tr class="auto-style28">
                     
                       
                        </td>
                        <td class="auto-style31">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style31">&nbsp;</td>
                        <td class="auto-style27">
                            <asp:SqlDataSource ID="SDSitemtype" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>" DeleteCommand="DELETE FROM [itemtype] WHERE [Id] = @Id" InsertCommand="INSERT INTO [itemtype] ([ItemType], [Remark]) VALUES (@ItemType, @Remark)" SelectCommand="SELECT * FROM [itemtype]" UpdateCommand="UPDATE [itemtype] SET [ItemType] = @ItemType, [Remark] = @Remark WHERE [Id] = @Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ItemType" Type="String" />
                                    <asp:Parameter Name="Remark" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="ItemType" Type="String" />
                                    <asp:Parameter Name="Remark" Type="String" />
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="grdviewitype" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SDSitemtype" Height="185px" OnSelectedIndexChanged="grdviewitype_SelectedIndexChanged" ShowFooter="True" Width="332px">
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
                                    <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                                        <EditItemTemplate>
                                            <asp:Label ID="lbl_id" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:LinkButton ID="lbtninsert" runat="server" Font-Underline="False" ForeColor="Black" OnClick="lbtninsert_Click" ValidationGroup="nmnm">INSERT</asp:LinkButton>
                                        </FooterTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_ftr_id" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="ItemType" SortExpression="ItemType">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txttypee" runat="server" Text='<%# Bind("ItemType") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvitemname" runat="server" ControlToValidate="txttypee" ErrorMessage="please Enter Itemname " ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txtftritemtype" runat="server" ValidationGroup="nmnm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvitemtype" runat="server" ControlToValidate="txtftritemtype" ErrorMessage="Plaese Enter ItemName" ForeColor="Red" SetFocusOnError="True" ValidationGroup="nmnm">*</asp:RequiredFieldValidator>
                                        </FooterTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblitemtype" runat="server" Text='<%# Bind("ItemType") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Remark" SortExpression="Remark">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtremak" runat="server" Text='<%# Bind("Remark") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvremark" runat="server" ControlToValidate="txtremak" ErrorMessage="Please Enter Remark" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <FooterTemplate>
                                            <asp:TextBox ID="txtfrtremark" runat="server" Text='<%# Bind("Remark") %>' ValidationGroup="nmnm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvremark" runat="server" ControlToValidate="txtfrtremark" ErrorMessage="Please Enter Remark" ForeColor="Red" SetFocusOnError="True" ValidationGroup="nmnm">*</asp:RequiredFieldValidator>
                                        </FooterTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Remark") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
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
