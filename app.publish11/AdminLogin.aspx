<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="MasterPage19.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .rounderdcorrner {  
            font-size: 11pt;  
            margin-left: auto;
            margin-right:  auto;
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

             right: 139px;
              position: relative;
            
         }
        .auto-style22 {
            text-align: center;
            margin-right: 40%;
        }
        #Image1{
            margin-left:500px;
        }
        .auto-style26 {
            text-align: center;
            width: 100%;
            height: 59px;
        }
             

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
                                <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ControlToValidate="TxtPassWord0" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" ValidationGroup="cr"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <asp:Button ID="brnlogin" runat="server" CssClass="btnlogin" Font-Bold="True" OnClick="btnlogin_Click" Text="LOG IN" ValidationGroup="cr" />
                                &nbsp;&nbsp;&nbsp;
                                                              
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style26">
                                <asp:LinkButton ID="bakbutton" CssClass="Backbtn" runat="server" Font-Underline="False" ForeColor="Black" PostBackUrl="~/Home.aspx">Back</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

 
        </form>
    </div>
</body>
</html>
