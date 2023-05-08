<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="Donation.aspx.cs" Inherits="wellweb.admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                             <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" BorderStyle="Solid" AlternatingRowStyle-BorderStyle="Solid" AlternatingRowStyle-BorderColor="Black" BorderColor="Black" Width="100%" CssClass="table-primary" AlternatingRowStyle-CssClass="border border-secondary" EditRowStyle-CssClass="border border-secondary" HeaderStyle-CssClass="border border-secondary" AlternatingRowStyle-Width="10px">
                <Columns>
                     <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" ReadOnly="true" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="pno" HeaderText="pno" SortExpression="pno" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="medname" HeaderText="Medicine" SortExpression="medname" />
                    <asp:BoundField DataField="catogary" HeaderText="Catogary" SortExpression="catogary" />
                     <asp:BoundField DataField="expdate" HeaderText="Expiry date" SortExpression="expdate" />
                    <asp:BoundField DataField="ngoname" HeaderText="NGO Name" SortExpression="ngoname" />
                    <asp:BoundField DataField="nemail" HeaderText="NGO Mail" SortExpression="nemail" />
                    <asp:BoundField DataField="ppno" HeaderText="NGO Number" SortExpression="ppno" />
                     <asp:BoundField DataField="des" HeaderText="NGO Describtion" SortExpression="des" />
                    <asp:CommandField  ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <br />
           
        </div>
    </form>
</asp:Content>
