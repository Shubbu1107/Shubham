 

 <%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="EmployeeAdmin.aspx.cs" Inherits="MasterPage19.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

       .table1{
           text-align: center;
       }
       .auto-style17 {
           width: 100%;
           border: 1px solid #000000;
           /*background-color: #66ccff;*/
       }
       .auto-style19 {
           width: 993px;
           height: 9px;
       }
       .auto-style21
       {
           height: 477px;
       }
       .auto-style22 
       {
           width: 100%;
           height: 477px;
       }
       .auto-style24 
       {
        height: 477px;
        width: 155px;
       }
    .auto-style25 {
        height: 9px;
        width: 155px;
    }
    .auto-style27 {
        height: 9px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
      
    <asp:UpdatePanel ID="uptype" runat="server">
       <ContentTemplate>
       
    <div   style=" margin-top: 55px;">  
        <div>
       <div style="text-align: center; background-color: #669999;" ><asp:Label ID="Label1" runat="server" Text="EMPLOYEE TABLE " Font-Bold="True" Font-Size="25px"></asp:Label></div>
        
       <br />
       &nbsp;&nbsp;&nbsp;
        <table cellspacing="4" class="auto-style17">
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style22">
                    <asp:GridView ID="grdviewemp" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SDSEmployee" ForeColor="#333333" GridLines="None" ShowFooter="True" AllowPaging="True">
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
                                    <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server"  ConfirmText="Are You Sure you Want To Delete This?"  TargetControlID="lbtndelete"/>
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                                <EditItemTemplate>
                                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:LinkButton ValidationGroup="nnn" ID="lbtninsert" runat="server" Font-Underline="False" ForeColor="Black"  OnClick="lbtninsert_Click" >INSERT</asp:LinkButton>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblftrid" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtname" runat="server" Text='<%# Bind("Name") %>' ToolTip="Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="txtname" ErrorMessage="Please Enter Surname" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtfootername" runat="server" Text='<%# Bind("Name") %>' ToolTip="Name" ValidationGroup="nnn"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvftrname" runat="server" ControlToValidate="txtfootername" ErrorMessage="Plaese Enter Name" ForeColor="Red" SetFocusOnError="True" ValidationGroup="nnn" >*</asp:RequiredFieldValidator>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblname" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="SURNAME" SortExpression="SURNAME">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtsurname" runat="server" Text='<%# Bind("SurName") %>' ToolTip="Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvsurname" runat="server" ControlToValidate="txtsurname" ErrorMessage="Please Enter Surname" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtftrsrnm" runat="server" Text='<%# Bind("SURNAME") %>' ToolTip="Surname" ValidationGroup="nnn"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvftrsurname" runat="server" ControlToValidate="txtftrsrnm" ErrorMessage="Please Enter Surname" ForeColor="Red" SetFocusOnError="True" ValidationGroup="nnn">*</asp:RequiredFieldValidator>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_surname" runat="server" Text='<%# Bind("SURNAME") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CONTACT" SortExpression="CONTACT">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtcontact" runat="server" Text='<%# Bind("CONTACT") %>' ToolTip="Contact" ValidationGroup="mmm"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revcontact" runat="server" ErrorMessage="Please Enter 10 Digit Number " ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10}"  ControlToValidate="txtcontact" ValidationGroup="mmm">*</asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="rfvcontact1" runat="server" ControlToValidate="txtcontact"  ErrorMessage="Please Enter DOJ" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtftrcontact" runat="server" Text='<%# Bind("CONTACT") %>' ToolTip="Contact" ValidationGroup="nnn" Height="16px" style="height: 22px; width: 128px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revfrtcontact" runat="server" ControlToValidate="txtftrcontact" ErrorMessage="Plaese Enter 10 Digit Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10}" ValidationGroup="nnn" >*</asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="rfftrcontact" runat="server" ControlToValidate="txtftrcontact"  ErrorMessage="Please Enter DOJ" ForeColor="Red" SetFocusOnError="True"  ValidationGroup="nnn">*</asp:RequiredFieldValidator>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblcontact" runat="server" Text='<%# Bind("CONTACT") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DOB" SortExpression="DOB">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDOB" runat="server" Text='<%# Bind("DOB" ,"{0:d}") %>' ToolTip="DOB" ValidationGroup="mmm"></asp:TextBox>
                                    <%--<asp:RegularExpressionValidator ID="revDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Plaese Enter DOB" ForeColor="Red" SetFocusOnError="True" ToolTip="DOB" ValidationExpression="(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[1,2])-(19|20)\d{2}" ValidationGroup="mmm">*</asp:RegularExpressionValidator>--%>
                                    <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB"  ErrorMessage="Please Enter DOJ" ForeColor="Red" SetFocusOnError="True" ToolTip="DOJ" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtftrDOB" runat="server" Text='<%# Bind("DOB","{0:d}") %>' ToolTip="DOB" ValidationGroup="nnn" TextMode="Date"></asp:TextBox>
                                    <%--<asp:RegularExpressionValidator ID="revftrDOB" runat="server" ControlToValidate="txtftrDOB" ErrorMessage="Please Enter DOB" ForeColor="Red" SetFocusOnError="True" ToolTip="DOB" ValidationExpression="(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[1,2])-(19|20)\d{2}" ValidationGroup="nnn" >*</asp:RegularExpressionValidator>--%>
                                    <asp:RequiredFieldValidator ID="rfftrDOB" runat="server" ControlToValidate="txtftrDOB" ErrorMessage="Please Enter DOB" ForeColor="Red" SetFocusOnError="True" ToolTip="DOB" ValidationGroup="nnn">*</asp:RequiredFieldValidator>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_dob" runat="server" Text='<%# Bind("DOB","{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DOJ" SortExpression="DOJ">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtDOj" runat="server" Text='<%# Bind("DOJ","{0:d}") %>' ToolTip="DOJ" OnTextChanged="txtDOj_TextChanged" ValidationGroup="mmm"></asp:TextBox>
                                    <%--<asp:RegularExpressionValidator ID="revDOJ" runat="server" ControlToValidate="txtDOj" ErrorMessage="Please Enter DOJ" ForeColor="Red" SetFocusOnError="True" ToolTip="DOB" ValidationExpression="(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[1,2])-(19|20)\d{2}" ValidationGroup="mmm">*</asp:RegularExpressionValidator>--%>
                                    <asp:RequiredFieldValidator ID="rfvdoj" runat="server" ControlToValidate="txtDOj" EnableClientScript="False" EnableViewState="False" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True" ToolTip="DOJ" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtftrDOJ" runat="server" Text='<%# Bind("DOJ","{0:d}") %>' ValidationGroup="nnn" EnableTheming="True" TextMode="Date"></asp:TextBox>
                                    <%--<asp:RegularExpressionValidator ID="revftDOJ" runat="server" ControlToValidate="txtftrDOj" ErrorMessage="Please Enter DOJ" ForeColor="Red" SetFocusOnError="True" ValidationExpression="(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[1,2])-(19|20)\d{2}" ValidationGroup="nnn">*</asp:RegularExpressionValidator>--%>
                                    <asp:RequiredFieldValidator ID="rfftDOJ" runat="server" ControlToValidate="txtftrDOJ" ErrorMessage="Please Enter DOJ" ForeColor="Red" SetFocusOnError="True"  ValidationGroup="nnn">*</asp:RequiredFieldValidator>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbldoj" runat="server" Text='<%# Bind("DOJ","{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EMAIL" SortExpression="EMAIL">
                                <FooterTemplate>
                                    <asp:TextBox ID="txteftrmail" runat="server" Text='<%# Bind("EMAIL") %>' ToolTip="EMAIL" ValidationGroup="nnn" Width="130px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txteftrmail" ErrorMessage="Invalid Email Address " ForeColor="Red" SetFocusOnError="True"  ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ValidationGroup="nnn" >*</asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="rfftremail" runat="server" ControlToValidate="txteftrmail"  ErrorMessage="Please Enter Email" ForeColor="Red"  ValidationGroup="nnn">*</asp:RequiredFieldValidator>
                                </FooterTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblemail" runat="server" Text='<%# Bind("EMAIL") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView> 

                 <%--   <asp:ValidationSummary ID="vsgrdview" runat="server" ValidationGroup="nnn" ShowMessageBox="True"  ForeColor="Red" ShowSummary="true"/>--%>




                    <asp:SqlDataSource ID="SDSEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>" DeleteCommand="DELETE FROM [Employee] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Employee] ([Name], [SURNAME], [CONTACT], [DOB], [DOJ], [EMAIL]) VALUES (@Name, @SURNAME, @CONTACT, @DOB, @DOJ, @EMAIL)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [Name] = @Name, [SURNAME] = @SURNAME, [CONTACT] = @CONTACT, [DOB] = @DOB, [DOJ] = @DOJ, [EMAIL] = @EMAIL WHERE [ID] = @ID">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="SURNAME" Type="String" />
                            <asp:Parameter Name="CONTACT" Type="String" />
                            <asp:Parameter DbType="Date" Name="DOB" />
                            <asp:Parameter DbType="Date" Name="DOJ" />
                            <asp:Parameter Name="EMAIL" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="SURNAME" Type="String" />
                            <asp:Parameter Name="CONTACT" Type="String" />
                            <asp:Parameter DbType="Date" Name="DOB" />
                            <asp:Parameter DbType="Date" Name="DOJ" />
                            <asp:Parameter Name="EMAIL" Type="String" />
                            <asp:Parameter Name="ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource> 
                  
                    <asp:ValidationSummary ValidationGroup="nnn" ID="vsgrdview" runat="server" ForeColor="Red" ShowSummary="true" HeaderText="You received the following errors:" ShowMessageBox="true" />
                    <asp:ValidationSummary ID="vs_ftr" runat="server" ValidationGroup="mmm" ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="auto-style25"></td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
        </table>

       <br />
         </div>
          
       </div>
      </ContentTemplate>
       </asp:UpdatePanel>
</asp:Content>
