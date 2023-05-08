<%@ Page Title="" Language="C#" MasterPageFile="~/special_user/pages/pagesit.Master" AutoEventWireup="true" CodeBehind="donator.aspx.cs" Inherits="wellweb.special_user.pages.donator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="innerpage">

        <form class="formcontrol" onsubmit="validate();" runat=server>
            <h1 class="gap-main-row">Donate Medicine </h1>

           

            
            <h4>Medicine Name</h4>
            <input type="text" id="medname" name="medname" runat="server" placeholder="Medicine Name">
            <!-- <small id="unamemsg" style="color: red;"> * </small>  <br> -->

            <h4>Catagory Name</h4>
            <input type="text" id="cname" name="cname" runat="server" placeholder="Catagory"  >
            <small id="dnamemsg" style="color: red;"> * </small> <br>

            <h4>Expiry Date</h4>
            <input type="date" id="expdate" min="2021-05-14" max="2023-05-14" name="expdate" runat="server" placeholder="Expiry Date">
            <!-- <small id="unamemsg" style="color: red;"> * </small>  <br> -->

           

           

            <asp:Button ID="Button1" runat="server" onClick="Button_Click" Text="Submit" />







        </form>
    </div>
    

    <script>
        var dnameStatus = true;
        var dcontactStatus = true;
        //var upasswordStatus = true;

        function makeUpper() {
            const dnameid = document.getElementById("dnameid");
            let dnamedata = dnameid.value;
            dnameid.value = dnamedata.toUpperCase();
        }

        function checkName() {
            const dnameid = document.getElementById("dnameid");
            const dnamemsg = document.getElementById("dnamemsg");
            let dnamedata = dnameid.value;

            dnameStatus = true;

            for (let i = 0; i < dnamedata.length; i++) {
                if (dnamedata[i] == ' ') {
                    continue;
                }

                if (isAlpha(dnamedata[i]) == false) {
                    dnameStatus = false;
                    break;
                }

            }

            if (dnameStatus == false) {
                dnamemsg.innerText = "Only alphabets are allowed!!";
            }
            else {
                dnamemsg.innerText = "*";
            }

        }

        function checkContact() {
            const dcontactid = document.getElementById("dcontactid");
            const dcontactmsg = document.getElementById("dcontactmsg");
            let dcontactdata = dcontactid.value;

            dcontactStatus = true;

            if (dcontactdata.length > 10) {
                dcontactStatus = false;
                dcontactmsg.innerText = "Only 10 digits are allowed";
                return;
            }

            if (dcontactdata.length == 10) {
                dcontactStatus = true;
                dcontactmsg.innerText = "*";
                return;
            }


            dcontactStatus = false;
            dcontactmsg.innerText = "*";
        }






        function validate() {
            //	const rid = document.getElementById("rid");
            const dnameid = document.getElementById("dnameid");
            //	const perid = document.getElementById("perid");
            const dcontactid = document.getElementById("dcontactid");

            //	let rdata = rid.value;
            let dnamedata = dnameid.value;
            let dcontactdata = dcontactid.value;
            //    let upassworddata = upasswordid.value;


            if (dnamedata.length == 0 || dcontactdata.length == 0) {
                alert("All field are compulsory !!");
                event.preventDefault();
                return false;

            }


            if (dnameStatus == true && dcontactStatus == true) {
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
</asp:Content>
