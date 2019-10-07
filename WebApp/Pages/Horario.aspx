<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Detail.Master" AutoEventWireup="true" CodeBehind="Horario.aspx.cs" Inherits="WebApp.Pages.Horario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-2">
        <div class="row">
            <div class="col-12 mb-5">
                <h1 class="text-center">Horario de Clases</h1>
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
                <asp:Table ID="tbSignedClasses" runat="server" CssClass="table table-striped table-responsive-sm text-center">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell Scope="Column">Hora</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Lunes</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Martes</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Miercoles</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Jueves</asp:TableHeaderCell>
                        <asp:TableHeaderCell Scope="Column">Viernes</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>7:00 AM - 8:40 AM</asp:TableCell>
                        <asp:TableCell>Filosofia</asp:TableCell>
                        <asp:TableCell>Introducción a la Ingenieria</asp:TableCell>
                        <asp:TableCell>Ingles I</asp:TableCell>
                        <asp:TableCell>Introducción a la Ingenieria</asp:TableCell>
                        <asp:TableCell>Geometria Analitica y Descriptiva</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>8:45 AM - 10:30 AM</asp:TableCell>
                        <asp:TableCell>&nbsp;</asp:TableCell>
                        <asp:TableCell>Introducción a la Ingenieria</asp:TableCell>
                        <asp:TableCell>Filosofia</asp:TableCell>
                        <asp:TableCell>&nbsp;</asp:TableCell>
                        <asp:TableCell>Geometria Analitica y Descriptiva</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>10:35 AM - 12:05 PM</asp:TableCell>
                        <asp:TableCell>Ingles I</asp:TableCell>
                        <asp:TableCell>Ingles I</asp:TableCell>
                        <asp:TableCell>Geometrica Analitica y Descriptiva</asp:TableCell>
                        <asp:TableCell>&nbsp;</asp:TableCell>
                        <asp:TableCell>Introduccion a la Ingenieria</asp:TableCell>
                    </asp:TableRow>

                </asp:Table>
            </div>
            <div class="col-12 text-center no-print">
                <asp:Button ID="btnConfirmClasses" Text="Imprimir" class="btn btn-primary" runat="server" OnClientClick="window.print();" />
            </div>
        </div>

    </div>
</asp:Content>
