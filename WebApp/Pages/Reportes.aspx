<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="WebApp.Pages.Reportes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-2">
        <asp:MultiView ID="mvReports" runat="server">
            <asp:View ID="vwReportList" runat="server">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1>Reportes disponibles</h1>
                    </div>
                    <div class="col-12 my-4">
                        <asp:LinkButton ID="linkReport1" OnClick="linkReport1_Click" runat="server">
                            <span class="report-link">
                                Alumnos confirmados por semestre
                            </span>
                        </asp:LinkButton>
                    </div>
                    <div class="col-12 my-4">
                        <asp:LinkButton runat="server" ID="linkReport2">
                            <span class="report-link">
                                Reporte de confirmación para docentes
                            </span>
                        </asp:LinkButton>
                    </div>
                </div>
            </asp:View>
            <asp:View ID="vwConfirmationReportSemester" runat="server">
                <div class="row text-center">
                    <div class="col-12 text-center">
                        <h1>Confirmación por semestre</h1>
                    </div>
                    <div class="col-sm-12 col-md-4 my-2">
                        <div class="form-group">
                            <asp:Label Text="Seleccione la Carrera" runat="server" ID="lbCareer" AssociatedControlID="ddlCareer" />
                            <asp:DropDownList runat="server" ID="ddlCareer" class="form-control">
                                <asp:ListItem Text="Ing. Computación" />
                            </asp:DropDownList>
                        </div>

                    </div>
                    <div class="col-sm-12 col-md-4 my-2">
                        <div class="form-group">
                            <asp:Label Text="Seleccione el Grupo " runat="server" ID="lbGroup" AssociatedControlID="ddlGroup" />
                            <asp:DropDownList runat="server" ID="ddlGroup" CssClass="form-control">
                                <asp:ListItem Text="1M1-CO" />
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-4 my-2">
                        <div class="form-group">
                            <asp:Label Text="Seleccione Semestre" runat="server" ID="lbSemester" AssociatedControlID="ddlSemester" />
                            <asp:DropDownList runat="server" ID="ddlSemester" CssClass="form-control">
                                <asp:ListItem Text="Segundo Semestre 2019" />
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-12 my-2">
                        <div class="form-group">
                            <asp:Button Text="Generar" CssClass="btn btn-primary" runat="server" ID="btnGenerateConfirmationReport" OnClick="btnGenerateConfirmationReport_Click" />
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
                                        <th scope="col">Fecha</th>
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
                                        <asp:Label runat="server" Text='<%# Eval("confirmationDate", "{0:dd/MM/yyyy}") %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="col-12 my-2">
                        <div class="form-group">
                            <asp:Button Text="Descargar" CssClass="btn btn-primary" runat="server" ID="btnDownloadConfirmationReport" Visible="false" OnClick="DownloadGenerateConfirmationReport_Click" />
                        </div>
                    </div>
                </div>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
