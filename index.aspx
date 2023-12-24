<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Accounting Programs</title>

    <link rel="stylesheet" href="StyleSheet.css"/>

    <style type="text/css" >
        .DivAdd { display:inline-block; width:25% ;padding :30px;height: 100px;}
        .Divimag { display:inline-block; width:25% ;padding :30px;height: 270px;}
        .imag{width:100% ;height: 100%;}
    </style>
</head>

<body style="padding: 0px; margin: 0px">
    <form id="form1" runat="server" >
        
        <input id="myBtn" type="button" value="UP"  onclick="topFunction()" title="Go to top"/>

        <div align="left" style="color: aliceblue; padding:15px 0px 15px 30px; background-color: midnightblue ;
              font-family:'Freestyle Script'; font-size: 54px; font-weight: bolder">
            Accounting Programs
        </div>

        <div align="center" style="width:100% ; height: 600px;">              
             <img alt="" src="Pic/AA2.png" style="width:90% ; height:100%;" /><br />                  
       </div>

     <br />
     <div dir="rtl">
        <div class="DivAdd">
            <h2 style="color: #2187E7">&nbsp;تصميم برامج كمبيوتر&nbsp;</h2>
            <p>
                نركز دائما على التطوير والابداع فى تصميم مواقع نجعل موقعك اكثر سهولة فى الاستخدام 
            </p>
        </div>
        <div class="DivAdd">
            <h2 style="color: #2187E7">&nbsp;تصميم موبايل ابلكيشن&nbsp;</h2>
            <p>
               نحرص على تزويدك بالحلول الرقمية المبتكرة، معتمدين على خبراتنا الكبيرة في مجال تكنولوجيا المعلومات
            </p>
        </div>
        <div class="DivAdd">
            <h2 style="color: #2187E7">&nbsp;تصميم مواقع&nbsp;</h2>
            <p>
               فريقنا من الخبراء في مجالاتهم يسعون دائماً في مساعدة عملاءنا على تحقيق أهدافهم.
                <a href="HtmlPage1.html" target="_blank">Example</a>
            </p>
        </div>
   </div>
       <br />

        <div align="center" dir="rtl">
            <div align="center" style="width:100% ;height: 350px; ">
              <br />              
                 <div class ="Divimag"> <asp:ImageButton ID="ImageButton2" runat="server" class ="imag" PostBackUrl="~/Program1.aspx" ImageUrl="~/Pic/P1.png" /></div>                
                 <div class ="Divimag"> <asp:ImageButton ID="ImageButton3" runat="server" class ="imag" PostBackUrl="~/Program2.aspx" ImageUrl="~/Pic/P2.png" /> </div>                
                 <div class ="Divimag"> <asp:ImageButton ID="ImageButton4" runat="server" class ="imag" PostBackUrl="~/Program3.aspx" ImageUrl="~/Pic/p3.png" /></div>
              <br />
            </div>
        </div>
        <br /><br />

        <div align="center">
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Caption="Our Programs" DataKeyNames="IdProgram" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" >
                    <ItemStyle Width="130px" />
                    </asp:CommandField>
                    <asp:BoundField DataField="IdProgram" HeaderText="Id Program" ReadOnly="True" SortExpression="IdProgram" >
                    <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ProgramName" HeaderText="Program Name" SortExpression="ProgramName" />
                    <asp:BoundField DataField="ProgramVer" HeaderText="Program Ver" SortExpression="ProgramVer" >
                    <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ProgramYear" HeaderText="Program Year" SortExpression="ProgramYear" >
                    <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
                <HeaderStyle BackColor="#000066" ForeColor="White" Height="55px" HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle BackColor="#99CCFF" Height="38px" HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [TProgram] WHERE [IdProgram] = @IdProgram" InsertCommand="INSERT INTO [TProgram] ([ProgramName], [ProgramVer], [ProgramYear], [Description]) VALUES (@ProgramName, @ProgramVer, @ProgramYear, @Description)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [IdProgram], [ProgramName], [ProgramVer], [ProgramYear], [Description] FROM [TProgram]" UpdateCommand="UPDATE [TProgram] SET [ProgramName] = @ProgramName, [ProgramVer] = @ProgramVer, [ProgramYear] = @ProgramYear, [Description] = @Description WHERE [IdProgram] = @IdProgram">
                <DeleteParameters>
                    <asp:Parameter Name="IdProgram" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProgramName" Type="String" />
                    <asp:Parameter Name="ProgramVer" Type="String" />
                    <asp:Parameter Name="ProgramYear" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProgramName" Type="String" />
                    <asp:Parameter Name="ProgramVer" Type="String" />
                    <asp:Parameter Name="ProgramYear" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="IdProgram" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
        <br />

         <div align="center"> 
              <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Caption="Technical Support" DataKeyNames="idTecSupport" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="idTecSupport" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="idTecSupport" >
                    <ItemStyle Width="80px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TecSupportNamt" HeaderText=" Name" SortExpression="TecSupportNamt" >
                    <ItemStyle Width="130px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Tel1" HeaderText="Tel1" SortExpression="Tel1" >
                    <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Tel2" HeaderText="Tel2" SortExpression="Tel2" >
                    <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                </Columns>
                <HeaderStyle BackColor="#000066" ForeColor="White" Height="55px" HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle BackColor="#99CCFF" Height="38px" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [TTecSupport]">
            </asp:SqlDataSource>
            <br />
         </div> 
        <br />

        <br /><br />
        <div align="left" style="padding-left:50px; background-color:midnightblue;color:#FFF ; padding-top:3px;">
             <div align="center">
                <h2>Contact US</h2>
             </div>  
            <h3>Tel : 01029802832</h3>
            <h3>Email : accounting_Programs@gmail.com</h3>
            <h3>Pass code : Gmdrgg63487</h3>
            <br />
        </div>

        <div align="center" style="background-color: white; width: 100%; height : 700px;">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Pic/Location.png" 
                style="background-color: white; width: 100%; height: 100%;" PostBackUrl="https://www.google.com/maps" />
        </div>
        <div align="center" style="background-color: midnightblue ; color :white ">
            <br />
            <h4>by: Shreen Shoaib - BIS</h4>
            <br />
        </div>

        <script>
           
            document.body.onload = function () {
                //alert("Welcom to : Accounting Programs Store");
            }

            window.onscroll = function () { scrollFunction() };
            function scrollFunction() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                    document.getElementById("myBtn").style.display = "block";
                } else {
                    document.getElementById("myBtn").style.display = "none";
                }
            }

            // When the user clicks on the button, scroll to the top of the document
            function topFunction() {
                document.body.scrollTop = 0; 
                document.documentElement.scrollTop = 0; 
            }
        </script>
    </form>
</body>

</html>
