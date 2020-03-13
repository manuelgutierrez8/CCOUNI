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
                <asp:Table ID="tbSignedClasses" runat="server" CssClass="">
                </asp:Table>

                <asp:Repeater ID="rptMenu" runat="server">
                    <HeaderTemplate>
                        <table id="tbSignedClasses" class="table table-striped table-responsive-sm signed-classes">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Asignatura</th>
                                <th scope="col">Grupo</th>
                                <th scope="col">Aula</th>
                                <th scope="col">Créditos</th>
                                <th scope="col">Eliminar</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                1
                            </td>
                            <td>
                                <asp:Label ID="lbAsignaturaName" runat="server" Text='<%# Eval("ClassName") %>' />
                            </td>
                            <td>
                                as
                            </td>
                            <td>
                                as
                            </td>
                            <td>
                                as
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>

                <%--<asp:TableRow>
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
                        <asp:TableCell><asp:LinkButton ID="btnDelete" data-toggle="modal" data-target="#reasonModal" runat="server"><i class="fas fa-trash-alt delete-icon"></i></asp:LinkButton></asp:TableCell>
                        <%--OnClientClick="return confirm('¿Está seguro de eliminar esta asignatura?')"--%>
                    </asp:TableRow>--%>
                

                <p class="text-center">Si esta de acuerdo con tomar estas asignaturas, por favor haga click en <i><b>Confirmar</b></i> para generar su hoja de matricula</p>
            </div>
            <div class="col-12 text-center">
                <asp:Button ID="btnConfirmClasses" Text="Confirmar" class="btn btn-primary" runat="server" OnClientClick="return confirm('¿Desea guardar los cambios? Esta acción no se puede deshacer');" OnClick="btnConfirmClasses_Click" />
            </div>
        </div>

    </div>
    <div class="modal fade" id="reasonModal" tabindex="-1" role="dialog" aria-labelledby="reasonModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="resaonModalLabel">Baja de asignatura</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Por favor indique el motivo de la baja de la asignatura</p>
                    <div class="form-group">
                        <select>
                            <option>Motivos Laborales</option>
                            <option>Salud</option>
                            <option>Inconveniente de horario</option>
                            <option>Otro</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="reason">Explique brevemente:</label>
                        <textarea class="form-control" id="reason"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <asp:Button CssClass="btn btn-primary" ID="btnDeleteClass" runat="server" Text="Aceptar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
