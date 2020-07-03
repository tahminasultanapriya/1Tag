<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default13.aspx.cs" Inherits="Default13" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td> name</td>
            <td> <input type="text" id="t1" onkeyup="search1();"/></td>
        </tr>
          <tr>
            <td> city</td>
            <td> <input type="text" id="t2"/></td>
        </tr>
        <tr>
            <td>
                <input type="button" id="b1" value="insert" onclick="insert();"/>
                <input type="button" id="b2" value="display" onclick="display();"/>
                <input type="button" id="b3" value="delete" onclick="delete1();"/>
                <input type="button" id="b4" value="update" onclick="update1();"/>
                <input type="button" id="b5" value="search" />
            </td>
        </tr>
    </table>
    
        <div id="d1"></div>


    </div>
    </form>

        <script type="text/javascript">
            function delete1() {
                var name = document.getElementById("t1").value;


                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", "insert.aspx?nm=" + name + "&opr=delete", false);
                xmlhttp.send(null);

                document.getElementById("t1").value = "";

                alert("data deleted successfully");
                display();
            }

            function update1() {
                var oldname = document.getElementById("t1").value;
                var newname = document.getElementById("t2").value;


                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", "insert.aspx?oldname=" + oldname + "&newname=" + newname + "&opr=update", false);
                xmlhttp.send(null);

                document.getElementById("t1").value = "";
                document.getElementById("t2").value = "";

                display();

                alert("data updated successfully");

            }

            function insert() {
                var name = document.getElementById("t1").value;
                var city = document.getElementById("t2").value;

                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", "insert.aspx?nm=" + name + "&ct=" + city + "&opr=insert", false);
                xmlhttp.send(null);

                document.getElementById("t1").value = "";
                document.getElementById("t2").value = "";

                display();
                alert("data inserted successfully");
            }


            function display() {


                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", "insert.aspx?opr=display", false);
                xmlhttp.send(null);

                document.getElementById("d1").innerHTML = xmlhttp.responseText;


            }


            function search1() {


                var xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", "nonregtags.aspx?opr=search&nm1=" + document.getElementById("t1").value, false);
                xmlhttp.send(null);

                document.getElementById("d1").innerHTML = xmlhttp.responseText;


            }

    </script>

</body>
</html>
