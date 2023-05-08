<%@ Page Title="" Language="C#" MasterPageFile="~/user/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="wellweb.user.pages.pages.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="innerpage">
            
                <div class="row toplinkbar">
                    <div class="col-xl-8">

                    </div>
                    <div class="col-xl-4">
                            <div class="toplinks">
                                 <a href="../../special_user/login.aspx">User Login</a>
                      
                                <a href="ngoregistration.aspx">NGO Login</a>
                                <a href="../../seller/login.aspx">Shop Login</a>

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
                                    <a href="home.aspx">Home</a>
                                  
                                    <a href="about.aspx">About</a>
                                    <a href="contact.aspx">Contact</a>
                                
                            </nav>
                        </div>
                    </div>

                    </row>
                </div>
           
   
                 
                  
            </div>
        
        </div>

        <div class="contactbackbanner">
        <div class="container innerpage">
        

            <div class="row">
                <div class="col-xl-6">
                    <form name="RegForm" class="gap-main-row">
                        <h4 class="gap-main-row">
                            Enquiry
                         </h4>
            
                        <h4 class="mt-4">Name: </h4><input class="mt-2" type="text" size="65" name="Name" required/>
                        
                        <h4 class="mt-4">E-mail Address:</h4><input class="mt-2" type="email" size="65" name="EMail" required/>
            
                        <h4 class="mt-4">Contact Number: </h4><input class="mt-2" type="tel" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" size="65" name="Telephone" required />
                        
                        <h4 class="mt-4">Message: </h4><!--<input class="mt-2" type="text" size="65" name="message" required/> -->
                        <textarea id="w3review" name="w3review" rows="3" cols="50"></textarea>
                        
                        <h4>
                            <input class="btn mt-4" type="submit" value="Submit" name="Submit" />
                        </h4>
                    </form>


                    

                </div>
                <div class="col-xl-6">
                </div>
            </div>



        </div>
        


    </div>
    <div class="row">
        <div class="col-xl-6">
            <h4 class="gap-main-row">
                Contact
            </h4>
            <a href="tel:+918888794592">Call me at +918888794592</a>



        </div>
        <div class="col-xl-6">

            <h4 class="gap-main-row">Email</h4>
            <a href="project.dawae@gmail.com">project.dawae@gmail.com</a>

            

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
