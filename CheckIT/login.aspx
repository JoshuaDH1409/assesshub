<%@ Page Title="" Language="C#" MasterPageFile="~/secundaria.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="phbody" runat="Server">
    <div class="login-form">

        <img src="imagen/logo-assesshub.svg" alt="AssessHub">
        <p class="brand-sub">Acceso supervisor / candidato</p>

        <form id="form1" runat="server">
            <asp:Login ID="Login1" runat="server" FailureText="Credenciales incorrectas" OnAuthenticate="Login1_Authenticate" OnLoggedIn="Login1_LoggedIn">
                <LayoutTemplate>
                    <asp:Label ID="UserNameLabel" runat="server" Text="" AssociatedControlID="UserName"></asp:Label>
                    <asp:TextBox ID="UserName" runat="server" placeholder="Usuario" CssClass="email-input"></asp:TextBox>
                    <asp:Label ID="PasswordLabel" runat="server" Text="" AssociatedControlID="Password" ></asp:Label>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" placeholder="Contraseña" CssClass="password-input"></asp:TextBox>

                    <div class="login-options">
                        <div>
                            <asp:CheckBox ID="checkKeepLog" runat="server" />
                            <label for="checkKeepLog">Mantener la sesión iniciada</label>
                        </div>
                        <asp:HyperLink ID="hlForgotPassword" runat="server" NavigateUrl="#">Olvidé mi contraseña</asp:HyperLink>
                    </div>

                    <asp:Button ID="btnLogin" runat="server" Text="Iniciar sesión" CommandName="Login" />
                </LayoutTemplate>
            </asp:Login>

        </form>

    </div>

    <div class="image-section"></div>

</asp:Content>
