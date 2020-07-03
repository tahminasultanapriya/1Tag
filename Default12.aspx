<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default12.aspx.cs" Inherits="ProjectDemo_Asp.et.Default12" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Autocomplete Textbox in Asp.Net With DataBase Using C# AjaxControlToolkit
    </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        Search : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        
        <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" 
                    ServiceMethod="AutoCompleteAjaxRequest"
                    ServicePath="AutoComplete.asmx"
                    MinimumPrefixLength="2" 
                    CompletionInterval="100"
                    EnableCaching="false" 
                    CompletionSetCount="10"
                    TargetControlID="TextBox1"  
                    FirstRowSelected="false">
        </asp:AutoCompleteExtender>
    </div>
    </form>
</body>
</html>