<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validation1.aspx.cs" Inherits="Validator.validation1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server">
<asp:ValidationSummary runat="server" headertext="Les Erreurs De la Pages:" ForeColor="Red" />

<p style="color:seagreen; font-size:24px;">Info Conexion</p>

<table>
  
    <tr>
    <td>
        <asp:RequiredFieldValidator runat="server" 
            controltovalidate="email"
            errormessage="Email is required.">*
        </asp:RequiredFieldValidator>
    </td>
    <td>Email:</td>
    <td>
      <input type="email" runat="server" id="email"/>
      <asp:RegularExpressionValidator runat="server" display="Dynamic"
            controltovalidate="email" 
            errormessage="Erreur de Syntax Email : ***@***.***" 
            validationexpression="[a-zA-Z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}" ForeColor="Red" />
    </td>
  </tr>
  <tr>
    <td>
        <asp:RequiredFieldValidator runat="server" 
            controltovalidate="txtPWord"
            errormessage="Password is required.">*
        </asp:RequiredFieldValidator>
    </td>
    <td>Mot de passe:</td>
    <td>
      <input type="password" runat="server" id="txtPWord"/>
      <asp:RegularExpressionValidator runat="server" display="Dynamic"
            controltovalidate="txtPWord" 
            errormessage="Password must be nonblank characters." 
            validationexpression="[^\s]{4,12}" ForeColor="Red" />
    </td>
  </tr>
  <tr>
    <td>
        <asp:RequiredFieldValidator runat="server" 
            controltovalidate="txtRePWord"
            errormessage="Re-entrez Le mot de passe car est obligatoir.">*
        </asp:RequiredFieldValidator>
    </td>
    <td>Re-entrez mot de passe:</td>
    <td>
      <input type="password" runat="server" id="txtRePWord"/>
      <asp:CompareValidator runat="server"
            controltovalidate="txtRePWord"
            controltocompare="txtPWord" 
            errormessage=" Le mot de passe ne conespand pas." ForeColor="Red" />
    </td>
  </tr>
     
    
     
</table><br/>
        <br />
        <br />
        <br/>

        <p style="color:seagreen; font-size:24px;">Inos Personnel</p>
        <table>
            <tr>
 
    <td><asp:RequiredFieldValidator runat="server" 
            controltovalidate="txtName"
            errormessage="User ID is required.">*
        </asp:RequiredFieldValidator>Nom: </td>
    <td>
      <input type="text" runat="server" id="txtName"/>
      <asp:RegularExpressionValidator runat="server" display="Dynamic"
            controltovalidate="txtName" 
            errormessage="Le nom doit contient 6-10 lètters." 
            validationexpression="[a-zA-Z]{2,10}\w" ForeColor="Red" />
     
    </td>

  </tr>
            <tr>

                <td>
                    Sexe:
                </td> 
                <td>
     F<asp:RadioButton id="RadioButton1" runat="server" GroupName="measurementSystem"></asp:RadioButton>
     M<asp:RadioButton id="RadioButton2" runat="server" GroupName="measurementSystem"></asp:RadioButton>
                </td>
            </tr> 
            <tr>
    
    <td><asp:RequiredFieldValidator runat="server" 
            controltovalidate="date"
            errormessage="Date est obligatoire.">*
        </asp:RequiredFieldValidator>Date Naissance:</td>
    <td>
      <input type="date" runat="server" id="date"/>
      <asp:RangeValidator 
                 ID="RangeValidator1" 
                 runat="server" 
                 ErrorMessage="Date out of range" ControlToValidate="date" ForeColor="Red" MaximumValue="2011/01/01" MinimumValue="1900/01/01"></asp:RangeValidator>
    </td>

  </tr>
            <tr>
  
    <td>
         <asp:RequiredFieldValidator runat="server" 
            controltovalidate="DropDownList1"
            errormessage="Le lieu de Date de naissance est obligatoire.">*
        </asp:RequiredFieldValidator>Lieu Naissance:</td>

    <td>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Marrakech</asp:ListItem>
             <asp:ListItem>Fes</asp:ListItem>
            <asp:ListItem>Safi</asp:ListItem>
            <asp:ListItem>Layounne</asp:ListItem>
            <asp:ListItem>Casablanca</asp:ListItem>
        </asp:DropDownList>
    </td>
       <td>
        <asp:RequiredFieldValidator runat="server" 
            controltovalidate="DropDownList1"
            errormessage="Location Date is required.">*
        </asp:RequiredFieldValidator>
    </td>
  </tr>
     <tr>

    <td> <asp:RequiredFieldValidator runat="server" 
            controltovalidate="cin"
            errormessage="CIN is required.">*
        </asp:RequiredFieldValidator>CIN:</td>
         <asp:CustomValidator ID="CustomValidator1" 
                        runat="server"  Display="Dynamic" ForeColor="Red" 
                         ErrorMessage="Required" ControlToValidate="date"  
                        OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
    <td>
      <input type="Text" runat="server" id="cin"/>
      <asp:RegularExpressionValidator runat="server" display="Dynamic"
            controltovalidate="cin" 
            errormessage="CIN est obligatoire d'être {6,7}" 
            validationexpression="[a-zA-Z0-9]{7,8}" ForeColor="Red" />
    </td>
         
        
   
  </tr>
              <tr>

   
                <td>
                    Type Téléphone:
                </td>
                <td>
                     Fixe<asp:RadioButton id="RadioButton3" runat="server" GroupName="measurementSystem2"></asp:RadioButton>
     Mobile<asp:RadioButton id="RadioButton4" runat="server" GroupName="measurementSystem2"></asp:RadioButton>
                </td>
            </tr>
            <tr>
                <td>
                    Numéro de Téléphone
                </td>
                <td>
                    <input id="tele" type="text" runat="server"/>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="tele" ErrorMessage="Téléphone" 
                        ForeColor="Red" ValidationExpression="\(\d{3}\) \d{3}\-\d{4}" 
                        Display="Dynamic">
                        Le numéro de téléphone doit être au format : (***) ***-****
        </asp:RegularExpressionValidator>

                </td>
                
            </tr>
        </table>
        <br/>
        <br />
        <br />
        <br/>
      
        <asp:Button ID="Submit" runat="server" Text="Save" onclick="OnSubmit"/>
       <input id="Reset1" type="reset" value="reset" runat="server"/>
        <br />
&nbsp;</form>
</body>
</html>
