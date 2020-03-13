<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Detail.Master" AutoEventWireup="true" CodeBehind="EliminarAsignatura.aspx.cs" Inherits="WebApp.Pages.EliminarAsignatura" %>
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
                <p class="text-center">Si esta de acuerdo con tomar estas asignaturas, por favor haga click en <i><b>Confirmar</b></i> para generar su hoja de matricula</p>
            </div>
            <div class="col-12 text-center">
                <asp:Button ID="btnConfirmClasses" Text="Confirmar" class="btn btn-primary" runat="server" OnClientClick="return confirm('¿Desea guardar los cambios? Esta acción no se puede deshacer');" OnClick="btnConfirmClasses_Click" />
            </div>
        </div>
        <asp:HiddenField ID="hfScheduleId" runat="server"/>

    </div>
</asp:Content>
