<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="wellweb.Donation.WebForm3" %>

<!DOCTYPE html>  

<html>
    <head>
        <title>

        </title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="login.css" />
		<style>
			body{
				background-image:url("https://i0.wp.com/give.do/blog/wp-content/uploads/2021/12/Main-Banner-3.jpg?fit=1200%2C675&amp");
				background-size:cover;
			}

		</style>
    </head>
    <body>
        
	


	<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
					
			          	
			          	<label for="reg-log"></label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">Sing Up</h4>
										<h6><asp:Label ID="lblMsg1" runat="server" Text=""></asp:Label></h6>
												<form id="m" runat="server">
											<div class="form-group">
												<input type="text" id="logname" name="logname" runat="server" class="form-style" placeholder="Your Full Name"  >
												<i class="input-icon uil uil-user"></i>
											</div>	
											<div class="form-group mt-2">
												<input type="email" id="logemail" name="logemail" runat="server" class="form-style" placeholder="Your Email" >
												<i class="input-icon uil uil-at"></i>
											</div>	
											
											<div class="form-group mt-2">
												<input type="tel" id="pno" name="pno" class="form-style" runat="server" placeholder="Your Phone No"  >
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<div class="form-group mt-2">
												<input type="text" id="logdes" name="logdes" class="form-style" runat="server" placeholder="Short NGO Description"  >
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<div class="form-group mt-2">
												<input type="password" id="logpass" name="logpass" class="form-style" runat="server" placeholder="Your Password"  autocomplete="off">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
												<div class="form-group mt-2">
												<input type="password" id="logpass1" name="logpass1" class="form-style" runat="server" placeholder="Confirm Password"  autocomplete="off">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<asp:Button ID="Button2" CssClass="btn mt-4" runat="server" onClick="Button2_Click" Text="Singup" />
												</form>
											<p class="mb-0 mt-4 text-center"><a href="Login.aspx" class="link">Have a account</a></p>
				      					</div>
			      					</div>
			      				</div>
								
			      			</div>
			      		</div>
			      	</div>
		      	</div>
	      	</div>
	    </div>
	</div>

    </body>
</html>
