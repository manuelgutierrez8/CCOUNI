<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Detail.Master" AutoEventWireup="true" CodeBehind="SolicitudAsignatura.aspx.cs" Inherits="WebApp.Pages.SolicitudAsignatura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-2">
        <div class="row">
            <div class="col-12 mb-5">
                <h1 class="text-center">Solicitud de asignaturas</h1>
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

            <div class="col-6 offset-md-3 mb-5">
                <p class="text-center">Segun su historial de notas y flujograma, puede inscribir las siguientes asignaturas: </p>

                <asp:DropDownList runat="server" ID="ddlClasses" CssClass="form-control mb-4">
                    <asp:ListItem Text="Ingles II" />
                    <asp:ListItem Text="Cultura de Paz" />
                </asp:DropDownList>

                <p class="text-center">Favor agregue una carta de solicitud dirigida al decano de la facultad </p>
                <asp:FileUpload runat="server" ID="fuLetter" />

            </div>
            <div class="col-12 text-center">
                <asp:Button ID="btnConfirmClasses" Text="Confirmar" class="btn btn-primary" runat="server" OnClientClick="return confirm('¿Enviar solicitud? Esta sera revisada y respondida por el decano');" />
            </div>
        </div>

    </div>
</asp:Content>
