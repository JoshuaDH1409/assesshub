<%@ Page Title="" Language="C#" MasterPageFile="~/principal.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
<%--Hola Supervisor--%>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="sdsCandidatos" GridLines="None" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="Candidato_id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <img id='imagenalumno_<%#  Eval("Candidato_id") %>' alt="click para mostrar u ocultar" src="imagen/flecha-abajo.png" width="18px" height="18px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Candidato_id" HeaderText="ID Candidato" ReadOnly="True" InsertVisible="False" SortExpression="Candidato_id"></asp:BoundField>
            <asp:BoundField DataField="Candidato_nombre" HeaderText="Nombre" SortExpression="Candidato_nombre"></asp:BoundField>
            <asp:BoundField DataField="Candidato_apellidoP" HeaderText="Apellido P" SortExpression="Candidato_apellidoP"></asp:BoundField>
            <asp:BoundField DataField="Candidato_email" HeaderText="Email" SortExpression="Candidato_email"></asp:BoundField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:GridView ID="gvCalificacion" runat="server" DataSourceID="sdsCalificacion"></asp:GridView>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        
    </asp:GridView>
    <asp:SqlDataSource ID="sdsCandidatos" runat="server" ConnectionString="<%$ ConnectionStrings:AssessHubDB %>" SelectCommand="Select Candidato_id, Candidato_nombre, Candidato_apellidoP, Candidato_email from Candidatos where Supervisor_id = @supervisor">
        <SelectParameters>
            <asp:SessionParameter SessionField="Supervisor_id" Name="supervisor"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsCalificacion" runat="server" ConnectionString="<%$ ConnectionStrings:AssessHubDB %>" SelectCommand="select Examen_nombre, Examen_resultado, Candidato_id from Examenes left join ExamenCandidato on Examenes.Examen_id = ExamenCandidato.Examen_id"></asp:SqlDataSource>
</asp:Content>

