<%@ Page Title="" Language="C#" MasterPageFile="~/special_user/pages/pagesit.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="wellweb.special_user.pages.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="innerpage">
         
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
         </div>


</asp:Content>
