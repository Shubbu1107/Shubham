<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemNameLogIn.aspx.cs" Inherits="MasterPage19.ItemNameLogIn" %>

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
            opacity: 0.8;
        }

        .container {
            border-width: 1px;
            border-style: solid;
            border-color: black;
            padding-top: 10px;
            padding-left: 10px;
            width: 400px;
            height: 450px;
        }

        .auto-style3 {
            text-align: center;
            width: 100%;
        }
        .auto-style8 {
            margin-bottom: 0px;
          margin-left:250px;
        }
        .auto-style16 {
            padding-top: 20px;
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
            margin-top: 20px;
             padding-top: 30px;
            max-width: 454px;
             display: inline-block;
             right: 139px;
              position: relative;
              padding-bottom: 30px;
              padding:38px;
         }
        .auto-style22 {
            text-align: center;
            margin-right: 40%;
        }
        #Image1{
            margin-left:500px;
        }
    </style>
</head>
<body>
    <div class="auto-style18">
        <form id="form2" runat="server" class="auto-style17">
            <div class="auto-style19">
                <br />
                <asp:Image ID="Image1" runat="server" CssClass="auto-style8" Height="63px" ImageUrl="~/Image/osiyatechlogo.jpg" Width="224px" />
            </div>

            <div class="auto-style22">

                <asp:Panel ID="Panel2" runat="server">
                    <table cellspacing="4" class="auto-style21">
                        <tr>
                            <td class="auto-style20">USERNAME
                            <asp:TextBox ID="txtusername0" CssClass="txtusername" runat="server" Height="29px" ValidationGroup="cr" Width="238px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvusername0" runat="server" ControlToValidate="txtusername0" Display="Dynamic" ErrorMessage=" Please Enter Username" ForeColor="Red" SetFocusOnError="True" ValidationGroup="cr"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25">PASSWORD
                            <asp:TextBox ID="TxtPassWord0" runat="server" Height="28px" TextMode="Password" ValidationGroup="cr" Width="236px"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtPassWord0" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" ValidationGroup="cr"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">
                                <asp:Button ID="brnlogin" runat="server" CssClass="btnlogin" Font-Bold="True" OnClick="btnlogin_Click" Text="LOG IN" ValidationGroup="cr" />
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
            <asp:Panel ID="Panel3" runat="server">
                    <div class="">
                        <div class="container rounderdcorrner" id="adduser" role="dialog">
                            <div class="background">
                                <div class="">
                                    <div class="">
                                        <h1 class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" ImageAlign="Baseline" ImageUrl="~/Image/crossimg.jpg" Width="16px" />
                                        </h1>
                                        <h1 class="auto-style3">Add Employee </h1>
                                    </div>
                                    <div class="auto-style3">
                                        <label>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                                        &nbsp;<asp:TextBox ID="txtname" CssClass="form-control" placeholder="name" ToolTip="name" runat="server" Height="22px" Width="131px" />
                                        <asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="txtname" ErrorMessage="Please Enter Name" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                        <label>
                                            <br />
                                            <br />
                                            SurName&nbsp;&nbsp;&nbsp;&nbsp;
                                        </label>
                                        &nbsp;<asp:TextBox ID="txtsurname" CssClass="form-control" placeholder="Surname" ToolTip="Surname" runat="server" Height="22px" Width="131px" />
                                        <label>
                                            <asp:RequiredFieldValidator ID="rfvsurname" runat="server" ControlToValidate="txtsurname" ErrorMessage="Please Enter Surname" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                            <br />
                                            <br />
                                            contact&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </label>
                                        &nbsp;<asp:TextBox ID="txtcontact" CssClass="form-control" placeholder="contact" ToolTip="contact" runat="server" Height="22px" Width="131px" />

                                        <label>
                                            <asp:RequiredFieldValidator ID="rfvContact" runat="server" ControlToValidate="txtcontact" ErrorMessage="Please Enter Contact" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="revfrtcontact" runat="server" ControlToValidate="txtcontact" ErrorMessage="Plaese Enter 10 Digit Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10}" ValidationGroup="mmm">*</asp:RegularExpressionValidator>
                                            <br />
                                            <br />
                                            DOB</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:TextBox ID="txtdob" CssClass="form-control" TextMode="Date" placeholder="DOB" ToolTip="DOB" runat="server" Height="22px" Width="131px" ValidationGroup="mmm" />

                                        <label>
                                            <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtdob" ErrorMessage="Please Enter DOB" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                            <br />
                                            <br />
                                            DOJ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </label>
                                        &nbsp;
                           <asp:TextBox ID="txtdojj" CssClass="form-control" TextMode="Date" placeholder="DOJ" ToolTip="DOj" runat="server" Height="20px" Width="131px" ValidationGroup="mmm" />

                                        <label>
                                            <asp:RequiredFieldValidator ID="rfvdoj" runat="server" ControlToValidate="txtdojj" ErrorMessage="Please Enter DOJ" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>
                                            <br />
                                            <br />
                                            Email</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:TextBox ID="txtemail" CssClass="form-control" placeholder="Email" ToolTip="Email" runat="server" Height="20px" Width="131px" />

                                        <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True" ValidationGroup="mmm">*</asp:RequiredFieldValidator>

                                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email Address " ForeColor="Red" SetFocusOnError="True" ValidationExpression="    @&quot;^(?(&quot;&quot;)(&quot;&quot;[^&quot;&quot;]+?&quot;&quot;@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&amp;'\*\+/=\?\^`\{\}\|~\w])*)(?&lt;=[0-9a-z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9]{2,17}))$&quot;;" ValidationGroup="mmm">*</asp:RegularExpressionValidator>

                                        <br />
                                        <br />

                                        <br />

                                    </div>
                                    <div class="modal-footer">
                                        <asp:Button ID="btncencel" CssClass="rounderdcorrner" Text="Cencel" runat="server" PostBackUrl="~/ItemNameLogIn.aspx" />
                                        &nbsp;&nbsp;&nbsp;
                           <asp:Button ID="btnsave" CssClass="rounderdcorrner" Text="save" runat="server" OnClick="btnsave_Click" ValidationGroup="mmm" />
                                    </div>
                                </div>
                            </div>

                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="mmm" ForeColor="Red" HeaderText="Please Fill Right Details" ShowMessageBox="True" ShowSummary="false" />

                        </div>
                        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender" TargetControlID="lbtnsignup" PopupControlID="adduser"
                            BackgroundCssClass="background" runat="server">
                        </ajaxToolkit:ModalPopupExtender>
                    </div>
                </asp:Panel>
        </form>
    </div>
</body>
</html>
