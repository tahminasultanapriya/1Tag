<%@ Page Language="C#" AutoEventWireup="true" CodeFile="popup.aspx.cs" Inherits="popup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Mail With Attachement</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="4" cellspacing="4" width="40%" align="center" border="0" style="border-color: Silver;">
                <tr>
                    <td align="center" style="background-color: Gray; height: 30px;">
                        <span>Sending mail with attachement in asp.net. </span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="2" cellspacing="2" width="70%" align="center" style="background-color: #A5A5A5;">
                            <tr>
                                <td>
                                    <asp:Label ID="lblMailFrom" runat="server" Text="From:" Width="100px"></asp:Label>
                                    <asp:TextBox ID="txtFrom" runat="server" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblMailTo" runat="server" Text="To:" Width="100px"></asp:Label>
                                    <asp:TextBox ID="txtMailTo" runat="server" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblSubject" runat="server" Text="Subject:" Width="100px"></asp:Label>
                                    <asp:TextBox ID="txtSubject" runat="server" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblAttachFile" runat="server" Text="File to send:" Width="100px"></asp:Label>
                                    <input type="file" id="AttachFile" runat="server" name="fileAttachement" width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblMessage" runat="server" Text="Your Message:" Width="100px"></asp:Label>
                                    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Height="80px" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Button ID="btnSendMail" runat="server" Text="Send Mail" OnClick="btnSendMail_Click"
                                        Width="140px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
