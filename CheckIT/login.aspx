<%@ Page Title="" Language="C#" MasterPageFile="~/secundaria.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" runat="Server">
    <div class="login-form">

        <img src="imagen/lg-checkIT.png" alt="Logotipo de Check IT">

        <form id="form1" runat="server">
            <asp:Login ID="Login1" runat="server" FailureText="credenciales incorrectas" OnAuthenticate="Login1_Authenticate" OnLoggedIn="Login1_LoggedIn">
                <LayoutTemplate>
                    <asp:Label ID="UserNameLabel" runat="server" Text="" AssociatedControlID="UserName"></asp:Label>
                    <asp:TextBox ID="UserName" runat="server" placeholder="Usuario" CssClass="email-input"></asp:TextBox>
                    <asp:Label ID="PasswordLabel" runat="server" Text="" AssociatedControlID="Password" ></asp:Label>
                    <asp:TextBox ID="Password" runat="server" placeholder="Contraseña" CssClass="password-input"></asp:TextBox>

                    <div class="login-options">
                        <div>
                            <asp:CheckBox ID="checkKeepLog" runat="server" />
                            <%--<input type="checkbox" id="keep-logged">--%>
                            <label for="checkKeepLog">Mantener la sesión iniciada</label>
                        </div>
                        <%--<a href="#">Olvidé mi contraseña</a>--%>
                        <asp:HyperLink ID="hlForgotPassword" runat="server" NavigateUrl="#">Olvidé mi contraseña</asp:HyperLink>

                        
                    </div>

                    <%--<button>Iniciar Sesión</button>--%>
                    <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" CommandName="Login" />
                </LayoutTemplate>
            </asp:Login>

            

        </form>

    </div>

    <div class="image-section"></div>

</asp:Content>


