<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Detail.Master" AutoEventWireup="true" CodeBehind="EliminarAsignatura.aspx.cs" Inherits="WebApp.Pages.EliminarAsignatura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-2">
        <div class="row">
            <div class="col-12 mb-5">
                <h1 class="text-center">Baja Asignaturas</h1>
            </div>
            <div class="col-sm-12 col-md-6 mb-md-5">
                <p class="page-subtitle">
                    <b>Nombres y Apellidos:</b>&nbsp;<asp:Label ID="lbStudentName" Text="" runat="server" />
                </p>
                <p class="page-subtitle"><b>Carrera:</b>&nbsp;<asp:Label ID="lbStudentCareer" Text="" runat="server" /></p>
                <p class="page-subtitle"><b>Semestre:</b>&nbsp;<asp:Label ID="lbCurrentSemester" Text="" runat="server" /></p>
            </div>
            <div class="col-sm-12 col-md-6 mb-5">
                <p class="page-subtitle"><b>Carnet:</b>&nbsp;<asp:Label ID="lbStudentLicense" Text="" runat="server" /></p>
                <p class="page-subtitle"><b>Turno:</b>&nbsp;<asp:Label ID="lbStudentPeriod" Text="" runat="server" /></p>
            </div>

            <div class="col-12 mb-5">
                <p class="text-center">Por favor Ingrese la siguiente información y haga click en<i><b>Aceptar</b></i> para dar de baja la clase para este semestre</p>
            </div>
            <div class="col-12">


                <h5 class="modal-title" id="resaonModalLabel"><span>Baja de asignatura - </span><b><asp:Label ID="lbClassName" runat="server"></asp:Label></b></h5>

                <div class="modal-body">
                    <p>Por favor indique el motivo de la baja de la asignatura</p>
                    <div class="form-group">
                        <asp:DropDownList runat="server" ID="ddlMotivo">
                            <asp:ListItem Value="Motivos Laborales">Motivos Laborales</asp:ListItem>
                            <asp:ListItem Value="Salud">Salud</asp:ListItem>
                            <asp:ListItem Value="Inconveniente de horario">Inconveniente de horario</asp:ListItem>
                            <asp:ListItem Value="Otro">Otro</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="tbReason">Explique brevemente:</label>
                        <asp:TextBox class="form-control" Text="" ID="tbReason" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <%--<textarea class="form-control" id="reason"></textarea>--%>
                    </div>
                    <div class="form-group">
                        <label for="fuBajaDocument">Adjuntar documento de soporte</label>
                        <asp:FileUpload class="form-control" ID="fuBajaDocument" runat="server" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" onclick="window.location = '../Login.aspx';">Cancelar</button>
                    <asp:Button CssClass="btn btn-primary" ID="btnDeleteClass" runat="server" Text="Aceptar" OnClick="btnDeleteClass_Click" />
                </div>

            </div>
        </div>
    </div>
    <asp:HiddenField ID="hfScheduleId" runat="server" />

    </div>
</asp:Content>
