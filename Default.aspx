<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="InsuranceRenewalReminder._Default" %>

<form runat="server">
    <link rel="stylesheet" href="bootstrap.min.css" >
    <link href="InsuranceRenewal.css" rel="stylesheet" />

    <div class="jumbotron">
        <h1 class="hd1">ROYAL LONDON INSURANCE RENEWAL UTILITY</h1>
        <p>This utility will help you create templates for emails to be sent to clients for their insurance renewal reminder.</p>
    </div>

    <table class="table">
        <tr>
            <td>
                 
                <asp:fileupload id="flupload" runat="server" accept="csv" class="btn btn-info" ></asp:fileupload>
                    
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:button id="btnInput" runat="server" text="Create Reminders" OnClick="btnInput_Click" onClientClick="return ValidateFileUpload();" class="btn btn-info" />
            </td>
        </tr>
        <tr>
            <td >
                <asp:label id="lblResult" runat="server" text="."></asp:label>
            </td>
        </tr>
    </table>
    
    
<script language="javascript" type="text/javascript">   

    function ValidateFileUpload() {
        var fuData = document.getElementById('<%= flupload.ClientID %>');
        var FileUploadPath = fuData.value;

        if (FileUploadPath == '') {
            // There is no file selected
            alert("Please select input CSV file");
            return false;
        }
        else {
            var Extension = FileUploadPath.substring(FileUploadPath.lastIndexOf('.') + 1).toLowerCase();

            if (Extension == "csv" || Extension == "CSV" || Extension == "txt") {
                // Valid file type
            }
            else {
                // Not valid file type
                alert("Please select appropreate input file");
                return false;
            }
        }
    }
    
    
</script>
    <script src="jquery-3.2.1.slim.min.js" ></script>
<script src="popper.min.js" ></script>
<script src="bootstrap.min.js" ></script>
    </form>



