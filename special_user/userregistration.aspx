<%@ Page Title="" Language="C#" MasterPageFile="~/special_user/Site1.Master" AutoEventWireup="true" CodeBehind="userregistration.aspx.cs" Inherits="wellweb.special_user.userregistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
      <div class="homenavbar">
            <div class="row">
                <div class="col-xl-3">
                    <a href="../user/home.aspx">
                        <img src="../user/imgs/dawae-02.svg" alt="" class="logohomepage">
                    </a>
                </div>
                <div class="col-xl-9"> 
                    
                        
                    <nav class="navbar">
                                    <a href="../user/pages/home.aspx">Home</a>      
                                    <a href="../user/pages/about.aspx">About</a>
                                    <a href="../user/pages/contact.aspx">Contact</a>
                        
                    </nav>
                </div>
            </div>

            
        </div>

      <div class="form-baground-color">


        <div class="innerpage gap-main-row">
			<form name="RegForm" class="formcontrol" runat="server"  method="post" onsubmit="validate();">
				<h1 class="gap-main-row">Sign Up</h1>

				<h4>Name: </h4>
				<input type="text" size="65" name="uname" id="unameid" runat="server" onkeyup="checkName()" onblur="makeUpper()" />
				<small id="unamemsg" style="color: red;"> *</small> <br>

				<h4>City: </h4>
				<input type="text" size="500" name="uaddress" id="uaddressid" runat="server" onkeyup="checkCity()" onblur="makeUpper()"/>
				<small id="uaddressmsg" style="color: red;"> * </small> <br>

				<h4>E-mail Address: </h4>
				<input type="email" size="65" name="uemail" id="uemailid" runat="server"/>
				<small id="uemailmsg" style="color: red;"> * </small> <br>

				<h4>Contact Number: </h4>
				<input type="number" size="65" name="ucontact" id="ucontactid" runat="server" onkeyup="checkContact()"/>
				<small id="ucontactmsg" style="color: red;"> * </small> <br>

				<h4>Password: </h4>
				<input type="password" size="65" name="upassword" id="upasswordid" runat="server" onkeyup="checkPassword()" />
				<small id="upasswordmsg" style="color: red;"> * </small> <br>

				<h4>Confirm Password: </h4>
				<input type="password" size="65" name="ucpassword" id="ucpasswordid" onkeyup="checkCpassword()" />
				<small id="ucpasswordmsg" style="color: red;"> * </small> <br>

				<h4>
				
                     <asp:Button ID="Button1" runat="server" onClick="Button1_Click1" Text="Submit" class="btn" />
					<input class="btn" type="reset" value="Reset" name="Reset" />
				</h4>
			</form>
		</div>
	</div>
   
	<script>
        var unameStatus = true;
        var uaddressStatus = true;
        var ucontactStatus = true;
        var upasswordStatus = true;
        var ucpasswordStatus = true;

        function makeUpper() {
            const unameid = document.getElementById("unameid");
            let unamedata = unameid.value;
            unameid.value = unamedata.toUpperCase();

            const uaddressid = document.getElementById("uaddressid");
            let uaddressdata = uaddressid.value;
            uaddressid.value = uaddressdata.toUpperCase();
        }

        function checkName() {
            const unameid = document.getElementById("unameid");
            const unamemsg = document.getElementById("unamemsg");
            let unamedata = unameid.value;

            unameStatus = true;

            for (let i = 0; i < unamedata.length; i++) {
                if (unamedata[i] == ' ') {
                    continue;
                }

                if (isAlpha(unamedata[i]) == false) {
                    unameStatus = false;
                    break;
                }

            }

            if (unameStatus == false) {
                unamemsg.innerText = "Only alphabets are allowed!!";
            }
            else {
                unamemsg.innerText = "*";
            }

        }
        function checkCity() {
            const uaddressid = document.getElementById("uaddressid");
            const uaddressmsg = document.getElementById("uaddressmsg");
            let uaddressdata = uaddressid.value;

            uaddressStatus = true;

            for (let i = 0; i < uaddressdata.length; i++) {
                if (uaddressdata[i] == ' ') {
                    continue;
                }

                if (isAlpha(uaddressdata[i]) == false) {
                    uaddressStatus = false;
                    break;
                }

            }

            if (uaddressStatus == false) {
                uaddressmsg.innerText = "Only alphabets are allowed!!";
            }
            else {
                uaddressmsg.innerText = "*";
            }

        }

        function checkContact() {
            const ucontactid = document.getElementById("ucontactid");
            const ucontactmsg = document.getElementById("ucontactmsg");
            let ucontactdata = ucontactid.value;

            ucontactStatus = true;

            if (ucontactdata.length > 10) {
                ucontactStatus = false;
                ucontactmsg.innerText = "Only 10 digits are allowed!!";
                return;
            }

            if (ucontactdata.length < 10) {
                ucontactStatus = false;
                ucontactmsg.innerText = "Minimum 10 digits are allowed!!";
                return;
            }

            if (ucontactdata.length == 10) {
                ucontactStatus = true;
                ucontactmsg.innerText = "*";
                return;
            }


        }

        function checkPassword() {
            const upasswordid = document.get.getElementById("upasswordid");
            const upasswordmsg = document.get.getElementById("upasswordmsg");
            let upassworddata = upasswordid.value;


            upasswordStatus = true;

            if (upasswordtdata.length < 6) {
                upasswordStatus = false;
                upasswordmsg.innerText = "Password should be minimum 6 characters";
                return;
            }


        }

        function checkCpassword() {
            const ucpasswordid = document.get.getElementById("ucpasswordid");
            const upasswordid = document.get.getElementById("upasswordid");
            const ucpasswordmsg = document.get.getElementById("ucpasswordmsg");
            let ucpassworddata = ucpasswordid.value;
            let upassworddata = upasswordid.value;

            ucpasswordStatus = true;

            if (ucpassworddata === upassworddata) {
                ucpasswordStatus = true;
                return;
            }
            else {
                ucpasswordStatus = false;
                ucpasswordmsg.innerText = "Passwords do not match";

            }


        }




        function validate() {
            //	const rid = document.getElementById("rid");
            const unameid = document.getElementById("unameid");
            //	const perid = document.getElementById("perid");
            const ucontactid = document.getElementById("ucontactid");

            //	let rdata = rid.value;
            let unamedata = unameid.value;
            let uaddressdata = uaddressid.value;
            let ucontactdata = ucontactid.value;
            let upassworddata = upasswordid.value;
            let ucpassworddata = ucpasswordid.value;


            if (unamedata.length == 0 || uaddressdata.length == 0 || ucontactdata.length == 0 || upassworddata.length == 0) {
                alert("All field are compulsory !!");
                event.preventDefault();
                return false;

            }


            if (unameStatus == true && ucontactStatus == true && upasswordStatus == true && ucpasswordStatus == true && uaddressStatus == true) {

                return true;
            }

            else {
                event.preventDefault();
                return false;
            }


        }




        function isDigit(ch) {
            if (ch >= '0' && ch <= '9')
                return true;
            else
                return false;
        }

        function isAlpha(ch) {
            if ((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z'))
                return true;
            else
                return false;
        }



    </script>



    

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
        $('.message a').click(function(){
        $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
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
