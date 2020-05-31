<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonForm.aspx.cs" Inherits="WebFormsDemo.PersonForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h1>Web Forms Demo</h1>
    </div>
     <div class="row">
        <div class="col-md-12 alert alert-info">
            This demo will show basic web form construction, data collection with validation, and display, but no database.
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
    <br />
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 text-left">
            <asp:Button ID="Add1" runat="server" OnClick="Add_Click" Text="Add Person"/>&nbsp;&nbsp;
            <asp:Button ID="Clear1" runat="server" OnClick="Clear_Click" Text="Clear" />
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-4"></div>
        <div class="col-8">
            <label id="MessageLabel1" runat="server" />
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-4"></div>
        <div class="col-8">
            <asp:GridView ID="PeopleGridView" runat="server"></asp:GridView>
        </div>
    </div>
</asp:Content>
