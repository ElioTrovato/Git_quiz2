<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="quiz2.Default" %>

<!DOCTYPE html>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css" rel="stylesheet" type="text/css" />
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet" />
<style>  
body {
  background:#161616;
  color:#888;
  font-family: 'Ubuntu Mono', sans-serif;
  text-transform:uppercase;
}
legend{color:white;}
.ui-dialog .ui-dialog-title {float:none;}
.box {

  width:90%;
  max-width:450px;
  height:auto;
  margin:0 auto;
  margin-top:100px;
  background:#222;
  border-radius:15px;
  box-shadow: 0px 3px 10px 1px rgba(0, 0, 0, 0.9);
}
.content {
  width:85%;
  height:auto;
  margin:0 auto;
  padding:30px 0px;
  text-align:center;
}
h1 {
  font-size: 24px;
  font-weight:400;
  color:#FFBF00;
  letter-spacing:0.125em;
  text-align:center;
}
.field {
  width:100%;
  margin:10px auto;
  padding:10px;
  background:#2c2c2c;
  border:none;
  box-shadow: 0px 1px 0px 0px #111;
  border-radius:3px;
  outline:none;
  color:#FFBF00;
  font-weight:700;
  letter-spacing:0.125em;
  text-align:center;
  text-transform:uppercase;
}
 
::-webkit-input-placeholder{ /* WebKit browsers */
  color:#5A5A5A;
}
:-moz-placeholder{ /* Mozilla Firefox 4 to 18 */
  color:#5A5A5A;
}
input[type="button"], input[type="submit"], button, .ui-widget-header , .ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset .custom-class
 
{
  margin:10px auto;
  padding:10px;
  background:#161616;
  border:none;
  box-shadow: 0px 1px 0px 0px #111;
  border-radius:3px;
  outline:none;
  color:#FFBF00;
  font-weight:700;
  letter-spacing:0.125em;
  text-align:center;
  text-transform:uppercase;
}
input:hover{
  background:#FFBF00;
  color:#333;
}
input:active {
        background: #FACC2E;
        color: #333;
    }
.btns  {
  margin:10px auto;
  padding:10px;
  background:#161616;
  border:none;
  box-shadow: 0px 1px 0px 0px #111;
  border-radius:30px;
  outline:none;
  color:#FFBF00;
  font-weight:700;
  letter-spacing:0.125em;
  text-align:center;
  text-transform:uppercase;
}
.btns:hover{
  background:#FFBF00;
  color:#333;
}
.btns:active{
  background:#FACC2E;
  color:#333;
}  
table{text-align:left;}
#menuTabs{
    margin-left:60px;
    margin-right:60px;
    text-align:center;
}
input[type="radio"]{
      cursor: pointer;
}
a{
    
    text-align:center;
    color:#FFBF00;
    cursor: pointer;
    text-decoration: none;
    text-decoration-line: none;
    text-decoration-style: initial;
    text-decoration-color: initial;
}
.ui-widget {
    font-family: Verdana,Arial,sans-serif;
    font-size: .8em;
}




.ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset .custom-class:hover{
     background:#FFBF00;
  color:#333;
}
.ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset .custom-class:active{
     background:#FFBF00;
  color:#333;
}
#modal_dialog table tr td {
    font-size:11px;

}
#modal_dialog table tr th {
    font-size:13px;

}

 #modal_dialog table   tr:nth-child(even) {background-color: #f2f2f2;}



</style>
<script type="text/javascript">
    $("[id*=Button1]").live("click", function () {
        $("#modal_dialog").dialog({
            dialogClass: 'dialogClass', width: 350,
            open: function (event, ui) {
                $(".ui-dialog-titlebar-close").remove();

            },
            title: "solution",
            modal: true,
            show: { effect: "blind", duration: 800 },
            draggable: false,
            resizable: false,
            modal: true,
            buttons: [{
                text: 'Close',
                click: function () {
                    $(this).dialog('close')
                },
                class: 'custom-class'
            }]
        });
        return false;
    });
    
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="/Favicon.ico">    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Quiz</title>
</head>
    
<body>
    
    <form class="box" id="form1" runat="server">  
        <br />

        <h1 style="text-align:center">Welcome to the London Underground Quiz </h1>
        <div class="content">
            <br />
            <br />
            <asp:Wizard ID="wizard1"  runat="server" ActiveStepIndex="0"  StepNextButtonType="Link" StepNextButtonText="" StartNextButtonType="Link" StartNextButtonText="" FinishPreviousButtonType="Link" FinishPreviousButtonText="" StepPreviousButtonType="Link" StepPreviousButtonText="" FinishCompleteButtonType="Link" FinishCompleteButtonText="" Width="412px">
<%--               FinishCompleteButtonText="SUBMIT" FinishPreviousButtonText="PREV" StartNextButtonText="Next" StepNextButtonText="NEXT" StepPreviousButtonText="PREV" OnFinishButtonClick="wizard1_FinishButtonClick"--%>
                <SideBarTemplate>
                    <asp:DataList runat="server" ID="SideBarList" HorizontalAlign="Justify" RepeatDirection="Horizontal">
                      <ItemTemplate>
                           <div id="divWizardSampleSidebar" runat="server" class="div-WizardSample-Sidebar-Steps">
                                <asp:LinkButton runat="server" ID="SideBarButton" Enabled="true" Font-Bold="true" />
                            </div>
                    </ItemTemplate>
                </asp:DataList>
                     </tr><tr>
                </SideBarTemplate>

                <WizardSteps>
                    <asp:WizardStep  runat="server" Title="—">
                            <br /> <br />   <b> 1. Which line serves Camden Town</b> <br /><br />
                      <asp:RadioButtonList  ID="q1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="q1_SelectedIndexChanged"  >
                        <asp:ListItem Value="1">Bakerloo</asp:ListItem>
                        <asp:ListItem Value="2">Victoria</asp:ListItem>
                        <asp:ListItem Value="3">Northern</asp:ListItem>
                        <asp:ListItem Value="4">District</asp:ListItem>
                      </asp:RadioButtonList>  <br />
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="—">
                            <br />  <br /> <b> 2. Which line serves Maida Vale</b><br /><br />
                      <asp:RadioButtonList ID="q2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="q1_SelectedIndexChanged">
                        <asp:ListItem Value="1">Northern</asp:ListItem>
                        <asp:ListItem Value="2">District</asp:ListItem>
                        <asp:ListItem Value="3">Jubilee</asp:ListItem>
                        <asp:ListItem Value="4">Bakerloo</asp:ListItem>
                     </asp:RadioButtonList>   <br />
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="—">
                          <br />  <br />  <b> 3. Which line serves Kilburn</b><br /><br />
                        <asp:RadioButtonList ID="q3" runat="server" AutoPostBack="true" OnSelectedIndexChanged="q1_SelectedIndexChanged" >
                            <asp:ListItem Value="1">Victoria</asp:ListItem>
                            <asp:ListItem Value="2">Metropolitan</asp:ListItem>
                            <asp:ListItem Value="3">Circle</asp:ListItem>
                            <asp:ListItem Value="4">Jubilee</asp:ListItem>
                        </asp:RadioButtonList>   <br />
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="—">
                          <br />  <br />  <b> 4. Which line serves Brixton</b><br /><br />
                        <asp:RadioButtonList ID="q4" runat="server" AutoPostBack="true" OnSelectedIndexChanged="q1_SelectedIndexChanged" >
                             <asp:ListItem Value="1">Piccadilly</asp:ListItem>
                             <asp:ListItem Value="2">Victoria</asp:ListItem>
                             <asp:ListItem Value="3">Hammersmith & City</asp:ListItem>
                             <asp:ListItem Value="4">DLR</asp:ListItem>
                        </asp:RadioButtonList>   <br />
                    </asp:WizardStep>
                     <asp:WizardStep runat="server" Title="—">
                          <br />  <br />  <b> 5. Which line serves Elephant & Castle</b><br /><br />
                        <asp:RadioButtonList ID="q5" runat="server" AutoPostBack="true" OnSelectedIndexChanged="q1_SelectedIndexChanged" >
                             <asp:ListItem Value="1">Bakerloo</asp:ListItem>
                             <asp:ListItem Value="2">Central</asp:ListItem>
                             <asp:ListItem Value="3">Metropolitan</asp:ListItem>
                             <asp:ListItem Value="4">District</asp:ListItem>
                        </asp:RadioButtonList>   <br />
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="—">
                          <br />  <br />  <b> 6. Which line serves Watford</b><br /><br />
                        <asp:RadioButtonList ID="q6" runat="server" AutoPostBack="true" OnSelectedIndexChanged="q1_SelectedIndexChanged" >
                             <asp:ListItem Value="1">Metropolitan</asp:ListItem>
                            <asp:ListItem Value="2">Circle</asp:ListItem>
                            <asp:ListItem Value="3">DLR</asp:ListItem>
                            <asp:ListItem Value="4">Northern</asp:ListItem>
                        </asp:RadioButtonList>   <br />
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="—">
                          <br />  <br />  <b> 7. Which line serves Wimbledon</b><br /><br />
                        <asp:RadioButtonList ID="q7" runat="server" AutoPostBack="true" OnSelectedIndexChanged="q1_SelectedIndexChanged" >
                             <asp:ListItem Value="1">Circle</asp:ListItem>
                            <asp:ListItem Value="2">Victoria </asp:ListItem>
                            <asp:ListItem Value="3">Jubilee</asp:ListItem>
                            <asp:ListItem Value="4">District</asp:ListItem>
                        </asp:RadioButtonList>   <br />
                    </asp:WizardStep>
                     <asp:WizardStep runat="server" Title="—">
                          <br />  <br />  <b> 8. Which line serves Southgate</b><br /><br />
                        <asp:RadioButtonList ID="q8" runat="server" AutoPostBack="true" OnSelectedIndexChanged="q1_SelectedIndexChanged" >
                             <asp:ListItem Value="1">Victoria </asp:ListItem>
                            <asp:ListItem Value="2">Hammersmith & City</asp:ListItem>
                            <asp:ListItem Value="3">DLR</asp:ListItem>
                            <asp:ListItem Value="4">Piccadilly</asp:ListItem>
                        </asp:RadioButtonList>   <br />
                    </asp:WizardStep>
                     <asp:WizardStep runat="server" Title="—">
                          <br />  <br />  <b> 9. Which line serves Madchute</b><br /><br />
                        <asp:RadioButtonList ID="q9" runat="server" AutoPostBack="true" OnSelectedIndexChanged="q1_SelectedIndexChanged" >
                            <asp:ListItem Value="1">Northern</asp:ListItem>
                            <asp:ListItem Value="2">DLR</asp:ListItem>
                            <asp:ListItem Value="3">Central</asp:ListItem>
                            <asp:ListItem Value="4">Bakerloo</asp:ListItem>
                        </asp:RadioButtonList>   <br />
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="—">
                          <br />  <br />  <b> 10. Which line serves Epping</b><br /><br />
                        <asp:RadioButtonList ID="q10" runat="server" AutoPostBack="true" OnSelectedIndexChanged="q1_SelectedIndexChanged" >
                            <asp:ListItem Value="1">Circle </asp:ListItem>
                            <asp:ListItem Value="2">Metropolitan</asp:ListItem>
                            <asp:ListItem Value="3">Central</asp:ListItem>
                            <asp:ListItem Value="4">Victoria</asp:ListItem>
                        </asp:RadioButtonList>   <br />
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="—">
                          <br />  <br />  <b> 11. Which line serves Tottenham Hale</b><br /><br />
                        <asp:RadioButtonList ID="q11" runat="server" AutoPostBack="true" OnSelectedIndexChanged="q1_SelectedIndexChanged" >
                            <asp:ListItem Value="1">Northern </asp:ListItem>
                            <asp:ListItem Value="2">DLR</asp:ListItem>
                            <asp:ListItem Value="3">Piccadilly</asp:ListItem>
                            <asp:ListItem Value="4">Victoria</asp:ListItem>
                        </asp:RadioButtonList>   <br />
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="—">
                          <br />  <br />  <b> 12. Which line serves Temple</b><br /><br />
                        <asp:RadioButtonList ID="q12" runat="server" AutoPostBack="true" OnSelectedIndexChanged="q1_SelectedIndexChanged" >
                            <asp:ListItem Value="1">Circle </asp:ListItem>
                            <asp:ListItem Value="2">Metropolitan</asp:ListItem>
                            <asp:ListItem Value="3">Jubilee</asp:ListItem>
                            <asp:ListItem Value="4">Central</asp:ListItem>
                        </asp:RadioButtonList>   <br />
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>

           <asp:Button class="btns"  ID="Button1" runat="server" Visible="false" Text="solution" />            
           <asp:Button class="btns" ID="ButtonSubmit"  runat="server" Visible="false" OnClick="LinkButton1_Click" Text="Play again" /><br />
          
          <div id="modal_dialog" style="display: none">
                <div class="mod">
                  <table class="table table-striped">
                    <tr><th>Camden Town</th><th>Maida Vale</th><th>Kilburn</th></tr>
                    <tr><td>Northern</td><td>Bakerloo</td><td>Jubilee</td></tr>
                    <tr><th>Brixton</th><th>Elephant & Castle</th><th>Watford</th></tr>
                    <tr><td>Victoria</td><td>Bakerloo</td><td>Metropolitan</td></tr>
                    <tr><th>Wimbledon</th><th>Southgate</th><th>Madchute</th></tr>
                    <tr><td>District</td><td>Piccadilly</td><td>DLR</td></tr>
                    <tr><th>Epping</th><th>Tottenham Hale</th><th>Temple</th></tr>
                    <tr><td>Central</td><td>Victoria</td><td>Circle</td></tr>
                  </table>
                </div>         
          </div>

            <br />
            <br />
            <asp:Panel ID="Panel1" BorderWidth="5" style="color:#FFBF00" GroupingText="Result" Visible="false" runat="server">
                <asp:Label ID="Label1" runat="server" Font-Size="20px" Text="Label"></asp:Label>

            </asp:Panel>
        </div>       
    </form>
</body>
</html>
