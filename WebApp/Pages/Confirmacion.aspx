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
                <p class="page-subtitle"><b>Nombres y Apellidos:</b>&nbsp;<asp:Label ID="lbStudentName" Text="" runat="server" /> </p>
                <p class="page-subtitle"><b>Carrera:</b>&nbsp;<asp:Label ID="lbStudentCareer" Text="" runat="server" /></p>
                <p class="page-subtitle"><b>Semestre:</b>&nbsp;<asp:Label ID="lbCurrentSemester" Text="" runat="server" /></p>
            </div>
            <div class="col-sm-12 col-md-6 mb-5">
                <p class="page-subtitle"><b>Carnet:</b>&nbsp;<asp:Label ID="lbStudentLicense" Text="" runat="server" /></p>
                <p class="page-subtitle"><b>Turno:</b>&nbsp;<asp:Label ID="lbStudentPeriod" Text="" runat="server" /></p>
            </div>

            <div class="col-12 mb-5">
                <asp:Table ID="tbSignedClasses" runat="server" CssClass="">
                </asp:Table>

                <asp:Repeater ID="rptMenu" runat="server">
                    <HeaderTemplate>
                        <table id="tbSignedClasses" class="table table-striped table-responsive-sm signed-classes">
                            <tr>
                                <th scope="col">Asignatura</th>
                                <th scope="col">Estado</th>
                                <th scope="col">Grupo</th>
                                <th scope="col">Aula</th>
                                <th scope="col">Créditos</th>
                                <th scope="col">Acción</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Label ID="lbAsignaturaName" runat="server" Text='<%# Eval("ClassName") %>' />
                            </td>
                            <td>
                                <i class="fas fa-circle <%# SetStatusColorClass(Eval("StatusId")) %>" title='<%# Eval("StatusName") %>'></i>
                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("GroupName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ClassroomName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Credits") %>' />
                            </td>
                            <td>
                                <%--data-toggle="modal" data-target="#reasonModal"--%>
                                <asp:LinkButton runat="server" ID="btnDelete" CssClass='<%# DisplayDeleteButton(Eval("Id")) %>'
                                    CausesValidation="false" OnCommand="btnDelete_Command" CommandArgument='<%# Eval("Id") %>' ToolTip="Eliminar Asignatura">
                                     <i class="fas fa-trash-alt delete-icon"></i>
                                </asp:LinkButton>
                                <asp:LinkButton runat="server" ID="LinkButton1" CssClass='<%# DisplayAddButton(Eval("Id")) %>'
                                    CausesValidation="false" OnCommand="btnAdd_Command" CommandArgument='<%# Eval("Id") %>' ToolTip="Añadir Asignatura">
                                     <i class="fas fa-plus-circle success"></i>
                                </asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                <p class="text-center">Si esta de acuerdo con tomar estas asignaturas, por favor haga click en <i><b>Confirmar</b></i> para generar su hoja de matricula</p>
            </div>
            <div class="col-12 text-center">
                <asp:Button ID="btnConfirmClasses" Text="Confirmar" class="btn btn-primary" runat="server" OnClientClick="return confirm('¿Desea guardar los cambios? Esta acción no se puede deshacer');" OnClick="btnConfirmClasses_Click" />
            </div>
        </div>
        <asp:HiddenField ID="hfScheduleId" runat="server"/>

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
