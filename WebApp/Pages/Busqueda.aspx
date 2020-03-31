<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Busqueda.aspx.cs" Inherits="WebApp.Pages.Busqueda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-2">
        <div class="row">
            <span style="position: absolute; right: 10px; color: #003782; font-size: 24px;" data-toggle="modal" data-target="#exampleModalCenter">
                <i class="fas fa-question-circle"></i>
            </span>
            <div class="col-12 mb-5">
                <h1 class="text-center">Busqueda de Estudiantes</h1>
                <%--<p class="text-center">Ingrese el nombre o el número de carnet del estudiante</p>--%>
            </div>
            <div class="col-6 offset-3 mb-5">
                <div class="form-group">
                    <asp:Label AssociatedControlID="txtSearch" Text="Ingrese el nombre o el número de carnet del estudiante" runat="server" />
                    <asp:TextBox ID="txtSearch" class="form-control text-center" Text="" runat="server" OnTextChanged="txtSearch_TextChanged" autocomplete="off"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label AssociatedControlID="ddlCareer" Text="Seleccionar Carrera" runat="server" />
                    <asp:DropDownList runat="server" ID="ddlCareer" CssClass="form-control">
                        <asp:ListItem Text="Ing.Computación" />
                    </asp:DropDownList>
                </div>
                <div class="form-group text-center">
                    <asp:Button ID="btnSearch" Text="Buscar" class="btn btn-primary" runat="server" OnClick="btnSearch_Click" />
                </div>
            </div>


            <div class="col-12 mb-5">
                <asp:Repeater runat="server" ID="rptStudents">
                    <HeaderTemplate>
                        <table id="tbSignedClasses" class="table table-striped table-responsive-sm students-table">
                            <tr>
                                <th scope="col">Nombre</th>
                                <th scope="col">Carrera</th>
                                <th scope="col">Carnet</th>
                                <th scope="col">Grupo</th>
                                <th scope="col">Confirmar</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr class="content-row">
                            <td>
                                <asp:Label ID="lbStudentName" runat="server" Text='<%# Eval("StudentName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("CareerName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("License") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("GroupName") %>' />
                            </td>
                            <td>
                                <%--data-toggle="modal" data-target="#reasonModal"--%>
                                <asp:LinkButton runat="server" ID="btnConfirm" CssClass='<%# DisplayConfirmButton(Eval("StudentId")) %>'
                                    CausesValidation="false" OnCommand="btnConfirm_Command" CommandArgument='<%# Eval("StudentId") %>' ToolTip="Confirmar Asignaturas">
                                     <i class="fas fa-tasks text-info"></i>
                                </asp:LinkButton>
                                <asp:LinkButton runat="server" ID="btnHojaMatricula" CssClass='<%# DisplayHojaMatriculaButton(Eval("StudentId")) %>'
                                    CausesValidation="false" OnCommand="btnHojaMatricula_Command" CommandArgument='<%# Eval("StudentId") %>' ToolTip="Mostrar Hoja Matricula Asignatura">
                                     <i class="fas fa-book text-success"></i>
                                </asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>

    </div>
    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Confirmación de clases</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>
                        En esta página puede consultar la base de datos de estudiantes para realizar su proceso de confirmación.
                    </p>
                    <p><b>Acciones</b></p>
                    <ul>
                        <li>
                            <i class="fas fa-search"></i>
                            <span> Busqueda de estudiantes: Puede ser por nombre o por número de carnet y seleccionando la carrera.</span>
                        </li>
                        <br />
                        <li>
                            <i class="fas fa-tasks text-info"></i>
                            <span> Imprimir Hoja de matricula de un estudiante que ya confirmó asignaturas</span>
                        </li>
                        <br />
                        <li>
                            <i class="fas fa-book text-success"></i>
                            <span> Confirmar asignaturas para el estudiante</span>
                        </li>
                    </ul>
                    <p>Una vez elija una opción será redireccionado al perfil del estudiante seleccionado</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
