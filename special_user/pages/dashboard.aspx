<%@ Page Title="" Language="C#" MasterPageFile="~/special_user/pages/pagesit.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="wellweb.special_user.pages.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>The Donat Details</h1>
     <div class="row">
            <div class="col-lg-11 mx-auto">
                <div class="card border-0 shadow">
                    <div class="card-body p-5">
    
    
    <div class="table-responsive">
   
                             <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" AlternatingRowStyle-BorderStyle="Solid" AlternatingRowStyle-BorderColor="Black" BorderColor="Black" Width="100%" CssClass="table-dark text-dark" AlternatingRowStyle-CssClass="border border-secondary" EditRowStyle-CssClass="border border-secondary" HeaderStyle-CssClass="border border-secondary" AlternatingRowStyle-Width="10px">
                <Columns >
 
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
                    
          
                 
                </Columns>
            </asp:GridView>
            <br />
           
        </div>
                                 <h1 class="text-dark">The Sell Details</h1>
                                                       
        <div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" AlternatingRowStyle-BorderStyle="Solid" AlternatingRowStyle-BorderColor="Black" BorderColor="Black" Width="100%" CssClass="table-dark" AlternatingRowStyle-CssClass="border border-secondary" EditRowStyle-CssClass="border border-secondary" HeaderStyle-CssClass="border border-secondary" AlternatingRowStyle-Width="10px">
                <Columns>
 
                 <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" ReadOnly="true" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="pno" HeaderText="pno" SortExpression="pno" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="medname" HeaderText="Medicine" SortExpression="medname" />
                    <asp:BoundField DataField="catogary" HeaderText="Catogary" SortExpression="catogary" />
                     <asp:BoundField DataField="expdate" HeaderText="Expiry date" SortExpression="expdate" />
                    <asp:BoundField DataField="shopname" HeaderText="shop Name" SortExpression="shopName" />
                    <asp:BoundField DataField="semail" HeaderText="Shop Mail" SortExpression="semail" />
                    <asp:BoundField DataField="phon" HeaderText="Shop Name" SortExpression="pno" />
                     <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                   
                 
                </Columns>
            </asp:GridView>
            <br />
           
        </div>



    </form>
       </div>
                        </div>
                    </div>
                </div>
                </div>
</asp:Content>
