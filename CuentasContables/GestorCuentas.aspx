<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestorCuentas.aspx.cs" Inherits="CuentasContables.GestorCuentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/GestorRegistros.aspx">Ir al Gestor de Registros...</asp:HyperLink>
            <br />
            <br />
            <asp:TextBox ID="tbCuentaNueva" runat="server"></asp:TextBox>
            <asp:Button ID="btnAlta" runat="server" OnClick="btnAlta_Click" Text="Alta" Width="57px" />
            <asp:Label ID="LabelAlta" runat="server"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="ddlCuentaExistente" runat="server" AutoPostBack="True" DataSourceID="SqlCuentas" DataTextField="descripcion" DataValueField="id" Height="16px" OnSelectedIndexChanged="ddlCuentaExistente_SelectedIndexChanged" Width="165px">
            </asp:DropDownList>
            <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
            <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
            <asp:Label ID="LabelMod" runat="server"></asp:Label>
            <br />
            <asp:TextBox ID="tbCuentaExistente" runat="server"></asp:TextBox>
            <br />
            <asp:SqlDataSource ID="SqlCuentas" runat="server" ConnectionString="<%$ ConnectionStrings:database %>" DeleteCommand="DELETE FROM [Cuentas] WHERE [id] = @id" InsertCommand="INSERT INTO [Cuentas] ([descripcion]) VALUES (@descripcion)" SelectCommand="SELECT * FROM [Cuentas]" UpdateCommand="UPDATE [Cuentas] SET [descripcion] = @descripcion WHERE [id] = @id">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="ddlCuentaExistente" Name="id" PropertyName="SelectedValue" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="tbCuentaNueva" Name="descripcion" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="tbCuentaExistente" Name="descripcion" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="ddlCuentaExistente" Name="id" PropertyName="SelectedValue" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
