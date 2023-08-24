<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MasterPage19.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        
        
       
        
        .content1
        {
            margin: 1em; 
            border-collapse: collapse;

        }

        .header1 
        { 
            padding: .3em;
            border: 1px #ccc solid; 
      
            cursor: pointer

        }
        .auto-style2 {
          
        }
    .auto-style9 {
        text-align: center;
        width: 100%;
        height: 18px;
        background-color: #666699;
    }
    .auto-style11 {
        text-align: center;
        width: 100%;
        height: 23px;
        font-size: 25px;
        background-color: #5BFFFF;
        margin-top:55px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="auto-style11" style="font-size: 20px; color: #000000">
        HOME</div>
    
    <center>
   
    <ajaxToolkit:Accordion ID="Accordion1" runat="server" Height="236px" Width="652px">
        <Panes>
            <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server" ContentCssClass="content1" HeaderCssClass="header1">
                    <Header>
                        What is Ajax Technology?
                    </Header>
                    <Content>
                        Ajax is a client-side script that communicates to and from a server/database without the need for a postback or a complete page refresh.
                    </Content>
                </ajaxToolkit:AccordionPane>
                <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server" ContentCssClass="content1" HeaderCssClass="header1">
                    <Header>
                        What is Jquery Technology?
                    </Header>
                    <Content>
                        jQuery is a fast and concise JavaScript Library created by John Resig in 2006 with a nice motto - Write less, do more.jQuery simplifies HTML document traversing, event handling, animating, and Ajax interactions for rapid web development.
                    </Content>
                </ajaxToolkit:AccordionPane>
                <ajaxToolkit:AccordionPane ID="AccordionPane3" runat="server" ContentCssClass="content1" HeaderCssClass="header1">
                    <Header>
                        What is Angular JS Technology?
                    </Header>
                    <Content>
                        AngularJS is a structural framework for dynamic web apps. It lets you use HTML as your template language and lets you extend HTML's syntax to express your application's components clearly and succinctly.
                    </Content>
                </ajaxToolkit:AccordionPane>
            </Panes>
        </ajaxToolkit:Accordion>
        </center>
    <div>
        <ajaxToolkit:ModalPopupExtender ID="MPE" runat="server"
    TargetControlID="Accordion1"
    PopupControlID="Panel1"
    BackgroundCssClass="modalBackground" 
    DropShadow="true" 
    OkControlID="OkButton" 
    OnOkScript="onOk()"
    CancelControlID="CancelButton" 
    PopupDragHandleControlID="Panel3" />
    </div>
    <br />
<table cellspacing="4" class="auto-style155">
        <tr>

            <td class="auto-style19" colspan="2">
                <asp:Image ID="Image2" runat="server" CssClass="auto-style25" Height="437px" ImageUrl="~/Image/inventryimg.jpg" Width="667px" style="background-color: #FFFFFF" />
            </td>
            <td class="auto-style20">
                <div class="auto-style24" data-element_type="widget" data-id="4cd44c3" data-widget_type="heading.default" style="border-style: none; border-color: inherit; border-width: 0px; box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: &quot;Merriweather Sans&quot;; font-size: 17px; font-style: normal; font-weight: 400; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px; color: rgb(74, 74, 74); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    <div class="elementor-widget-container" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: inherit; font-size: 17px; font-style: inherit; font-weight: inherit; transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);">
                        <h2 class="fusion-responsive-typography-calculated" data-fontsize="30" data-lineheight="45px" style="box-sizing: border-box; color: var(--h2_typography-color); margin-top: var(--h2_typography-margin-top); margin-right: 0px; margin-bottom: var(--h2_typography-margin-bottom); margin-left: 0px; font-family: Montserrat; font-weight: var(--h2_typography-font-weight); line-height: 1.5; letter-spacing: normal; text-transform: none; font-style: normal; font-size: var(--h2_typography-font-size); font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; --fontSize: 30;">How InVentry makes primary schools safer</h2>
                        <h1 class="elementor-heading-title elementor-size-xl" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: inherit; font-size: 39px; font-style: inherit; font-weight: 600; color: rgb(51, 51, 51);">&nbsp;</h1>
                    </div>
                </div>
                <div class="auto-style23" data-element_type="widget" data-id="37e0ec93" data-widget_type="heading.default" style="border-style: none; border-color: inherit; border-width: 0px; box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: &quot;Merriweather Sans&quot;; font-size: 17px; font-style: normal; font-weight: 400; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px; color: rgb(74, 74, 74); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    <div class="elementor-widget-container" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: inherit; font-size: 17px; font-style: inherit; font-weight: inherit; transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);">
                        <p style="box-sizing: border-box; margin: 0px 0px 20px; color: rgb(71, 71, 71); font-family: Montserrat; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;  text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                            Ensuring the safeguarding of pupils is the most important thing for any primary school. With InVentry, you can have peace of mind by knowing who is on-site at any given time. With many features such as fire evacuation roll call, health features and visitor management – InVentry has you covered.</p>
                        <p class="auto-style26" style="box-sizing: border-box; margin: 0px 0px 20px; color: rgb(71, 71, 71); font-family: Montserrat; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;  text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                            Our Anywhere App also gives you the power of InVentry at the palm of your hands, control fire evacuations, school trips and pupil dietary requirements all from your smart device.</p>
                        <p class="elementor-heading-title elementor-size-medium" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.2em; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: inherit; font-size: 19px; font-style: normal; font-weight: normal; color: rgb(51, 51, 51);">
                            &nbsp;</p>
                    </div>
                </div>
                <div class="auto-style22" data-element_type="widget" data-id="d332954" data-widget_type="text-editor.default" style="border-style: none; border-color: inherit; border-width: 0px; box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; outline: 0px; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: &quot;Merriweather Sans&quot;; font-size: 17px; font-style: normal; font-weight: 400; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px; color: rgb(74, 74, 74); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    <div class="elementor-widget-container" style="box-sizing: border-box; margin: 0px; padding: 10px 10px 0px 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: inherit; font-size: 17px; font-style: inherit; font-weight: inherit; transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);">
                        <div class="elementor-text-editor elementor-clearfix" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: inherit; font-size: 17px; font-style: inherit; font-weight: inherit;">
                            <p style="box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; font-family: inherit; font-size: 17px; font-style: inherit; font-weight: inherit;">
                                With a vision to excel, our each plan and action is inspired by our core values that enable us to focus towards growth on the righteous path.&nbsp;</p>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
