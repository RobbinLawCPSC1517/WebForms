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
            <asp:RequiredFieldValidator ID="RequiredFieldID" runat="server" 
                ErrorMessage="ID is a required field" 
                SetFocusOnError="true" ControlToValidate="ID" Display="None"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareID" runat="server"
                 ErrorMessage="ID is a number greater than 0" Operator="GreaterThan" Type="Integer"
                 ValueToCompare="0"  SetFocusOnError="true" ControlToValidate="ID" Display="None"></asp:CompareValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldName" runat="server" 
                ErrorMessage="Name is a required field" 
                SetFocusOnError="true" ControlToValidate="Name" Display="None"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldSalary" runat="server" 
                ErrorMessage="Salary is a required field" 
                SetFocusOnError="true" ControlToValidate="Salary" Display="None"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeSalary" runat="server" 
                ErrorMessage="Salary out of range (0.0 to 40.0)"
                 MinimumValue="0.0" MaximumValue="40.0" Type="Double"
                SetFocusOnError="true" ControlToValidate="Salary" Display="None"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldPhone" runat="server" 
                ErrorMessage="Phone is a required field" 
                SetFocusOnError="true" ControlToValidate="Phone" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionPhone" runat="server" 
                ErrorMessage="Phone is invalid (ex. 780.102.0123)"
                 SetFocusOnError="true" ControlToValidate="Phone" Display="None"
                 ValidationExpression="[1-9][0-9][0-9].[1-9][0-9][0-9].[0-9][0-9][0-9][0-9]"></asp:RegularExpressionValidator>
        </div>
    </div>
    <%--<legend>Student Data Entry</legend>--%>
    <div class="row">
        <div class="col-md-2 text-right">
                <asp:Label ID="Label1" runat="server" Text="ID"
                     AssociatedControlID="ID"></asp:Label>
        </div>
        <div class="col-md-2 text-left">
                <asp:TextBox ID="ID" runat="server" ></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2 text-right">
                  <asp:Label ID="Label2" runat="server" Text="Name"
                     AssociatedControlID="Name"></asp:Label>
        </div>
        <div class="col-md-2 text-left">
                <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2 text-right">
                  <asp:Label ID="Label3" runat="server" Text="Salary/hr"
                     AssociatedControlID="Salary"></asp:Label>
        </div>
        <div class="col-md-2 text-left">
                <asp:TextBox ID="Salary" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2 text-right">
                  <asp:Label ID="Label4" runat="server" Text="Phone"
                     AssociatedControlID="Phone"></asp:Label>
        </div>
        <div class="col-md-2 text-left">
                <asp:TextBox ID="Phone" runat="server"> </asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-2 text-left">
            <asp:LinkButton ID="Add" runat="server" OnClick="Add_Click">Add Person</asp:LinkButton>&nbsp;&nbsp;
            <asp:LinkButton ID="Clear" runat="server" CausesValidation="false" OnClick="Clear_Click">Clear</asp:LinkButton>
            <br/><br/>
            <asp:Label ID="MessageLabel" runat="server" ></asp:Label>
            <br/><br/>
            <asp:GridView ID="PersonList" runat="server"></asp:GridView>
        </div>
    </div>
    <script src="Scripts/bootwrap-freecode.js"></script>
</asp:Content>
