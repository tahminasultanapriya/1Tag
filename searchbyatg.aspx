<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchbyatg.aspx.cs" Inherits="Default7" %>  
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
                <h1>Search By Tags</h1>
            </div>  
            <div style="margin-top:100px;">  
                <asp:Repeater ID="rptrCustomer" runat="server">  
                    <HeaderTemplate>  
                        <table id="tableCustomer" class="display">  
                            <thead>  
                                <tr>  
                                    <th> Id </th>  
                                    <th> Username </th>  
                                    <th> Tag </th>  
                                    <th> Comment </th>  
                                    <th> Date </th>
                                    <th> Likes </th>    
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
                                <%# DataBinder.Eval(Container.DataItem, "tag")%>  
                            </td>  
                            <td>  
                                <%# DataBinder.Eval(Container.DataItem, "com")%>  
                            </td> 
                            <td>  
                                <%# DataBinder.Eval(Container.DataItem, "date")%>  
                            </td>  
                            <td>  
                                <%# DataBinder.Eval(Container.DataItem, "Likes")%>  
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
