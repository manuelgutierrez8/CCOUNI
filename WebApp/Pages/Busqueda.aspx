<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Busqueda.aspx.cs" Inherits="WebApp.Pages.Busqueda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-2">
        <div class="row">
            <div class="col-12 mb-5">
                <h1 class="text-center">Busqueda de Estudiantes</h1>
                <p class="text-center">Ingrese el nombre o el número de carnet del estudiante</p>
            </div>
            <div class="col-6 offset-3 mb-5">
                <div class="form-group">
                    <asp:TextBox ID="txtSearch" class="form-control" runat="server" OnTextChanged="txtSearch_TextChanged"  autocomplete="off"></asp:TextBox>
                </div>
                <div class="form-group text-center">
                    <asp:Button ID="btnLogin" runat="server" Text="Buscar" Class="btn btn-primary"/>
                </div>
            </div>


            <div class="col-12 mb-5">
                <asp:Table ID="tbStudents" runat="server" CssClass="table table-striped table-responsive-sm text-center d-none">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell Scope="Column">Nombre</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Carnet</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Carrera</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Turno</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Confirmar</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>Manuel Abraham Gutierrez Rojas</asp:TableCell>
                        <asp:TableCell>2008-23295</asp:TableCell>
                        <asp:TableCell>Ing. en Computación</asp:TableCell>
                        <asp:TableCell>Diurno</asp:TableCell>
                        <asp:TableCell><asp:LinkButton ID="btnConfirm" OnClick="btnConfirm_Click" runat="server" ToolTip="Confirmar Asignaturas"><i class="fas fa-tasks confirm-icon"></i></asp:LinkButton></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
<%--            <div class="col-12 text-center">
                <asp:Button ID="btnConfirmClasses" Text="Confirmar" class="btn btn-primary" runat="server" OnClientClick="return confirm('¿Desea guardar los cambios? Esta acción no se puede deshacer');" />
            </div>--%>
        </div>

    </div>
</asp:Content>
