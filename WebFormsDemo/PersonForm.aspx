<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonForm.aspx.cs" Inherits="WebFormsDemo.PersonForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h1>Student - Activity 2 Assessment</h1>
    </div>
     <div class="row">
        <div class="col-md-12 alert alert-info">
            This assessment will test basic web form construction, validation, data collection and display.
        </div>
    </div>
    <div class="row">
        <div class="col-md-12>">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                 HeaderText="Please correct the following issues with your current data entry" />
            <asp:RequiredFieldValidator ID="RequiredFieldStudentID" runat="server" 
                ErrorMessage="Student ID is a required field" 
                SetFocusOnError="true" ControlToValidate="StudentID" Display="None"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareStudentID" runat="server"
                 ErrorMessage="Student ID is a number greater than 0" Operator="GreaterThan" Type="Integer"
                 ValueToCompare="0"  SetFocusOnError="true" ControlToValidate="StudentID" Display="None"></asp:CompareValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldStudentName" runat="server" 
                ErrorMessage="Name is a required field" 
                SetFocusOnError="true" ControlToValidate="StudentName" Display="None"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldCredits" runat="server" 
                ErrorMessage="Credits is a required field" 
                SetFocusOnError="true" ControlToValidate="Credits" Display="None"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeCredits" runat="server" 
                ErrorMessage="Credits our of range (0.0 to 40.0)"
                 MinimumValue="0.0" MaximumValue="40.0" Type="Double"
                SetFocusOnError="true" ControlToValidate="Credits" Display="None"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldEmergencyPhoneNumber" runat="server" 
                ErrorMessage="Emergency PhoneNumber is a required field" 
                SetFocusOnError="true" ControlToValidate="EmergencyPhoneNumber" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionEmergencyPhoneNumber" runat="server" 
                ErrorMessage="Emergency PhoneNumber is invalid (ex. 780.102.0123)"
                 SetFocusOnError="true" ControlToValidate="EmergencyPhoneNumber" Display="None"
                 ValidationExpression="[1-9][0-9][0-9].[1-9][0-9][0-9].[0-9][0-9][0-9][0-9]"></asp:RegularExpressionValidator>
        </div>
    </div>
    <%--<legend>Student Data Entry</legend>--%>
    <div class="row row-cols-2">
        <div class="col text-right">
                <asp:Label ID="Label1" runat="server" Text="Student ID"
                     AssociatedControlID="StudentID"></asp:Label>
        </div>
        <div class="col text-left">
                <asp:TextBox ID="StudentID" runat="server" ></asp:TextBox>
        </div>
    </div>
    <div class="row row-cols-2">
        <div class="col-md-12">
            <fieldset class="form-horizontal">
                  <asp:Label ID="Label2" runat="server" Text="Name"
                     AssociatedControlID="StudentName"></asp:Label>
                <asp:TextBox ID="StudentName" runat="server"></asp:TextBox>
            </fieldset>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <fieldset class="form-horizontal">
                  <asp:Label ID="Label3" runat="server" Text="Credits"
                     AssociatedControlID="Credits"></asp:Label>
                <asp:TextBox ID="Credits" runat="server"></asp:TextBox>
            </fieldset>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <fieldset class="form-horizontal">
                  <asp:Label ID="Label4" runat="server" Text="Emergency PhoneNumber"
                     AssociatedControlID="EmergencyPhoneNumber"></asp:Label>
                <asp:TextBox ID="EmergencyPhoneNumber" runat="server"> </asp:TextBox>
            </fieldset>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <asp:LinkButton ID="AddStudent" runat="server" OnClick="AddStudent_Click">Add Student</asp:LinkButton>&nbsp;&nbsp;
            <asp:LinkButton ID="Clear" runat="server" CausesValidation="false" OnClick="Clear_Click">Clear</asp:LinkButton>
            <br/><br/>
            <asp:Label ID="MessageLabel" runat="server" ></asp:Label>
            <br/><br/>
            <asp:GridView ID="StudentList" runat="server"></asp:GridView>
        </div>
    </div>
    <script src="Scripts/bootwrap-freecode.js"></script>
</asp:Content>
