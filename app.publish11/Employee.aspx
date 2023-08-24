<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="MasterPage19.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       /* .pnlsearch{
            text-align:center;
                 position: relative;
    top: 20px;
    left: 600px;
    background-color:skyblue;
        }*/
        .pnlsearch1{
            text-align:center;
            background-color:#C0C0C0;
        }
        #GridView2{
            margin-top:0px;

        }
        .auto-style1 {
            background-color: #FFFFFF;
        }
        .auto-style2 {
            margin-top: 10px;
        }
        #form1{
            margin-top:55px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="up_emp" runat="server">
       <ContentTemplate>
             <%--<asp:Panel ID="Panel1" runat="server" Width="1289px">
                              <div class="auto-style9">
                                  Welcome :- <%=Session["Name"].ToString()%>
                              </div>
                          </asp:Panel>--%>
      <form id="form1" >
        <div>
            <div ID="divid" runat="server" class="pnlsearch1">
                  <div class="pnlsearch">
                     
                        <h1 class="pnlsearch1">search Employee Data</h1>
                      <br />
                     
                            Search :
                            <asp:TextBox ID="TxtSearch" runat="server" Height="18px" Width="145px"></asp:TextBox>
                        <ajaxToolkit:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" 
                             TargetControlID="TxtSearch" Enabled="true" EnableCaching="false" ServiceMethod="GetItemList"
                             CompletionInterval="100" CompletionSetCount="8" MinimumPrefixLength="1">
                        </ajaxToolkit:AutoCompleteExtender> 
                            <asp:Button ID="ButSearch" runat="server"  OnClick="ButSearch_Click"  Text="Search" />
                        <hr />
                    </div>
                 </div>
           <center>
                      
                      <%-- <asp:Panel ID="Panel4" runat="server">--%>
                            <asp:GridView ID="grdviewemp" runat="server" AutoGenerateColumns="False" CellPadding="4" CellSpacing="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="no records found" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True" CssClass="auto-style2" Allowpaging="True" >
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:TemplateField HeaderText="SR NO">
                                        <EditItemTemplate>
                                            
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                                     <%#Container.DataItemIndex+1 %>
                                               </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="SurName" HeaderText="SurName" SortExpression="SurName" />
                                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" DataFormatString="{0:d}" />
                                    <asp:BoundField DataField="DOJ" HeaderText="DOJ" SortExpression="DOJ" DataFormatString="{0:d}" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                </Columns>
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
                       <%-- </asp:Panel>--%>
            </center>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>" DeleteCommand="DELETE FROM [Employee] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Employee] ([Name], [SurName], [Contact], [DOB], [DOJ], [Email]) VALUES (@Name, @SurName, @Contact, @DOB, @DOJ, @Email)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [Name] = @Name, [SurName] = @SurName, [Contact] = @Contact, [DOB] = @DOB, [DOJ] = @DOJ, [Email] = @Email WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="SurName" Type="String" />
                        <asp:Parameter Name="Contact" Type="String" />
                        <asp:Parameter DbType="Date" Name="DOB" />
                        <asp:Parameter DbType="Date" Name="DOJ" />
                        <asp:Parameter Name="Email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="SurName" Type="String" />
                        <asp:Parameter Name="Contact" Type="String" />
                        <asp:Parameter DbType="Date" Name="DOB" />
                        <asp:Parameter DbType="Date" Name="DOJ" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
         

        </div>
    </form>
   
        <%--<table cellspacing="4" class="auto-style17">
            <tr>
                <td class="auto-style28" style="background-color: #FFFFFF">Select Name</td>
                <td class="auto-style18" style="background-color: #FFFFFF">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="201px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="auto-style25" style="background-color: #FFFFFF">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28" style="background-color: #FFFFFF">&nbsp;</td>
                <td class="auto-style18" style="background-color: #FFFFFF">
                    &nbsp;</td>
                <td class="auto-style25" style="background-color: #FFFFFF">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" style="background-color: #FFFFFF"></td>
                <td class="auto-style27" style="background-color: #FFFFFF">
                    <br />
                    <strong>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="163px" Width="1052px" AutoGenerateColumns="False" CellSpacing="2" >
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
                    </strong>
                </td>
                <td class="auto-style26" style="background-color: #FFFFFF"></td>
            </tr>
        </table>--%>
              </ContentTemplate>
       </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
