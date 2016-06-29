<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carga-Empresa.aspx.cs" Inherits="PrimerosPasosEF.Carga_Empresa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     
        <asp:Label ID="lblId" runat="server" Text="Id"></asp:Label>
        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>

        <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>

        <asp:Label ID="lblEmpleados" runat="server" Text="Empleados"></asp:Label>

        <asp:CheckBoxList runat="server" ID="checksEmpleado">
           
        </asp:CheckBoxList>
        <asp:Button ID="btnCrear" runat="server" Text="Crear" OnClick="btnCrear_Click" />
        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" />
    </div>
    </form>
</body>
</html>
