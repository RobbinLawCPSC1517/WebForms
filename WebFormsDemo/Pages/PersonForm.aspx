<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonForm.aspx.cs" Inherits="WebFormsDemo.PersonForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h1>Web Forms Demo</h1>
    </div>
     <div class="row">
        <div class="col-md-12 alert alert-info">
            This demo will show basic web form construction, validation, data collection and display.
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-left">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                 HeaderText="Please correct the following issues with your current data entry" />

            <asp:RequiredFieldValidator ID="RequiredFieldSIN" runat="server" 
                ErrorMessage="SIN is a required field" 
                SetFocusOnError="true" ControlToValidate="SIN" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionSIN" runat="server" 
                ErrorMessage="SIN is invalid (ex. 777-888-999)"
                 SetFocusOnError="true" ControlToValidate="SIN" Display="None"
                 ValidationExpression="[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9]"></asp:RegularExpressionValidator>
            
             <asp:RequiredFieldValidator ID="RequiredFieldName" runat="server" 
                ErrorMessage="Name is a required field" 
                SetFocusOnError="true" ControlToValidate="Name" Display="None"></asp:RequiredFieldValidator>

             <asp:RequiredFieldValidator ID="RequiredFieldAge" runat="server" 
                ErrorMessage="Age is a required field" 
                SetFocusOnError="true" ControlToValidate="Age" Display="None"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareAge" runat="server"
                 ErrorMessage="Age is a whole number greater than 0" Operator="GreaterThan" Type="Integer"
                 ValueToCompare="0"  SetFocusOnError="true" ControlToValidate="Age" Display="None"></asp:CompareValidator>

             <asp:RequiredFieldValidator ID="RequiredFieldWage" runat="server" 
                ErrorMessage="Wage is a required field" 
                SetFocusOnError="true" ControlToValidate="Wage" Display="None"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeWage" runat="server" 
                ErrorMessage="Wage out of range (0.0 to 200.0)"
                 MinimumValue="0.0" MaximumValue="200.0" Type="Double"
                SetFocusOnError="true" ControlToValidate="Wage" Display="None"></asp:RangeValidator>

            <asp:RequiredFieldValidator ID="RequiredFieldPhone" runat="server" 
                ErrorMessage="Phone is a required field" 
                SetFocusOnError="true" ControlToValidate="Phone" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionPhone" runat="server" 
                ErrorMessage="Phone is invalid (ex. 780.102.0123)"
                 SetFocusOnError="true" ControlToValidate="Phone" Display="None"
                 ValidationExpression="[1-9][0-9][0-9].[1-9][0-9][0-9].[0-9][0-9][0-9][0-9]"></asp:RegularExpressionValidator>
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
            <asp:Label ID="MessageLabel" runat="server" ></asp:Label>
            <br/><br/>
            <asp:GridView ID="PeopleGridView" runat="server"></asp:GridView>
        </div>
    </div>
    <%--<script src="Scripts/bootwrap-freecode.js"></script>--%>
</asp:Content>
