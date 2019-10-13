<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Dean.Master" AutoEventWireup="true" CodeBehind="RevisionSolicitud.aspx.cs" Inherits="WebApp.Pages.RevisionSolicitud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container py-2">
        <div class="row">
            <div class="col-12 mb-5">
                <h1 class="text-center">Solicitud de asignaturas</h1>
            </div>

            <div class="col-12 mb-5">
                <p class="text-center">Los siguientes estudiantes han solicitado inscribir asignaturas extra en este semestre</p>

                <asp:Table ID="tbSignedClasses" runat="server" CssClass="table table-striped table-responsive-sm signed-classes">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell Scope="Column">#</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Estudiante</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Carrera</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Año</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Asignatura</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Motivo</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Carta Solicitud</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Aprobar</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Denegar</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>1</asp:TableCell>
                        <asp:TableCell>Jeanneth Mota López</asp:TableCell>
                        <asp:TableCell>Ing. Computación</asp:TableCell>
                        <asp:TableCell>3ro</asp:TableCell>
                        <asp:TableCell>Ingenieria de Software 2</asp:TableCell>
                        <asp:TableCell>Trabajo</asp:TableCell>
                        <asp:TableCell><a href="../Assets/Solicitud Inscripcion.pdf" target="_blank">Ver Adjunto</a></asp:TableCell>
                        <asp:TableCell><a><i class="fas fa-check text-success"></i></a></asp:TableCell>
                        <asp:TableCell><a><i class="fas fa-times-circle text-danger"></i></a></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>1</asp:TableCell>
                        <asp:TableCell>Nelson Castro</asp:TableCell>
                        <asp:TableCell>Ing. Computación</asp:TableCell>
                        <asp:TableCell>3ro</asp:TableCell>
                        <asp:TableCell>Ingenieria de Software 2</asp:TableCell>
                        <asp:TableCell>Salud</asp:TableCell>
                        <asp:TableCell><a href="../Assets/Solicitud Inscripcion.pdf" target="_blank">Ver Adjunto</a></asp:TableCell>
                        <asp:TableCell><a><i class="fas fa-check text-success"></i></a></asp:TableCell>
                        <asp:TableCell><a><i class="fas fa-times-circle text-danger"></i></a></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                
            </div>
            <%--<div class="col-12 text-center">
                <asp:Button ID="btnConfirmClasses" Text="Confirmar" class="btn btn-primary" runat="server" OnClientClick="return confirm('¿Desea guardar los cambios? Esta acción no se puede deshacer');" />
            </div>--%>
        </div>

    </div>
</asp:Content>
