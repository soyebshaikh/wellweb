<%@ Page Title="" Language="C#" MasterPageFile="~/special_user/pages/pagesit.Master" AutoEventWireup="true" CodeBehind="shopwatch.aspx.cs" Inherits="wellweb.special_user.pages.shopwatch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        .card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
        }
        .card h3 {
            font-size: 18px;
            margin: 0;
        }
        .card p {
            margin: 10px 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container my-5">
       <form id="form1" runat="server">
        <div class="row">
            <asp:Repeater ID="cardDataRepeater" runat="server">
                <ItemTemplate>

                    
                <div class="col-md-3">
                    <div class="card mb-3 box-shadow">
                       <div class="card-body">
                            <h7 class="card-text"><b><%# Eval("Name") %></b> </h7>
                            <p class="card-text"><%# Eval("Address") %> </p>
                           <div class="btn-group">
                                    
                                     <a href="selldawaE.aspx?id=<%# Eval("Id") %>">   <button type="button" class="btn btn-sm btn-outline-secondary">Add to cart</button></a>
                                </div>
                           
                        </div>
                    </div>
                </div>
                        
                     
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
    </div>
            
</asp:Content>
