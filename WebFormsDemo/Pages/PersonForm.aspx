<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonForm.aspx.cs" Inherits="WebFormsDemo.PersonForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h1>Web Forms Demo</h1>
    </div>
     <div class="row">
        <div class="col-md-12 alert alert-info">
            This demo will show basic web form construction, data collection with validation, and display.
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                <asp:Label ID="Label1" runat="server" Text="SIN"
                     AssociatedControlID="SIN"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="SIN" runat="server" ></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="Label2" runat="server" Text="Name"
                     AssociatedControlID="Name"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                <asp:Label ID="LabelAge" runat="server" Text="Age"
                     AssociatedControlID="Age"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Age" runat="server" ></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="Label3" runat="server" Text="Wage/Hr"
                     AssociatedControlID="Wage"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Wage" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="Label4" runat="server" Text="Phone"
                     AssociatedControlID="Phone"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Phone" runat="server"> </asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4 text-left">
            <asp:LinkButton ID="Add" runat="server" OnClick="Add_Click">Add Person</asp:LinkButton>&nbsp;&nbsp;
            <asp:LinkButton ID="Clear" runat="server" CausesValidation="false" OnClick="Clear_Click">Clear</asp:LinkButton>
            <br/><br/>
            <%--<asp:Label ID="MessageLabel" runat="server" ></asp:Label>--%>
            <br/><br/>
            <asp:GridView ID="PeopleGridView" runat="server"></asp:GridView>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-4"></div>
        <div class="col-8">
            <label id="MessageLabel1" runat="server" />
        </div>
    </div>
</asp:Content>
