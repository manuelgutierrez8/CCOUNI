<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Detail.Master" AutoEventWireup="true" CodeBehind="HojaMatricula.aspx.cs" Inherits="WebApp.Pages.HojaMatricula" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-12 text-right">
                <asp:Button ID="btnConfirmClasses" Text="Imprimir" class="btn btn-primary" runat="server" OnClientClick="window.print();"/>
            </div>
        </div>
        <div class="row">
                        <div name="ctl00$ContentPlaceHolder1$crvStudent$ctl01" id="ContentPlaceHolder1_crvStudent_ctl01" class="crystalstyle" style="overflow: hidden; width: 100%; height: 100%;">
        <div class="crystalstyle" style="margin-top: 24px; margin-bottom: 24px; margin-left: 24px; margin-right: 24px; left: 0px; width: 768px; height: 1008px; overflow: hidden;">
            <div id="Box1" class="ad154b2121-5479-4002-bf84-400e4b1248b2-2" style="z-index: 10; top: 327px; left: 2px; width: 751px; height: 16px;">
            </div>
            <div id="Box2" class="ad154b2121-5479-4002-bf84-400e4b1248b2-3" style="z-index: 10; top: 228px; left: 1px; width: 753px; height: 622px;">
            </div>
            <div id="Box7" class="ad154b2121-5479-4002-bf84-400e4b1248b2-3" style="z-index: 10; top: 194px; left: 1px; width: 753px; height: 32px;">
            </div>
            <div id="Line1" style="z-index: 15; top: 327px; left: 43px; border-color: #000000; border-style: solid; border-width: 0px; border-left-width: 1px; height: 524px;">
            </div>
            <div id="Line10" style="z-index: 15; top: 327px; left: 654px; border-color: #000000; border-style: solid; border-width: 0px; border-left-width: 1px; height: 524px;">
            </div>
            <div id="Line9" style="z-index: 15; top: 327px; left: 589px; border-color: #000000; border-style: solid; border-width: 0px; border-left-width: 1px; height: 524px;">
            </div>
            <div id="Line11" style="z-index: 15; top: 327px; left: 707px; border-color: #000000; border-style: solid; border-width: 0px; border-left-width: 1px; height: 524px;">
            </div>
            <div id="Line8" style="z-index: 15; top: 327px; left: 528px; border-color: #000000; border-style: solid; border-width: 0px; border-left-width: 1px; height: 524px;">
            </div>
            <div id="Line4" style="z-index: 15; top: 327px; left: 448px; border-color: #000000; border-style: solid; border-width: 0px; border-left-width: 1px; height: 524px;">
            </div>
            <div id="Line13" style="z-index: 15; top: 919px; left: 562px; border-color: #000000; border-style: solid; border-width: 0px; border-top-width: 1px; width: 197px;">
            </div>
            <div id="Section1" style="z-index: 3; top: 0px; left: 0px; width: 768px; height: 351px;">
            </div>
            <div id="PictureUNI" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 16px; left: 8px; width: 110px; height: 71px;">
                <img alt="Imagen" border="0" src="../Assets/logo_uni.png" style="width: 110px; height: 71px;">
            </div>
            <div id="Text23" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 206px; left: 502px; width: 140px; height: 16px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 17px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-0">No.&nbsp;Inscripción&nbsp;</span></span></p>
            </div>
            <div id="Text24" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 206px; left: 8px; width: 176px; height: 18px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 18px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-0">No.&nbsp;Recibo</span><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-1">&nbsp;</span></span></p>
            </div>
            <div id="Text3" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 15px; left: 8px; width: 751px; height: 23px; text-align: center;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 24px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-2">UNIVERSIDAD&nbsp;NACIONAL&nbsp;DE&nbsp;INGENIERÍA</span></span></p>
            </div>
            <div id="Text2" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 116px; left: 8px; width: 751px; height: 23px; text-align: center;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 24px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-2">HOJA&nbsp;DE&nbsp;MATRICULA</span></span></p>
            </div>
            <div id="Text4" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 136px; left: 7px; width: 751px; height: 20px; text-align: center;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 20px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-3">AÑO&nbsp;ACADEMICO&nbsp;2019</span></span></p>
            </div>
            <div id="Text6" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 232px; left: 8px; width: 179px; height: 15px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 17px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-0">NOMBRES&nbsp;Y&nbsp;APELLIDOS:</span></span></p>
            </div>
            <div id="Text7" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 258px; left: 8px; width: 76px; height: 17px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 17px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-0">CARRERA:</span></span></p>
            </div>
            <div id="Text8" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 285px; left: 8px; width: 152px; height: 17px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 17px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-0">PLAN&nbsp;DE&nbsp;ESTUDIO:</span></span></p>
            </div>
            <div id="Text9" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 258px; left: 342px; width: 76px; height: 17px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 17px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-0">CARNET:</span></span></p>
            </div>
            <div id="Text10" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 285px; left: 342px; width: 84px; height: 17px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 17px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-0">SEMESTRE:</span></span></p>
            </div>
            <div id="Text11" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 258px; left: 574px; width: 57px; height: 17px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 17px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-0">TURNO:</span></span></p>
            </div>
            <div id="Text12" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 285px; left: 574px; width: 53px; height: 17px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 17px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-0">FECHA:</span></span></p>
            </div>
            <div id="Text30" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 327px; left: 8px; width: 34px; height: 15px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 20px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-4">No.</span></span></p>
            </div>
            <div id="Text13" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 327px; left: 46px; width: 403px; height: 18px;">
                <p align="center" style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 20px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-4">ASIGNATURA</span></span></p>
            </div>
            <div id="Text14" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 327px; left: 452px; width: 76px; height: 15px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 20px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-4">GRUPO</span></span></p>
            </div>
            <div id="Text15" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 327px; left: 528px; width: 61px; height: 20px;">
                <p align="center" style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 20px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-4">AULA</span></span></p>
            </div>
            <div id="Text16" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 327px; left: 589px; width: 65px; height: 20px;">
                <p align="center" style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 20px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-4">CRED.</span></span></p>
            </div>
            <div id="Text17" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 327px; left: 657px; width: 46px; height: 18px;">
                <p align="center" style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 20px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-4">F</span></span></p>
            </div>
            <div id="Text18" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 327px; left: 711px; width: 38px; height: 18px;">
                <p align="center" style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 20px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-4">R</span></span></p>
            </div>
            <div id="FacultadNombre1" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 36px; left: 9px; width: 748px; height: 19px; text-align: center;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td align="center" nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-5">FACULTAD&nbsp;DE&nbsp;ELECTROTECNIA&nbsp;Y&nbsp;COMPUTACION</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="ReciboNumero1" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 198px; left: 101px; width: 148px; height: 25px;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-6">&nbsp;27,581,731</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="InscripcionNumero1" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 202px; left: 619px; width: 102px; height: 27px; text-align: right;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td align="right" nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-6" style="position: absolute; right: 0px;">&nbsp;313</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="PersonaNombre1" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 232px; left: 186px; width: 563px; height: 15px;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-7"> <asp:Label ID="lbStudentName" Text="" runat="server"></asp:Label> </span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="CarreraNombre1" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 259px; left: 84px; width: 253px; height: 16px;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-7">INGENIERÍA&nbsp;EN&nbsp;COMPUTACIÓN</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="PlanNombre1" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 286px; left: 186px; width: 153px; height: 15px;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-8">95</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="Semestre1" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 286px; left: 426px; width: 145px; height: 34px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 16px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-7">SEGUNDO&nbsp;SEMESTRE&nbsp;</span></span><span style="position: relative; display: block; line-height: 16px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-7">2019</span></span></p>
            </div>
            <div id="Turno1" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 259px; left: 631px; width: 117px; height: 19px;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-7">Diurno</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="InscripcionFecha1" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 286px; left: 631px; width: 117px; height: 15px;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-7">25/09/2019</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="EstudianteCarne1" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 259px; left: 426px; width: 137px; height: 16px;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-7"><asp:Label ID="lbStudentLicense" Text="" runat="server"></asp:Label></span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="TituloSuperior1" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 59px; left: 11px; width: 746px; height: 23px; text-align: center;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td align="center" nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-5">SECRETARIA&nbsp;DE&nbsp;FACULTAD</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="PageHeaderSection1" style="z-index: 3; top: 351px; left: 0px; width: 768px; height: 434px;">
            </div>
            <div id="Picture1" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 364px; left: 47px; width: 400px; height: 400px;">
                <%--<img alt="Imagen" border="0" src="../Assets/logo_uni.png" style="width: 400px; height: 400px;">--%>
            </div>
            <div id="Section5" style="z-index: 3; top: 351px; left: 0px; width: 768px; height: 24px;">
            </div>
            <div id="Field29" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 351px; left: 4px; width: 38px; height: 16px; text-align: center;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                                <%--Modifying here--%>
                                <asp:Repeater runat="server" ID="rptClasses">
                                    <HeaderTemplate>
                                        <table width="768px" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td align="center" width="40px" nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-7"><%# Container.ItemIndex + 1 %></span></td>
                                            <td align="center" width="400px" nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-7"><%# Eval("ClassName") %></span></td>
                                            <td align="center" width="80px" nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-7"><%# Eval("GroupName") %></span></td>
                                            <td align="center" width="60px" nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-7"><%# Eval("ClassroomName") %></span></td>
                                            <td align="center" width="60px" nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-7"><%# Eval("Credits") %></span></td>
                                            <td align="center" width="60px" nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-7">&nbsp;</span></td>
                                            <td align="center" width="60px" nowrap="true"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-7">&nbsp;</span></td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                         </tbody>
                                </table>
                                    </FooterTemplate>
                                </asp:Repeater>
                               
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="Section4" style="z-index: 3; top: 375px; left: 0px; width: 768px; height: 16px;">
            </div>
            <div id="Text5" class="ad154b2121-5479-4002-bf84-400e4b1248b2-0" style="top: 460px; left: 5px; width: 748px; height: 16px;">
                <p align="center" style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 16px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-8">-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;&nbsp;&nbsp;ULTIMA&nbsp;LINEA&nbsp;&nbsp;&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-&nbsp;-</span></span></p>
            </div>
            <div id="Section2" style="z-index: 3; top: 851px; left: 0px; width: 768px; height: 157px;">
            </div>
            <div id="Text19" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 855px; left: 15px; width: 308px; height: 11px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 11px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-9">F:Frecuencia&nbsp;de&nbsp;Inscripciones&nbsp;de&nbsp;Asignatura&nbsp;R:&nbsp;Retiro&nbsp;de&nbsp;Asignatura</span></span></p>
            </div>
            <div id="Text21" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 923px; left: 560px; width: 194px; height: 40px; text-align: center;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 20px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-10">FIRMA&nbsp;Y&nbsp;SELLO&nbsp;DEL&nbsp;</span></span><span style="position: relative; display: block; line-height: 20px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-10">FUNCIONARIO</span></span></p>
            </div>
            <div id="Text25" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 954px; left: 19px; width: 308px; height: 15px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 14px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-11">cc:ORIGINAL:ESTUDIANTE&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;COPIA:EXPEDIENTE.</span></span></p>
            </div>
            <div id="Text26" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 976px; left: 19px; width: 464px; height: 17px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 16px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-12">IMPRESO&nbsp;POR&nbsp;SISTEMA&nbsp;DE&nbsp;REGISTRO&nbsp;ACADEMICO&nbsp;EL&nbsp;30-sep-2019</span></span></p>
            </div>
            <div id="Text20" class="ad154b2121-5479-4002-bf84-400e4b1248b2-1" style="top: 875px; left: 20px; width: 441px; height: 76px;">
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 20px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-10">NOTA:&nbsp;</span><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-13">NO&nbsp;VALIDA&nbsp;SIN&nbsp;FIRMA&nbsp;Y&nbsp;SELLO</span></span></p>
                <p style="position: relative; padding-left: 1px; margin: 0px; white-space: nowrap;"><span style="position: relative; display: block; line-height: 20px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-10">Pasar&nbsp;retirando&nbsp;Hoja&nbsp;de&nbsp;Matrícula&nbsp;en&nbsp;</span></span><span style="position: relative; display: block; line-height: 20px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-10">Secretaría,&nbsp;presentando&nbsp;Recibo&nbsp;</span></span><span style="position: relative; display: block; line-height: 20px;"><span class="fc556798af-343b-4ce5-9c9f-4e2856c07eb8-10">Correspondiente</span></span></p>
            </div>

        </div>

    </div>
        </div>
    </div>
   

</asp:Content>
