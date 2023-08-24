<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="inventry.aspx.cs" Inherits="MasterPage19.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            width: 100%;
            border-color: #000000;
            border-width: 0;
            background-color: #ffffff;
            height: 849px;
            margin-right: 18px;
        }
        .auto-style22 {
            height: 20px;
            text-align: center;
        }
        .auto-style23 {
            width: 65%;
            height: 167px;
            border: 1px solid #000000;
            background-color: #ffffff;
        }
        .auto-style26 {
            width: 460px;
            height: 55px;
        }
        .auto-style30 {
            width: 100%;
            border: 1px solid #000000;
            background-color: #ffffff;
        }
        .auto-style31 {
            width: 223px;
        }
        .auto-style32 {
            width: 435px;
        }
        .auto-style43 {
            width: 199px;
            height: 45px;
        }
        .auto-style44 {
            width: 165px;
            height: 45px;
        }
        .auto-style45 {
            width: 460px;
            height: 45px;
            text-align: left;
        }
        .auto-style46 {
            height: 45px;
        }
        .auto-style47 {
            width: 199px;
            height: 46px;
        }
        .auto-style48 {
            width: 165px;
            height: 46px;
        }
        .auto-style49 {
            width: 460px;
            height: 46px;
            text-align: left;
        }
        .auto-style50 {
            height: 46px;
        }
        .auto-style51 {
            width: 199px;
            height: 70px;
        }
        .auto-style52 {
            width: 165px;
            height: 70px;
        }
        .auto-style53 {
            width: 460px;
            height: 70px;
            text-align: left;
        }
        .auto-style54 {
            height: 70px;
        }
        .auto-style55 {
            width: 199px;
            height: 69px;
        }
        .auto-style56 {
            width: 165px;
            height: 69px;
        }
        .auto-style57 {
            width: 460px;
            height: 69px;
            text-align: left;
        }
        .auto-style58 {
            height: 69px;
        }
        .auto-style59 {
            width: 199px;
            height: 55px;
        }
        .auto-style60 {
            width: 165px;
            height: 55px;
        }
        .auto-style61 {
            height: 55px;
        }
        .auto-style62 {
            width: 223px;
            height: 168px;
        }
        .auto-style63 {
            width: 435px;
            height: 168px;
        }
        .auto-style64 {
            height: 168px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">--%>
       <ContentTemplate>
           <asp:Panel ID="Panel1" runat="server">
       <div style="background-color: #99CCFF">
           <table cellspacing="4" class="auto-style99">
               <table cellspacing="4" class="auto-style17">
                   <tr>
                       <td class="auto-style22" style="font-size: 25px; font-weight: 300;">Inventry Table<table align="center" cellspacing="4" class="auto-style23">
                           <tr>
                               <td class="auto-style59"></td>
                               <td class="auto-style60"></td>
                               <td class="auto-style26"></td>
                               <td class="auto-style61"></td>
                           </tr>
                           <tr>
                               <td class="auto-style51"></td>
                               <td class="auto-style52" style="font-size: 20px">Id</td>
                               <td class="auto-style53">
                                   <asp:DropDownList ID="idddl1" runat="server" Height="31px" Width="250px" ValidationGroup="mnmn" AutoPostBack="True" DataSourceID="null" OnSelectedIndexChanged="IDDDL1_SelectedIndexChanged">
                                   </asp:DropDownList>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="IDDDL1" ErrorMessage="Enter Valid keyWord" Font-Size="13px" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mnmn"></asp:RequiredFieldValidator>
                               </td>
                               <td class="auto-style54"></td>
                           </tr>
                           <tr>
                               <td class="auto-style43"></td>
                               <td class="auto-style44" style="font-size: 20px">ItemName</td>
                               <td class="auto-style45">
                                   <asp:DropDownList ID="inameddl" runat="server" Height="31px" Width="250px" ValidationGroup="nnn">
                                   </asp:DropDownList>
                                   <ajaxToolkit:CascadingDropDown ID="CascadingDropDown1" runat="server"  TargetControlID="inameddl" ParentControlID="inameddl"
                                    />
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="inameddl" ErrorMessage="Enter Valid keyWord" Font-Size="13px" ForeColor="Red" SetFocusOnError="True" ValidationGroup="nnn"></asp:RequiredFieldValidator>
                               </td>
                               <td class="auto-style46"></td>
                           </tr>
                           <tr>
                               <td class="auto-style43"></td>
                               <td class="auto-style44" style="font-size: 20px">ItemType</td>
                               <td class="auto-style45">
                                   <asp:DropDownList ID="itypeddl" runat="server" Height="31px" Width="250px" ValidationGroup="nnn" DataSourceID="null">
                                   </asp:DropDownList>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="itypeddl" ErrorMessage="Enter Valid keyWord" Font-Size="13px" ForeColor="Red" SetFocusOnError="True" ValidationGroup="nnn"></asp:RequiredFieldValidator>
                               </td>
                               <td class="auto-style46"></td>
                           </tr>
                           <tr>
                               <td class="auto-style43"></td>
                               <td class="auto-style44" style="font-size: 20px">AllotedTo</td>
                               <td class="auto-style45">
                                   <asp:DropDownList ID="iAlloteddl" runat="server" Height="31px" Width="250px" ValidationGroup="nnn" DataSourceID="null">
                                   </asp:DropDownList>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="iAlloteddl" ErrorMessage="Please Select " Font-Size="13px" ForeColor="Red" SetFocusOnError="True" ValidationGroup="nnn"></asp:RequiredFieldValidator>
                               </td>
                               <td class="auto-style46"></td>
                           </tr>
                           <tr>
                               <td class="auto-style55"></td>
                               <td class="auto-style56" style="font-size: 20px">allotedDate </td>
                               <td class="auto-style57">
                                   <asp:TextBox ID="AllotedDatebox" runat="server" Height="25px" TextMode="Date" Width="243px" ValidationGroup="nnn"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="AllotedDatebox" ErrorMessage="Please Enter Valid KeyWord" Font-Size="13px" ForeColor="Red" SetFocusOnError="True" ValidationGroup="nnn"></asp:RequiredFieldValidator>
                               </td>
                               <td class="auto-style58"></td>
                           </tr>


                             <tr>
                               <td class="auto-style55"></td>
                               <td class="auto-style56" style="font-size: 20px">allotedDate </td>
                               <td class="auto-style57">
                                   <asp:TextBox ID="Returndate" runat="server" Height="25px" TextMode="Date" Width="243px" ></asp:TextBox>
                                
                               </td>
                               <td class="auto-style58"></td>
                           </tr



                           <tr>
                               <tr>
                                   <td class="auto-style47"></td>
                                   <td class="auto-style48" style="font-size: 20px">Remark<td class="auto-style49">
                                       <asp:TextBox ID="Remarkbox" runat="server" Height="25px" ValidationGroup="nnn" Width="244px"></asp:TextBox>
                                       </td>
                                       <td class="auto-style50"></td>
                                   </td>
                           </tr>
                           <tr>
                               <td colspan="4">
                                   <asp:Button ID="Insertbtn" runat="server" Font-Bold="True" Font-Size="20px" Height="27px" OnClick="Insertbtn_Click" Text="Insert" ValidationGroup="nnn" Width="93px" />
                                   &nbsp;&nbsp;<asp:Button ID="Updatebtn" runat="server" Font-Bold="True" Font-Names="20px" Font-Size="20px" Height="27px" OnClick="Updatebtn_Click" Text="Update" ValidationGroup="nnn" Width="93px" />
                                   &nbsp;
                                   <asp:Button ID="deletebtn" runat="server" Font-Bold="True" Font-Size="20px" Height="27px" OnClick="deletebtn_Click" Text="Delete" ValidationGroup="mnmn" Width="93px" />
                               </td>
                           </tr>
                           <br />
                           <div>
                               <table cellspacing="4" class="auto-style30">
                                   <tr>
                                       <td class="auto-style31">&nbsp;</td>
                                       <td class="auto-style32">&nbsp;</td>
                                       <td>&nbsp;</td>
                                   </tr>
                                   <tr>
                                       <td class="auto-style62"></td>
                                       <td class="auto-style63">
                                           <asp:GridView ID="Grddt" runat="server" AutoGenerateColumns="False" CellPadding="4" CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource1" Font-Size="15px" ForeColor="#333333" GridLines="None" Width="868px">
                                               <Columns>
                                                   <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                                   <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                                                   <asp:BoundField DataField="ItemType" HeaderText="ItemType" SortExpression="ItemType" />
                                                   <asp:BoundField DataField="AllotedTo" HeaderText="AllotedTo" SortExpression="AllotedTo" />
                                                   <asp:BoundField DataField="AllotedDate" HeaderText="AllotedDate" SortExpression="AllotedDate" />
                                                   <asp:BoundField DataField="returnDate" HeaderText="returnDate" SortExpression="returnDate" />
                                                   <asp:BoundField DataField="Remark" HeaderText="Remark" SortExpression="Remark" />
                                               </Columns>
                                               <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                               <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                               <RowStyle BackColor="#E3EAEB" />
                                               <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                               <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                               <SortedAscendingHeaderStyle BackColor="#246B61" />
                                               <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                               <SortedDescendingHeaderStyle BackColor="#15524A" />
                                           </asp:GridView>
                                       </td>
                                       <td class="auto-style64"></td>
                                   </tr>
                                   <tr>
                                       <td class="auto-style31">&nbsp;</td>
                                       <td class="auto-style32">
                                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WinServer %>" DeleteCommand="DELETE FROM [inventry] WHERE [ID] = @ID" InsertCommand="INSERT INTO [inventry] ([ItemName], [ItemType], [AllotedTo], [AllotedDate], [returnDate], [Remark]) VALUES (@ItemName, @ItemType, @AllotedTo, @AllotedDate, @returnDate, @Remark)" SelectCommand="SELECT * FROM [inventry]" UpdateCommand="UPDATE [inventry] SET [ItemName] = @ItemName, [ItemType] = @ItemType, [AllotedTo] = @AllotedTo, [AllotedDate] = @AllotedDate, [returnDate] = @returnDate, [Remark] = @Remark WHERE [ID] = @ID">
                                               <DeleteParameters>
                                                   <asp:Parameter Name="ID" Type="Int32" />
                                               </DeleteParameters>
                                               <InsertParameters>
                                                   <asp:Parameter Name="ItemName" Type="Int32" />
                                                   <asp:Parameter Name="ItemType" Type="Int32" />
                                                   <asp:Parameter Name="AllotedTo" Type="Int32" />
                                                   <asp:Parameter DbType="Date" Name="AllotedDate" />
                                                   <asp:Parameter DbType="Date" Name="returnDate" />
                                                   <asp:Parameter Name="Remark" Type="String" />
                                               </InsertParameters>
                                               <UpdateParameters>
                                                   <asp:Parameter Name="ItemName" Type="Int32" />
                                                   <asp:Parameter Name="ItemType" Type="Int32" />
                                                   <asp:Parameter Name="AllotedTo" Type="Int32" />
                                                   <asp:Parameter DbType="Date" Name="AllotedDate" />
                                                   <asp:Parameter DbType="Date" Name="returnDate" />
                                                   <asp:Parameter Name="Remark" Type="String" />
                                                   <asp:Parameter Name="ID" Type="Int32" />
                                               </UpdateParameters>
                                           </asp:SqlDataSource>
                                       </td>
                                       <td>&nbsp;</td>
                                   </tr>
                               </table>
                           </div>
                           </tr>
                       </table>
               </table>
       </div>
    </asp:Panel>
       </ContentTemplate>
<%--</asp:UpdatePanel>--%>
       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
