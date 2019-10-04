<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/header.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApp.Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container h100">
        <div class="row align-items-center h-100">
            <div class="col-10 col-sm-6 my-auto mx-auto login-box">
                <div class="box-shadow card rounded shadow-sm login-content">
                    <div class="form-group text-center">
                        <h3><strong>Inicio de sesión</strong></h3>
                    </div>
                    <label for="txtUsername">Correo Ofice 365</label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fas fa-user"></i>
                            </span>
                        </div>
                        <%--<ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" TargetControlID="txtUsername" runat="server"></ajaxToolkit:ValidatorCalloutExtender>--%>
                        <asp:TextBox ID="txtUsername" class="form-control" placeholder="correo@dominio.com" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator class="text-danger mb-3" ID="reqUsername" ControlToValidate="txtUsername" ErrorMessage="El correo es requerido" Display="Dynamic" SetFocusOnError="true" runat="server" />
                    <asp:RegularExpressionValidator class="text-danger mb-3" ID="mail" runat="server"
                        Display="Dynamic" SetFocusOnError="true"
                        ControlToValidate="txtUsername" ErrorMessage="Ingrese un correo valido"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                    </asp:RegularExpressionValidator>

                    <label for="txtPassword">Contraseña</label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fas fa-key"></i>
                            </span>
                        </div>
                        <asp:TextBox ID="txtPassword" type="password" class="form-control" runat="server" autocomplete="off"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator class="text-danger mb-3" ID="reqPassword" ControlToValidate="txtPassword" ErrorMessage="Ingrese su contraseña" Display="Dynamic" SetFocusOnError="true" runat="server" />
                    <div class="form-group">
                        <asp:Button ID="btnLogin" runat="server" Text="Ingresar" Class="btn btn-primary" OnClick="btnLogin_Click" />
                    </div>
                    <div class="form-group text-center">
                        <asp:label ID="lbMessage" runat="server" Text="" Class="text-danger"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
