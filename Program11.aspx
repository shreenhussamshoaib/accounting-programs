<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Program11.aspx.vb" Inherits="Program11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
       .ForDivSeprator1{height: 40px;}
       .ForDivSeprator2{height: 26px; margin-top:0px;}
       .ForVideo{width :85%;height:400px;}
       .ForDivSeprator3{height: 30px;}
       .ForDivProgrma{background-color: #0084D8 ; border-radius: 12px; padding-bottom:20px ;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.7);}
       .ForForDivProgrmaSpan1{padding-top: 20px; font-size: 70px ;}
        @media only screen and (max-width: 768px) {
       .ForDivSeprator1{height: 20px;}
       .ForDivSeprator2{height:0px;margin-top:-100px;}
       .ForVideo{width :90%;height:200px;}
       .ForDivSeprator3{height: 30px;}
        }
        @media only screen and (max-width: 600px) {
       .ForDivSeprator1{height: 50px;}
       .ForDivSeprator2{height: 0px;  margin-top:-1px;}
       .ForVideo{width :90%;height:400px;}
       .ForDivSeprator3{height: 70px;}
        }
            .img {}
    </style>
</head>
<body style="padding: 0px; margin: 0px">
    <form id="form1" runat="server" style="padding: 0px; margin: 0px">
        

         <asp:ScriptManager runat="server">
            <Scripts>      
            </Scripts> 
        </asp:ScriptManager>
    <div align="left" style="color: aliceblue; padding:15px 0px 15px 30px; background-color: midnightblue ;
              font-family:'Freestyle Script'; font-size: 54px; font-weight: bolder">
            Accounting Programs
        </div>

        <div align="right" style="padding: 0px 30px 0px 30px; font-family:'Segoe Script'; font-size: 32px; font-weight: bolder;float:left">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/index.aspx">Back</asp:LinkButton>
        </div>
    
    <div class="row" id="Divpicture" runat="server">
        <div class="col-md-12" align="center" style="padding-top:30px;">
            <asp:Image ID="ImageWelcome" runat="server" ImageUrl="~/Pic/P1.png" CssClass ="img" Width="429px" Height="246px" />
        </div> 
        
        <div class="col-md-1" align="center" ></div> 
    </div> 
    <div id="DivSeprator2" class="ForDivSeprator2"></div>

     <div class="jumbotron" style="background-color:#008ED6; color: white; padding-left:40px;padding-top:5px;"> <!-- #008ED6 -->
          <br />
         <h2 style="font-family: Arial">Download :</h2>
         <br />
         <div style="padding-left: 20px">
             <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Arial" 
                         Font-Size="12pt"  AutoPostBack="False" ForeColor="#ffffff" Class="form-control"
                         style="cursor:pointer; border-style:none; padding:4px 10px 4px 10px;border-radius: 4px;width:90%; max-width:420px;opacity:90%;background-color:rgba(0, 1, 35, 0.85);" >
                 <asp:ListItem Value="0">please select operating system</asp:ListItem>
                 <asp:ListItem Value="1">Windows 11</asp:ListItem>
                 <asp:ListItem Value="2">Windows 10</asp:ListItem>
                 <asp:ListItem Value="3">Windows 8</asp:ListItem>
                 <asp:ListItem Value="4">Windows 7</asp:ListItem>
                 <asp:ListItem Value="5">Windows Server</asp:ListItem>
             </asp:DropDownList>
         </div>
         <div style="padding-left: 20px; margin-top: 10px">
             <asp:DropDownList ID="DropDownList2" runat="server" Font-Names="Arial" 
                         Font-Size="12pt"  AutoPostBack="False" ForeColor="#ffffff" Class="form-control"
                         style="cursor:pointer; border-style:none; padding:4px 10px 4px 10px;border-radius: 4px;width:90%; max-width:420px;opacity:90%;background-color:rgba(0, 1, 35, 0.85);" >
                 <asp:ListItem Value="0">64-bit operating system</asp:ListItem>
                 <asp:ListItem Value="1">32-bit_x86 operating system</asp:ListItem>
             </asp:DropDownList>
         </div>

          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
               <ContentTemplate >
                    <div style="padding-left: 35px; margin-top: 15px">
                        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" Text="&nbsp;Demo version - نسخة تجريبية" style="cursor:pointer;vertical-align: middle;" Checked="True" Font-Names="Arial" Font-Size="12pt"/>
                        <br />
                        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" Text="&nbsp;Real version - امتلك ترخيص" style="cursor:pointer;vertical-align: middle;" Font-Names="Arial" Font-Size="12pt"/>
                    </div>

                    <div id="DivKey" runat="server"  style="padding-left: 20px; margin-top: 5px; display: none;">
                         <asp:TextBox ID="TextBox1" runat="server" placeholder="Product KEY " ForeColor="Black" Class="form-control"
                             style="border-style:none; padding:16px 25px 16px 25px;border-radius: 6px;width:90%; max-width:420px;opacity:90%;background-color:rgba(255, 220, 255, 0.85);" 
                             Font-Bold="True" Font-Names="Arial" Font-Size="16" Height="40"></asp:TextBox>
                   </div>
               </ContentTemplate> 
               <Triggers>
                   <asp:AsyncPostBackTrigger ControlID ="RadioButton1" EventName ="CheckedChanged" />
                   <asp:AsyncPostBackTrigger ControlID ="RadioButton2" EventName ="CheckedChanged" />
               </Triggers>
          </asp:UpdatePanel>
        

         <div align="right" style="padding-left: 0px; margin-top: 30px ;width:90%; max-width:440px;" >
             <asp:LinkButton ID="LinkButtonA1" runat="server" ForeColor="Silver" Font-Size="16pt" Font-Names="Arial" style="cursor:pointer; border-style:none; padding:8px 20px 8px 20px;border-radius: 4px;opacity:90%;background-color:rgba(0, 1, 35, 0.85);">
                                download <span class="glyphicon glyphicon-download-alt"  style="font-size:14pt;"></span></asp:LinkButton>
         </div>
         <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    </div>
   
    
    </form>
</body>
</html>
