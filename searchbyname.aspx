<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchbyname.aspx.cs" Inherits="Default8" %>  
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
    <html xmlns="http://www.w3.org/1999/xhtml">  
  
    <head id="Head1" runat="server">  
        <title>All Student Records </title>  
        <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.0/css/jquery.dataTables.css" />  
        <script type="text/javascript" charset="utf8" src="//code.jquery.com/jquery-1.10.2.min.js"></script>  
        <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.0/js/jquery.dataTables.js"></script>  
        <script>
            $(document).ready(function () {
                $('#tableCustomer').dataTable();
            });
        </script>  
    </head>  
  
    <body>  
        <form id="form1" runat="server">
            <div style="text-align:center;background-color:#33cc33;height:40px;">
                <h1>Search By Name</h1>
            </div>  
            <div style="margin-top:100px;">  
                <asp:Repeater ID="rptrCustomer" runat="server">  
                    <HeaderTemplate>  
                        <table id="tableCustomer" class="display">  
                            <thead>  
                                <tr>  
                                    <th> Id </th>  
                                    <th> Name </th>  
                                    <th> Email </th>  
                                    <th> Password </th>  
                                    <th> Country </th>
                                    <th> Gender </th>    
                                </tr>  
                            </thead>  
                    </HeaderTemplate>  
                    <ItemTemplate>  
                        <tr>  
                            <td>  
                                <%# DataBinder.Eval(Container.DataItem, "id")%>  
                            </td>  
                            <td>  
                                <%# DataBinder.Eval(Container.DataItem, "username")%>  
                            </td>  
                            <td>  
                                <%# DataBinder.Eval(Container.DataItem, "email")%>  
                            </td>  
                            <td>  
                                <%# DataBinder.Eval(Container.DataItem, "password")%>  
                            </td> 
                            <td>  
                                <%# DataBinder.Eval(Container.DataItem, "country")%>  
                            </td>  
                            <td>  
                                <%# DataBinder.Eval(Container.DataItem, "gender")%>  
                            </td>   
                        </tr>  
                    </ItemTemplate>  
                    <FooterTemplate>  
                        </table>  
                    </FooterTemplate>  
                </asp:Repeater>  
            </div>  
        </form>  
    </body>  
  
    </html> 
