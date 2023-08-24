<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="MasterPage19.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .rounderdcorrner {
            font-size: 11pt;
            margin-left: auto;
            margin-right: auto;
            margin-top: 1px;
            padding: 3px;
            border-top: 1px solid;
            border-left: 1px solid;
            border-right: 1px solid;
            border-bottom: 1px solid;
            -moz-border-radius: 8px;
            -webkit-border-radius: 8px;
            text-align: center;
        }

        .background {
            background-color: whitesmoke;
            filter: alpha(opacity=90);
            /*opacity: 0.8;*/
        }

        .container {
             padding-top: 10px;
    padding-left: 10px;
    width: 400px;
    border: none;
    box-shadow: 2px 2px 4px 0px #b78f8f;
    border-radius: 14px;
            height: 580px;
        }
      
         .background_forget {
            background-color: whitesmoke;
            filter: alpha(opacity=90);
            /*opacity: 0.8;*/
        }
         .rounderdcorrner_forget {
            font-size: 11pt;
            margin-left: auto;
            margin-right: auto;
            margin-top: 1px;
            padding: 3px;
            border-top: 1px solid;
            border-left: 1px solid;
            border-right: 1px solid;
            border-bottom: 1px solid;
            -moz-border-radius: 8px;
            -webkit-border-radius: 8px;
            text-align: center;
        }
         .container_forget {
               width: 400px;
    border: none;
    box-shadow: 2px 2px 4px 0px #b78f8f;
    border-radius: 14px;
    height: auto !important;
    padding: 0px 20px;
        }
        .auto-style3 {
           text-align: center;
    width: 100%;
    font-weight: 100;
        }
        .auto-style8 {
            margin-bottom: 0px;
          margin-left:250px;
        }
        #form2 {
            height: 500px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        #txtusername {
            margin: 25px;
            background-color: none;
        }
        .button-login {
            background-color: red;
        }
        .lbtnsignUp {
            text-decoration: none;
            color: #fff;
            padding: 10px 45px;
            border: 1px solid black;
            background-color: cornflowerblue;
            border-radius: 8px;
            cursor: pointer;
            border: none;
        }
        .btnlogin {
            text-decoration: none;
            color: #fff;
            padding: 10px 45px;
            border: 1px solid black;
            background-color: cornflowerblue;
            border-radius: 8px;
            cursor: pointer;
            border: none;
            margin-left: 20px;
        }
        .btnlforgetpass {
            margin-right: 20px;
        }
        .Backbtn {
            margin-top: 50px;
        }
        body {
            background-image: url('./Image/photo6.jpg');
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
            height: 81vh;
            padding: auto;
        }
        .auto-style19 {
              text-align: center;
              padding: 50px;
              display: inline-block;
              position: relative;
              bottom: 40%;
              left: 18%;
        }
        .auto-style20 {
            text-align: center;
            margin-top: 20px;
            margin-left: 10px;
            padding: 5px;
        }
        #txtusername {
            margin-right: 15px;
        }
        #TxtPassWord {
            margin-left: 20px;
        }
        .auto-style21 {
             width: 460px;
               box-shadow: 1px 2px 6px 0px black;
            margin-top: 55px;
             padding-top: 30px;
            max-width: 454px;
             /*display: inline-block;*/
             right: 139px;
              position: relative;
              /*padding-bottom: 30px;*/
              /*padding:38px;*/
         }
        .auto-style22 {
            text-align: center;
            margin-right: 40%;
        }
        #Image1{
            margin-left:500px;
        }
        .auto-style23 {
            width: 100%;
            height: 236px;
        }
        .auto-style24 {
            text-align: center;
            width: 100%;
            height: 451px;
        }
        .auto-style25 {
          font-size: 16px;
    background-color: #3399FF;
    margin-bottom: 20px;
    border: none;
    color: #ffffff;
    border-radius: 6px;
    padding: 6px 10px;
        }
        .auto-style26 {
            text-align: center;
            width: 100%;
            height: 59px;
        }
        .auto-style27 {
              text-align: right;
    width: 100%;
    margin-bottom: -10px;
        }
        .auto-style28 {
                 text-align: right;
    margin-top: 0px;
    margin-bottom: -10px;
        }
        /*input#btncencel {
    padding: 6px 14px;
    margin-top: 18px;
}*/

           input#btnsave {
          padding: 6px 54px;
    margin-top: 18px;
    font-size: 20px;
    color: #ffffff;
    border: none;
    background: #0000ff;
    margin-right: 30px;
}
           .auto-style24 input {
    border: 1px solid red;
    padding: 4px 10px;
    border-radius: 4px;
}
           div#adduser {
    margin-top: -20px !important;
}
        
        .auto-style29 {
            margin-left: 40px;
        }
        
        </style>
</head>
<%--        <asp:Panel ID="Panel1" runat="server" Width="1289px">
                              <div class="auto-style9">
                                  Welcome :- <%=Session["Name"].ToString()%>
                              </div>
            </asp:Panel>--%>
<body>
    <div class="auto-style18">

        <form id="form2" runat="server" class="auto-style17">
            <div class="auto-style19">
                <p class="auto-style29">
                <br />
                <asp:Image ID="Image1" runat="server" CssClass="auto-style8" Height="63px" ImageUrl="~/Image/osiyatechlogo.jpg" Width="224px" />
                </p>
            </div>

            <div class="auto-style22">

                <asp:Panel ID="Panel2" runat="server">
                    <table cellspacing="4" class="auto-style21">
                        <tr>
                            <td class="auto-style20">USERNAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtusername0" CssClass="txtusername" runat="server" Height="29px" placeholder="Username" ValidationGroup="cr" Width="238px"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="rfvusername0" runat="server" ControlToValidate="txtusername0" Display="Dynamic" ErrorMessage=" Please Enter Username" ForeColor="Red" SetFocusOnError="True" ValidationGroup="cr"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">PASSWORD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TxtPassWord0" runat="server" Height="28px" placeholder="Password" TextMode="Password" ValidationGroup="cr" Width="236px"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtPassWord0" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" ValidationGroup="cr"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <asp:Button ID="brnlogin" runat="server" CssClass="btnlogin" Font-Bold="True" OnClick="btnlogin_Click" Text="LOG IN" ValidationGroup="cr" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="lbtnsignup" runat="server" CssClass="lbtnsignUp" Font-Underline="False">Sign Up</asp:LinkButton>
                              
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style26">
                                <asp:LinkButton ID="forgetpass" CssClass="btnlforgetpass" runat="server" OnClick="LinkButton2_Click">Forget Password?</asp:LinkButton>
                                <asp:LinkButton ID="bakbutton" CssClass="Backbtn" runat="server" Font-Underline="False" ForeColor="Black" PostBackUrl="~/Home.aspx">Back</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:Panel ID="Panel3" runat="server" Height="616px">
                 
                        <div class="container rounderdcorrner" id="adduser" role="dialog">
                            <div class="background">
                                
                                        <h1 class="auto-style28">
                               <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" ImageAlign="Baseline" ImageUrl="~/Image/crossimg.jpg" Width="16px" />
                                        </h1>
                                        <h1 class="auto-style3">Add Employee </h1>
                                    </div>
                                    <div class="auto-style24">
                                       
                                         <label>Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
                                        &nbsp;<asp:TextBox ID="txtuusername" CssClass="form-control" placeholder="Username" ToolTip="Username" runat="server" Height="22px" Width="131px" ValidationGroup="mmm" />
                                        <asp:RequiredFieldValidator ID="rfvuser" runat="server" ControlToValidate="txtuusername" ErrorMessage="Please Enter userName" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                        
                                            <br />
                                            <br />

                                        <label>password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                                        &nbsp;<asp:TextBox ID="txtpassw1" CssClass="form-control" placeholder="Password" ToolTip="Password" runat="server" Height="22px" Width="131px" TextMode="Password" ValidationGroup="mmm" />
                                        <asp:RequiredFieldValidator ID="rfvpass2w" runat="server" ControlToValidate="txtpassw1" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                        
                                            <label style="font-size: 20px">
                                         <%--<asp:RegularExpressionValidator ID="revpasseight" runat="server" ControlToValidate="txtpassw1" ErrorMessage="Minimum eight characters" Font-Overline="False" Font-Size="16px" ForeColor="Red" SetFocusOnError="True" ValidationExpression="&quot;([0-9]{8,})$&quot;">*</asp:RegularExpressionValidator>--%>
                                         </label>
                                        
                                            <br />
                                            <br />

                                        <label>Confirm password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                                        &nbsp;<asp:TextBox ID="txtpassconf" CssClass="form-control" placeholder="password" ToolTip="password" runat="server" Height="22px" Width="131px" ValidationGroup="mmm" />
                                        <asp:RequiredFieldValidator ID="rfvconfirm" runat="server" ControlToValidate="txtpassconf" ErrorMessage="Please Enter password" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                        
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><label style="font-size: 20px">&nbsp;&nbsp;&nbsp;
                                         <asp:CompareValidator ID="cvconfirmpassadd" runat="server" ControlToCompare="txtpassw1" ControlToValidate="txtpassconf" ErrorMessage="Password must be same " Font-Size="16px" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm"></asp:CompareValidator>
                                         </label>
                                         </label>
                                         <br />
                                         <label>
                                         Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         </label>
                                         &nbsp;<asp:TextBox ID="txtname" CssClass="form-control" placeholder="name" ToolTip="name" runat="server" Height="22px" Width="131px" />
                                        <asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="txtname" ErrorMessage="Please Enter Name" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                        <label>
                                            <br />
                                            <br />
                                            SurName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </label>
                                        &nbsp;<asp:TextBox ID="txtsurname" CssClass="form-control" placeholder="Surname" ToolTip="Surname" runat="server" Height="22px" Width="131px" />
                                        <label>
                                            <asp:RequiredFieldValidator ID="rfvsurname" runat="server" ControlToValidate="txtsurname" ErrorMessage="Please Enter Surname" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                            <br />
                                            <br />
                                            contact&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </label>
                                        &nbsp;<asp:TextBox ID="txtcontact" CssClass="form-control" placeholder="contact" ToolTip="contact" runat="server" Height="22px" Width="131px" />

                                        <label>
                                            <asp:RequiredFieldValidator ID="rfvContact" runat="server" ControlToValidate="txtcontact" ErrorMessage="Please Enter Contact" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="revfrtcontact" runat="server" ControlToValidate="txtcontact" ErrorMessage="Plaese Enter 10 Digit Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10}" ValidationGroup="mmm">*</asp:RegularExpressionValidator>
                                            <br />
                                            <br />
                                            DOB</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:TextBox ID="txtdob" CssClass="form-control" TextMode="Date" placeholder="DOB" ToolTip="DOB" runat="server" Height="22px" Width="131px" ValidationGroup="mmm" />

                                        <label>
                                            <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtdob" ErrorMessage="Please Enter DOB" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                            <br />
                                            <br />
                                            DOJ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </label>
                                        &nbsp;
                           <asp:TextBox ID="txtdojj" CssClass="form-control" TextMode="Date" placeholder="DOJ" ToolTip="DOj" runat="server" Height="20px" Width="131px" ValidationGroup="mmm" />

                                        <label>
                                            <asp:RequiredFieldValidator ID="rfvdoj" runat="server" ControlToValidate="txtdojj" ErrorMessage="Please Enter DOJ" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                            <br />
                                            <br />
                                            Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                           <asp:TextBox ID="txtemail" CssClass="form-control" placeholder="Email" ToolTip="Email" runat="server" Height="20px" Width="131px" />

                                        <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>

                                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email Address " ForeColor="Red" SetFocusOnError="True" ValidationExpression="    @&quot;^(?(&quot;&quot;)(&quot;&quot;[^&quot;&quot;]+?&quot;&quot;@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&amp;'\*\+/=\?\^`\{\}\|~\w])*)(?&lt;=[0-9a-z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9]{2,17}))$&quot;;" ValidationGroup="mmm">*</asp:RegularExpressionValidator>

                                        <br />
                                         <%--<asp:Button ID="btncencel" runat="server" CssClass="rounderdcorrner" PostBackUrl="~/lOGiNpaGE.aspx" Text="Cencel" />--%>
                                         &nbsp;&nbsp;&nbsp;
                                         <asp:Button ID="btnsave" runat="server" CssClass="rounderdcorrner" OnClick="btnsave_Click" Text="save" ValidationGroup="mmm" />
                                    </div> 
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="mmm" ForeColor="Red" HeaderText="Please Fill Right Details" ShowMessageBox="True" ShowSummary="false" Height="73px" />

                        </div>
                        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender" TargetControlID="lbtnsignup" PopupControlID="adduser"
                            BackgroundCssClass="background" runat="server">
                        </ajaxToolkit:ModalPopupExtender>
                
                </asp:Panel>
              <asp:Panel ID="pnlforget" runat="server" Height="625px">
                    

                        <div class="container_forget rounderdcorrner_forget" id="forgetpasss" role="dialog">
                            <div class="background_forget">
                               
                                        <h1 class="auto-style27">
                                           
                               <asp:ImageButton ID="imgcencel" runat="server" Height="16px" ImageAlign="Baseline" ImageUrl="~/Image/crossimg.jpg" Width="16px" />
                                        </h1>
                                        <h1 class="auto-style3">Fill The Detail</h1>
                                    </div>
                                    <div class="auto-style23">
                                        <label style="font-size: 20px; font-weight: 400">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="txtusrname" CssClass="form-control" placeholder="Username" ToolTip="Username" runat="server" Height="22px" Width="229px" Font-Size="15px" ValidationGroup="nnn" />
                                        <asp:RequiredFieldValidator ID="rfvusername" runat="server" ControlToValidate="txtusrname" ErrorMessage="Please Enter Username" ForeColor="Red" SetFocusOnError="True" ValidationGroup="nnn" Font-Size="16px">*</asp:RequiredFieldValidator>
                                        
                                            </label>
                                        <label style="font-size: 20px">
                                            <br />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please Enter New Password&nbsp;&nbsp;&nbsp;&nbsp;
                                        </label>
                                        &nbsp;<asp:TextBox ID="txtnewpass" CssClass="form-control" placeholder="password" ToolTip="password" runat="server" Height="22px" Width="230px" Font-Size="15px" TextMode="Password" ValidationGroup="nnn" />
                                        <label style="font-size: 20px">
                                            <asp:RequiredFieldValidator ID="rfvnewpass" runat="server" ControlToValidate="txtnewpass" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" ValidationGroup="nnn" Font-Size="16px">*</asp:RequiredFieldValidator>
                                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtnewpass" ErrorMessage="Minimum eight characters" Font-Overline="False" Font-Size="16px" ForeColor="Red" SetFocusOnError="True" ValidationExpression="&quot;([0-9]{8,12})$&quot;" ValidationGroup="nnn">*</asp:RegularExpressionValidator>--%>
                                            <br />
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm New password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                        </label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtconfirm" CssClass="form-control" placeholder="Password" ToolTip="Password" runat="server" Height="22px" Width="227px" Font-Size="15px" ValidationGroup="nnn" />

                                        <label>
                                            <asp:RequiredFieldValidator ID="rfvconfirmpass" runat="server" ControlToValidate="txtconfirm" ErrorMessage="Please Enter confirm password" ForeColor="Red" SetFocusOnError="True" ValidationGroup="nnn">*</asp:RequiredFieldValidator>
                                                 <label style="font-size: 20px">
                                        <br />
                                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtnewpass" ControlToValidate="txtconfirm" ErrorMessage="Password must be same " Font-Size="16px" ForeColor="Red" SetFocusOnError="True" ValidationGroup="nnn" ></asp:CompareValidator>
                                        </label>
                                                 </label>
                                            <br />
                                            <br />
                                          

                                        <br />

                                    </div>
                                    <div class="modal-footer">
                                        &nbsp;&nbsp;&nbsp;
                           <asp:Button ID="btnconfirm" runat="server" CssClass="auto-style25" Text="Submit" ValidationGroup="nnn" OnClick="btnconfirm_Click" Width="173px" Height="27px" />
                                    </div>
                                </div>
                          

                            <asp:ValidationSummary ID="vsforgetpass" runat="server" ValidationGroup="nnn" ForeColor="Red" HeaderText="Please Fill Right Details" ShowMessageBox="True" ShowSummary="false" Height="52px" Width="408px" />
             
                        <ajaxToolkit:ModalPopupExtender ID="mppeforget" TargetControlID="forgetpass" PopupControlID="forgetpasss"
                            BackgroundCssClass="background" runat="server">
                        </ajaxToolkit:ModalPopupExtender>
               
                </asp:Panel>

   <%--         <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" />--%>
        </form>
    </div>
</body>
</html>
