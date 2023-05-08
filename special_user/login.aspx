<%@ Page Title="" Language="C#" MasterPageFile="~/special_user/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="wellweb.special_user.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="row toplinkbar">
                    <div class="col-xl-8">

                    </div>
                    <div class="col-xl-4">
                           
                        </div>
                    </div>
       <div class="homenavbar">
            <div class="row">
                <div class="col-xl-3">
                    <a href="../user/home.aspx">
                        <img src="../user/imgs/dawae-02.svg" alt="" class="logohomepage">
                    </a>
                </div>
                <div class="col-xl-9">
                    
                        
                    <nav class="navbar">
                                    <a href="../../user/pages/home.aspx">Home</a>      
                                    <a href="../../user/pages/about.aspx">About</a>
                                    <a href="../../user/pages/contact.aspx">Contact</a>
                        
                    </nav>
                </div>
            </div>

            
        </div>

<div class="form-baground-color">

<div class="login-page">
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <div class="form">
     
      <form  runat=server>
        <input type="email" name="email" id="email" runat="server" placeholder="email"/>
        <input type="password" name="pass" id="pass" runat="server" placeholder="password"/>
          <asp:Button ID="Button1" runat="server" onClick="Button1_Click" Text="Login" />
        <p class="message">Not registered? <a href="userregistration.aspx">Create an account</a></p>
      </form>
    </div>
  </div>
  <br/>
  <br/>
  <br/>
  <br/>
</div>
<div class="footer">
  <div class="row">
      <div class="col-xl-8">

      <p class="mt-4">Copyright © Dawa-E 2021 All Rights Reserved</p>
      </div>
      <div class="col-xl-4">
          <div class="row socialmedia mt-3 mb-3">
              <div class="col-xl-6"></div>
              <div class="col-xl-2"><div class="twitter"></div></div>
              <div class="col-xl-2"><div class="facebook"></div></div>
              <div class="col-xl-2"><div class="insta"></div></div>
              

          </div>

      </div>

  </div>
</div>
  
   <script>
       $('.message a').click(function () {
           $('form').animate({ height: "toggle", opacity: "toggle" }, "slow");
       });

   </script>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
crossorigin="anonymous"></script>

</asp:Content>
