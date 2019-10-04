<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Detail.Master" AutoEventWireup="true" CodeBehind="Confirmacion.aspx.cs" Inherits="WebApp.Pages.Confirmacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-2">
        <div class="row">
            <div class="col-12 mb-5">
                <h1 class="text-center">Confimación de asignaturas</h1>
            </div>
            <div class="col-sm-12 col-md-6 mb-md-5">
                <p class="page-subtitle"><b>Nombres y Apellidos:</b> Manuel Abraham Gutiérrez</p>
                <p class="page-subtitle"><b>Carrera:</b> Ingeniería en Computación</p>
                <p class="page-subtitle"><b>Semestre:</b> Segundo Semestre 2019</p>
            </div>
            <div class="col-sm-12 col-md-6 mb-5">
                <p class="page-subtitle"><b>Carnet:</b> 2008-23295</p>
                <p class="page-subtitle"><b>Turno:</b> Diurno</p>
            </div>

            <div class="col-12 mb-5">
                <asp:Table ID="tbSignedClasses" runat="server" CssClass="table table-striped table-responsive-sm signed-classes">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell Scope="Column">#</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Asignatura</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Grupo</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Aula</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Créditos</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Eliminar</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>1</asp:TableCell>
                        <asp:TableCell>Filosofia</asp:TableCell>
                        <asp:TableCell>1M1-CO</asp:TableCell>
                        <asp:TableCell>1030</asp:TableCell>
                        <asp:TableCell>5</asp:TableCell>
                        <asp:TableCell><a><i class="fas fa-trash-alt delete-icon"></i></a></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>2</asp:TableCell>
                        <asp:TableCell>Introduccion a la Ingenieria en computación</asp:TableCell>
                        <asp:TableCell>1M1-CO</asp:TableCell>
                        <asp:TableCell>1030</asp:TableCell>
                        <asp:TableCell>5</asp:TableCell>
                        <asp:TableCell><a><i class="fas fa-trash-alt delete-icon"></i></a></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>3</asp:TableCell>
                        <asp:TableCell>Geometría Analitica y Descriptiva</asp:TableCell>
                        <asp:TableCell>1M1-CO</asp:TableCell>
                        <asp:TableCell>1030</asp:TableCell>
                        <asp:TableCell>5</asp:TableCell>
                        <asp:TableCell><a><i class="fas fa-trash-alt delete-icon"></i></a></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>4</asp:TableCell>
                        <asp:TableCell>Ingles I</asp:TableCell>
                        <asp:TableCell>1M1-CO</asp:TableCell>
                        <asp:TableCell>1030</asp:TableCell>
                        <asp:TableCell>5</asp:TableCell>
                        <asp:TableCell><asp:LinkButton ID="btnDelete" runat="server" OnClientClick="return confirm('¿Está seguro de eliminar esta asignatura?')" ><i class="fas fa-trash-alt delete-icon"></i></asp:LinkButton></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                <p class="text-center">Si esta de acuerdo con tomar estas asignaturas, por favor haga click en <i><b>Confirmar</b></i> para generar su hoja de matricula</p>
            </div>
            <div class="col-12 text-center">
                <asp:Button ID="btnConfirmClasses" Text="Confirmar" class="btn btn-primary" runat="server" OnClientClick="return confirm('¿Desea guardar los cambios? Esta acción no se puede deshacer');" OnClick="btnConfirmClasses_Click" />
            </div>
        </div>

    </div>
</asp:Content>
