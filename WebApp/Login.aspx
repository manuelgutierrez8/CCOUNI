<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/header.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApp.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container h100">
        <div class="row align-items-center h-100">
            <div class="col-10 col-sm-8 my-auto mx-auto login-box">
                <div class="box-shadow card rounded shadow-sm login-content">
                    <ul class="nav nav-tabs d-flex justify-content-center" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <div id="upnStd">

                                <div id="pnlStd" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'lnkAceptarStd')">

                                    <div class="form-group margin-20 has-error">
                                        <label for="txtUsuarioStd" id="lblUsuarioStd" class="control-label">Usuario</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <span class="icon-users2"></span>
                                            </div>
                                            <input name="txtUsuarioStd" type="text" id="txtUsuarioStd" class="form-control" autocomplete="off" autofocus="true" placeholder="Correo office 365 institucional">
                                        </div>
                                        <span id="rfvUsuarioStd" style="display: inline;"></span>
                                        <span id="revUsuarioStd" class="validator" style="display: none;">Correo no válido. Ejemplo de correo válido: nombre.apellido261@std.uni.edu.ni</span>
                                    </div>
                                    <div class="form-group has-error">
                                        <label for="txtPasswordStd" id="lblPasswordStd" class="control-label">Contraseña</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fas fa-key"></i>
                                            </div>
                                            <input name="txtPasswordStd" type="password" id="txtPasswordStd" class="form-control">
                                        </div>
                                        <span id="rfvPasswordStd" style="display: inline;"></span>
                                    </div>
                                    <div class="form-group has-error">
                                        <label for="cboSedeStd" id="lblSedeStd" class="control-label">Sede</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <span class="fa fa-university"></span>
                                            </div>
                                            <select name="cboSedeStd" id="cboSedeStd" class="form-control">
                                                <option value="">--Seleccione--</option>
                                                <option value="UNI">UNI</option>
                                                <option value="IES">IES</option>

                                            </select>
                                        </div>
                                        <span id="rfvSedeStd" style="display: inline;"></span>
                                    </div>

                                    <a id="lnkAceptarStd" class="btn btn-primary" href="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;lnkAceptarStd&quot;, &quot;&quot;, true, &quot;Std&quot;, &quot;&quot;, false, true))">Ingresar</a>
                                    <a id="lnkCancelarStd" class="btn btn-primary" href="javascript:__doPostBack('lnkCancelarStd','')">Cancelar</a>
                                    <div class="margin-20">
                                        <a id="hlkOlvidoPassword" class="pull-left" href="ResetPassword.aspx">¿Olvidó su contraseña?</a>


                                        <a id="hlnAcceso" class="pull-right" data-toggle="modal" data-target="#ModalAcceso" href="#ModalAcceso">¿Cómo obtener acceso?</a>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
