<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="wellweb.user.pages.pages.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



      
    <div class="innerpage">
        <div class="homepage">
            <header>
                <div class="row toplinkbar">
                    <div class="col-xl-8">

                    </div>
                    <div class="col-xl-4">
                            <div class="toplinks">
                               
                             </div>
                        </div>
                    </div>
                <div class="homenavbar">
                    <div class="row">
                        <div class="col-xl-3">
                            <a href="home.aspx">
                                <img src="../imgs/dawae-02.svg" alt="" class="logohomepage">
                            </a>
                        </div>
                        <div class="col-xl-9">
                            
                                
                            <nav class="navbar">
                                  
                                   
                                    
                                     <a href="../../../special_user/login.aspx">User Login</a>
                                
                                     <a href="../../../Donation/Login.aspx">NGO Login</a>
                                     <a href="../../../seller/login.aspx">Shop Login</a>
                                <a href="../../../admin/Adminlogin.aspx">Admin Login</a>

                                
                            </nav>
                        </div>
                    </div>

                    
                </div>
            </header>
            <div class="homebanner">
                <div class="contentbanner"> 
                    <h1>Welcome to Dawa-E <br> Health services.</span></h1>
                    <h3>
                    <div class="waviy">
                        <span style="--i:1">We</span>
                        <span style="--i:2">are</span>
                        <span style="--i:3">here</span>
                        <span style="--i:4">to</span>
                        <span style="--i:5">help</span>
                        <span style="--i:6">you</span>
                        <span style="--i:7">.</span>
                        <span style="--i:8">.</span>
                        <span style="--i:9">.</span>
                        </div>
                    </h3>
                    <button class="btn mt-3" id="connect"><a href="userregistration.aspx">Join Us</a></button>
                       </div>
                    
                    
            </div>     
                <img class="bannermedicine" id="bannermedicine" src="../imgs/bannermedicine.svg">
                 
                  
            </div>
        
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
