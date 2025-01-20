<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FelizCumpleaños.aspx.cs" Inherits="CumpleañosFeliz.FelizCumpleaños" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <title>Buon Compleanno</title>
    <link href="styles.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
     <script>
        // Función para cambiar el color del Label cada 500 ms
        function cambiarColor() {
            const lblCompleanno = document.getElementById('<%= lblCompleanno.ClientID %>');
            const colores = ["red", "blue", "green", "orange", "purple", "pink"];
            let indice = 0;

            setInterval(() => {
                lblCompleanno.style.color = colores[indice];
                indice = (indice + 1) % colores.length; // Cambiar al siguiente color
            }, 500);
        }

        // Llama a la función al cargar la página
         window.onload = cambiarColor;

    </script>
</head>

<body>
    <form id="form1" runat="server">
        <asp:Label runat="server" id="titulo"> Tocca questa torta</asp:Label>
    <div class="container" style="display:flex">
        <asp:ImageButton runat="server" ImageUrl="~/Imagenes/TortaCumpleaños.png" id="torta" OnClick="torta_Click"/>
        <asp:Label runat="server" id="lblCompleanno" visible="false"> Buon Compleanno <br /> Alessandra :)</asp:Label>
    </div>    
    </form>
</body>
</html>