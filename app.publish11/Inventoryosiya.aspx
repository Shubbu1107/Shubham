<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="Inventoryosiya.aspx.cs" Inherits="MasterPage19.WebForm9" %>
 
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
        
       
              <asp:panel runat="server">
                   <div ID="divid" runat="server" class="pnlsearch1">
                  <div class="pnlsearch">
                     
                        <h1 class="auto-style25">search inventry Data</h1>
                     
                            <div class="auto-style25">
                                Search :
                                <asp:TextBox ID="TxtSearch" runat="server" Height="18px" Width="145px" ></asp:TextBox>
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
                  <asp:GridView ID="grdviewinventy" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style23" DataKeyNames="ID" DataSourceID="SDS_inventry" ForeColor="Black" GridLines="Vertical" >
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
                          <asp:BoundField DataField="ItemType" HeaderText="ItemType" SortExpression="ItemType" />
                          <asp:BoundField DataField="Name" HeaderText="AllotedTo" SortExpression="AllotedTo" />
                          <asp:BoundField DataField="AllotedDate" HeaderText="AllotedDate" SortExpression="AllotedDate" DataFormatString="{0:d}" />
                          <asp:BoundField DataField="returnDate" HeaderText="returnDate" SortExpression="returnDate" DataFormatString="{0:d}" />
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
                      <SortedDescendingHeaderStyle BackColor="#575357" Wrap="True" />
                  </asp:GridView>
                      </center>
              </div>
                </center>
  
     
                <asp:SqlDataSource ID="SDS_inventry" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>"
                    SelectCommand="select inventry.ID ,itemname.ItemName, itemtype.ItemType,Employee.Name,inventry.AllotedDate,inventry.returnDate,inventry.Remark from inventry
                       left join Employee on inventry.AllotedTo=Employee.ID
                       Left join itemname on inventry.ItemName=itemname.ID
                       left join itemtype on inventry.ItemType = itemtype.Id 
                    WHERE ([inventry].[AllotedTo] = @AllotedTo) 
                    order by AllotedDate">
                    <SelectParameters>
                        <asp:SessionParameter Name="AllotedTo" SessionField="id" Type="Int32" />
                    </SelectParameters>

            </asp:SqlDataSource>
     

                
     <%--   <asp:ValidationSummary ID="ValidationSummary2"  ForeColor="Red" runat="server" Width="1417px" />--%>
          
         
    </div>
          
           </ContentTemplate>
       </asp:UpdatePanel>

    <br /> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
