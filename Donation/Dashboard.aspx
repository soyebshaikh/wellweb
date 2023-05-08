<%@ Page Title="" Language="C#" MasterPageFile="~/Donation/dhome.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="wellweb.Donation.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="row">
            <div class="col-lg-11 mx-auto">
                <div class="card border-0 shadow">
                    <div class="card-body p-5">
    
    
    <div class="table-responsive">
   
                             <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" AlternatingRowStyle-BorderStyle="Solid" AlternatingRowStyle-BorderColor="Black" BorderColor="Black" Width="100%" CssClass="table-primary" AlternatingRowStyle-CssClass="border border-secondary" EditRowStyle-CssClass="border border-secondary" HeaderStyle-CssClass="border border-secondary" AlternatingRowStyle-Width="10px">
                <Columns>
 
                    <asp:BoundField DataField="name" HeaderText="Donator Name" SortExpression="name" />
                    <asp:BoundField DataField="pno" HeaderText="Donator Mobile Number" SortExpression="pno" />
                    <asp:BoundField DataField="email" HeaderText="Donator Email" SortExpression="email" />
                    <asp:BoundField DataField="catogary" HeaderText="Catogary" SortExpression="catogary" />
                    <asp:BoundField DataField="medname" HeaderText="Medicine Name" SortExpression="medname" />
                    <asp:BoundField DataField="expdate" HeaderText="Exp Date" SortExpression="expdate" />
          
                 
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
