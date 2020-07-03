<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default11.aspx.cs" Inherits="Default11" %>  
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
    <html xmlns="http://www.w3.org/1999/xhtml">  
  
    <head id="Head1" runat="server">  
        <title>Untitled Page</title>  
        <style type="text/css">  
            .Gridview {  
                font-family: Verdana;  
                font-size: 10pt;  
                font-weight: normal;  
                color: black;  
            }  
        </style>  
        <script type="text/javascript">  
        </script>  
    </head>  
  
    <body>  
        <form id="form1" runat="server">  
            <div>  
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="id" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">  
                    <Columns>  
                        <asp:BoundField DataField="id" HeaderText="S.No." />  
                        <asp:BoundField DataField="username" HeaderText="Name" />  
                        <asp:BoundField DataField="email" HeaderText="address" />  
                        <asp:BoundField DataField="country" HeaderText="Country" />  
                        <asp:CommandField ShowEditButton="true" />  
                        <asp:CommandField ShowDeleteButton="true" /> </Columns>  
                </asp:GridView>  
            </div>  
            <div>  
                <asp:Label ID="lblresult" runat="server"></asp:Label>  
            </div>  
        </form>  
    </body>  
  
    </html>  
