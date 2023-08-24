<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="inventoryAdmin.aspx.cs" Inherits="MasterPage19.inventoryosiya" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
            
        .auto-style23 {
            margin-top: 5px;
        }
    
        .auto-style24 {
            background-color: #999966;
        }
    
        .auto-style25 {
            text-align: center;
                margin-top: 54px;
        }
    
        .auto-style26 {
            background-color: #FFCCFF;
        }
        .pnlsearch1{
           background-color: #C0C0C0;   
        }
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  >
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
              <asp:panel runat="server">
                   <div ID="divid" runat="server" class="pnlsearch1">
                  <div class="pnlsearch">
                     
                        <h1 class="auto-style25">search inventry Data</h1>
                     
                            <div class="auto-style25">
                                Search :
                                <asp:TextBox ID="TxtSearch" runat="server" Height="18px" Width="145px" OnTextChanged="TxtSearch_TextChanged"></asp:TextBox>
                                <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" CompletionInterval="100" CompletionSetCount="2" EnableCaching="false" Enabled="true" MinimumPrefixLength="2" ServiceMethod="GetItemList"  TargetControlID="TxtSearch">
                                </ajaxToolkit:AutoCompleteExtender>
                                <asp:Button ID="ButSearch" runat="server" OnClick="ButSearch_Click" Text="Search" />
                        </div>
                        <hr />
                    </div>
                 </div>
              </asp:panel>
              <asp:Panel ID="Panel5" runat="server" CssClass="auto-style24" ForeColor="#FFCC99">
                  <div class="auto-style25" style="font-size: 20px; color: #000000">
                      Inventry</div>
              </asp:Panel>
              <div class="auto-style25">
                  <center>
                  <asp:GridView ID="grdviewinventy" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style23" DataKeyNames="ID" DataSourceID="SDS_inventry" ForeColor="Black" GridLines="Vertical" Height="391px" ShowFooter="True" Width="49%">
                      <AlternatingRowStyle BackColor="White" />
                      <Columns>
                          <asp:TemplateField HeaderText="SR. No">
                              <EditItemTemplate>
                                 
                              </EditItemTemplate>
                              <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Action" ShowHeader="False">
                              <EditItemTemplate>
                                  <asp:LinkButton ID="lbtnupdate" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                  &nbsp;<asp:LinkButton ID="lbtncencel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:LinkButton ID="lbtnedit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                  &nbsp;<asp:LinkButton ID="lbtndelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>

                                  <ajaxToolkit:ConfirmButtonExtender ID="cbedelete" runat="server"  ConfirmText="Are You Sure You Want To Delete This" TargetControlID="lbtndelete"/>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                              <EditItemTemplate>
                                  <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="lblftrID" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                              </ItemTemplate>
                              <FooterTemplate>
                                  <asp:LinkButton ID="IbInsert" runat="server" ForeColor="Black" OnClick="IbInsert_Click" ValidationGroup="Enter">Insert</asp:LinkButton>
                              </FooterTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="ItemName" SortExpression="ItemName">
                              <EditItemTemplate>
                                  <asp:DropDownList ID="nameddl" runat="server" AppendDataBoundItems="True" DataSourceID="SDS_itemname" DataTextField="ItemName" DataValueField="ID" SelectedValue='<%# Bind("ItemID") %>'>
                                      <asp:ListItem Text="Select" Value=" " />
                                  </asp:DropDownList>
                                  <asp:RequiredFieldValidator ID="itemname" runat="server" ControlToValidate="nameddl" ErrorMessage="Select Itemname not  Valid Name" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
                                  <asp:SqlDataSource ID="SDS_itemname" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>" SelectCommand="SELECT * FROM [itemname]"></asp:SqlDataSource>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="lblItemName" runat="server" Text='<%# Bind("ItemName") %>'></asp:Label>
                              </ItemTemplate>
                              <FooterTemplate>
                                  <asp:DropDownList ID="FooterIname" runat="server" AppendDataBoundItems="True" DataSourceID="SDS_ftr_itemname" DataTextField="ItemName" DataValueField="ID" SelectedValue='<%# Bind("ItemType") %>' ValidationGroup="Enter">
                                      <asp:ListItem Text="Select" Value=" " />
                                  </asp:DropDownList>
                                  <asp:RequiredFieldValidator ID="validIname" runat="server" ControlToValidate="FooterIname" ErrorMessage="Select ItemName not  Valid Name" ForeColor="Red" InitialValue="Select ItemName" Text="*" ValidationGroup="Enter">
                        </asp:RequiredFieldValidator>
                                  <asp:SqlDataSource ID="SDS_ftr_itemname" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>" SelectCommand="SELECT * FROM [itemname]"></asp:SqlDataSource>
                              </FooterTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="ItemType" SortExpression="ItemType">
                              <edititemtemplate>
                                  <asp:DropDownList ID="itemType" runat="server" appenddatabounditems="True" datasourceid="SDS_itemtype" datatextfield="ItemType" datavaluefield="Id" SelectedValue='<%# Bind("ItemTypeID") %>'>
                                      <asp:ListItem Text="Select" Value=" " />
                                  </asp:DropDownList>
                                  <asp:RequiredFieldValidator ID="itypeinsert" runat="server" controltovalidate="itemType" errormessage="select itemtype not  valid name" forecolor="red" initialvalue="itemtype" text="*"></asp:RequiredFieldValidator>
                                  <asp:SqlDataSource ID="SDS_itemtype" runat="server" connectionstring="<%$ connectionstrings:winserver %>" selectcommand="select * from [itemtype]"></asp:SqlDataSource>
                              </edititemtemplate>
                              <ItemTemplate>
                                  <asp:Label ID="lblItemType" runat="server" Text='<%# Bind("ItemType") %>'></asp:Label>
                              </ItemTemplate>
                              <FooterTemplate>
                                  <asp:DropDownList ID="FooterItemType" runat="server" AppendDataBoundItems="True" DataSourceID="SDS_ftr_itemtype" DataTextField="ItemType" DataValueField="Id" SelectedValue='<%# Bind("ItemType") %>' ValidationGroup="Enter">
                                      <asp:ListItem Text="Select" Value=" " />
                                  </asp:DropDownList>
                                  <asp:RequiredFieldValidator ID="TypeName" runat="server" ControlToValidate="FooterItemType" ErrorMessage="Select ItemType not  Valid Name" ForeColor="Red" InitialValue="Select ItemType" Text="*" ValidationGroup="Enter">
                        </asp:RequiredFieldValidator>
                                  <asp:SqlDataSource ID="SDS_ftr_itemtype" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>" SelectCommand="SELECT * FROM [itemtype]"></asp:SqlDataSource>
                              </FooterTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="AllotedTo" SortExpression="AllotedTo">
                              <EditItemTemplate>
                                  <asp:DropDownList ID="AllotedTo" runat="server" AppendDataBoundItems="True" DataSourceID="SD_emp" DataTextField="Name" DataValueField="ID" SelectedValue='<%# Bind("AllotedTo") %>'>
                                      <asp:ListItem Text="Select" Value=" " />
                                  </asp:DropDownList>
                                  <asp:RequiredFieldValidator ID="AllotedTovalidation" runat="server" ControlToValidate="AllotedTo" ErrorMessage="Select Employee not  Valid Name" ForeColor="Red" InitialValue="Employee" Text="*"></asp:RequiredFieldValidator>
                                  <asp:SqlDataSource ID="SD_emp" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label4" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                              </ItemTemplate>
                              <FooterTemplate>
                                  <asp:DropDownList ID="EmployeeName" runat="server" AppendDataBoundItems="True" DataSourceID="SDS_ftr_emp" DataTextField="NAME" DataValueField="ID" SelectedValue='<%# Bind("ItemType") %>' ValidationGroup="Enter">
                                      <asp:ListItem Text="Select" Value=" " />
                                  </asp:DropDownList>
                                  <asp:RequiredFieldValidator ID="Employeevalidation" runat="server" ControlToValidate="EmployeeName" ErrorMessage="Select Employee not  Valid Name" ForeColor="Red" InitialValue="Select employee" Text="*" ValidationGroup="Enter">
                        </asp:RequiredFieldValidator>
                                  <asp:SqlDataSource ID="SDS_ftr_emp" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
                              </FooterTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="AllotedDate" SortExpression="AllotedDate">
                              <EditItemTemplate>
                                  <asp:TextBox ID="allotedtxtbox" runat="server" Text='<%# Bind("AllotedDate","{0:d}") %>' ></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="Alloteddt" runat="server" ControlToValidate="allotedtxtbox" ErrorMessage="Select All not  Valid Name" ForeColor="Red" Text="*">
                        </asp:RequiredFieldValidator>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="lbl_AllotedDate" runat="server" Text='<%# Bind("AllotedDate" ,"{0:d}") %>'></asp:Label>
                              </ItemTemplate>
                              <footertemplate>
                                  <asp:TextBox ID="FootertextBox" runat="server" TextMode="Date" ValidationGroup="Enter"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldDate" runat="server" ControlToValidate="FootertextBox" ErrorMessage="Select All not  Valid Name" ForeColor="Red" Text="*" ValidationGroup="Enter">
                        </asp:RequiredFieldValidator>
                              </footertemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="returnDate" SortExpression="returnDate">
                              <EditItemTemplate>
                                  <asp:TextBox ID="ReturnDate" runat="server" Text='<%# Bind("ReturnDate","{0:d}") %>' TextMode="DateTime"></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="lbl_ReturnDate" runat="server" Text='<%# Bind("ReturnDate","{0:d}") %>'></asp:Label>
                              </ItemTemplate>
                              <FooterTemplate>
                                  <asp:TextBox ID="FooterReturndate" runat="server" TextMode="Date"></asp:TextBox>
                              </FooterTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Remark" SortExpression="Remark">
                              <EditItemTemplate>
                                  <asp:TextBox ID="Remark" runat="server" Text='<%# Bind("Remark") %>'  ></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="Remarkvalidation" runat="server"  ControlToValidate="Remark" ErrorMessage="Select All not  Valid Name" ForeColor="Red" Text="*">
                        </asp:RequiredFieldValidator>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="lbl_remark" runat="server" Text='<%# Bind("Remark") %>'></asp:Label>
                              </ItemTemplate>
                              <footertemplate>
                                  <asp:TextBox ID="FooterRemark" runat="server" ValidationGroup="Enter"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="Remrkk" runat="server" ControlToValidate="FooterRemark" ErrorMessage="Select All not  Valid Name" ForeColor="Red" Text="*" ValidationGroup="Enter">
                        </asp:RequiredFieldValidator>
                              </footertemplate>
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
                      <SortedDescendingHeaderStyle BackColor="#575357" Wrap="True" />
                  </asp:GridView>
                      </center>
              </div>
             
  
     
                <asp:SqlDataSource ID="SDS_inventry" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>" DeleteCommand="DELETE FROM [inventry] WHERE [ID] = @ID" InsertCommand="INSERT INTO [inventry] ([ItemName], [ItemType], [AllotedTo], [AllotedDate], [returnDate], [Remark]) VALUES (@ItemName, @ItemType, @AllotedTo, @AllotedDate, @returnDate, @Remark)"
                    SelectCommand="select inventry.ID,inventry.ItemName as ItemId ,itemname.ItemName,inventry.ItemType as ItemTypeId ,itemtype.ItemType,Employee.Name,
                    AllotedTo,inventry.AllotedDate,inventry.returnDate,inventry.Remark
                        from inventry
                       left join Employee on inventry.AllotedTo=Employee.ID
                       Left join itemname on inventry.ItemName=itemname.ID
                       left join itemtype on inventry.ItemType = itemtype.Id" 
                    
                    UpdateCommand="UPDATE [inventry] SET [ItemName] = @ItemID, [ItemType] = @ItemTypeID, [AllotedTo] = @AllotedTo, [AllotedDate] = @AllotedDate, [returnDate] = @returnDate, [Remark] = @Remark WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ItemName" Type="Int32" />
                        <asp:Parameter Name="ItemType" Type="Int32" />
                        <asp:Parameter Name="AllotedTo" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="AllotedDate"  />
                        <asp:Parameter DbType="Date" Name="returnDate" />
                        <asp:Parameter Name="Remark" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ItemID" Type="Int32" />
                        <asp:Parameter Name="ItemTypeID" Type="Int32" />
                        <asp:Parameter Name="AllotedTo" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="AllotedDate" />
                        <asp:Parameter DbType="Date" Name="returnDate" />
                        <asp:Parameter Name="Remark" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>

            </asp:SqlDataSource>
     

                
        <asp:ValidationSummary ID="vs_ftr" ValidationGroup="Enter" ForeColor="Red" runat="server" Width="1417px" />
     <%--   <asp:ValidationSummary ID="ValidationSummary2"  ForeColor="Red" runat="server" Width="1417px" />--%>
          
         
    </div>
          
           </ContentTemplate>
       </asp:UpdatePanel>

    <br /> 
          
    
    </asp:Content>
<asp:Content ID="CPH" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

