<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carga-Empleado.aspx.cs" Inherits="PrimerosPasosEF.Carga_Empleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:Label ID="lblId" runat="server" Text="Id"></asp:Label><asp:TextBox ID="txtid" runat="server"></asp:TextBox>
         <br />
         <asp:Label ID="lblNom" runat="server" Text="Nombre"></asp:Label><asp:TextBox ID="txtNom" runat="server"></asp:TextBox>
         <br />
         <asp:Label ID="lblApe" runat="server" Text="Apellido"></asp:Label><asp:TextBox ID="txtApe" runat="server"></asp:TextBox>
         <br />
         <asp:Label ID="lblFechaN" runat="server" Text="Fecha Nacimiento"></asp:Label><asp:TextBox ID="txtFech" runat="server"></asp:TextBox>

         <br />
         <asp:Label ID="lblTipo" runat="server" Text="Tipo"></asp:Label>
        <asp:DropDownList ID="tipos" runat="server">
            <asp:ListItem Text="Administrativo" Value="0"></asp:ListItem>
            <asp:ListItem Text="Programador" Value="1"></asp:ListItem>
        </asp:DropDownList>

         <br />
         <asp:Label ID="lblEmpresa" runat="server" Text="Empresa"></asp:Label>
         <asp:TextBox ID="txtEmpresa" runat="server"></asp:TextBox>

         <br />
         <br />
         <br />

        <asp:Button ID="darDeAlta" runat="server" Text="Crear" OnClick="darDeAlta_Click" />
        <asp:Button ID="actualizar" runat="server" Text="Actualizar" OnClick="actualizar_Click" />
        <asp:Button ID="obtenerEmp" runat="server" Text="Obtener" OnClick="obtenerEmp_Click"/>


         <asp:Button ID="btnCrearEmpresa" runat="server" Text="Crear empresa" OnClick="btnCrearEmpresa_Click" />


         <br />


    </div>
        <p>
        <asp:Label ID="lblNombreObtenido" runat="server" Text=""></asp:Label>
        </p>
        <p>
        <asp:Label ID="lblApellidoObtenido" runat="server" Text=""></asp:Label>
        </p>
        <p>
        <asp:Label ID="lblFechaNacObtenido" runat="server" Text=""></asp:Label>
        </p>
        <p>
        <asp:Label ID="lblTipoObtenido" runat="server" Text=""></asp:Label>
        </p>
    </form>
</body>
</html>
