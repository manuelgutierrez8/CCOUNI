<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Detail.Master" AutoEventWireup="true" CodeBehind="PeriodoVencido.aspx.cs" Inherits="WebApp.Pages.PeriodoVencido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-2">
        <div class="row">
            <div class="col-12 text-center py-4">
                <h1>No puede confirmar asignaturas</h1>
                <asp:Label ID="lbMessage" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-12 text-center py-4">
                <p>
                    Puede consultar su hoja de matricula <a href="HojaMatricula.aspx">aquí</a>
                </p>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
