﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>  
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:ScriptManager ID="ScriptManager1" runat="server" 
EnablePageMethods = "true">
</asp:ScriptManager>

<asp:TextBox ID="txtContactsSearch" runat="server" AutoCompleteType="Search"></asp:TextBox>
        <cc1:AutoCompleteExtender ID="txtContactsSearch_AutoCompleteExtender" runat="server" BehaviorID="txtContactsSearch_AutoCompleteExtender" TargetControlID="txtContactsSearch">
        </cc1:AutoCompleteExtender>
    </div>
    </form>
</body>
</html>
