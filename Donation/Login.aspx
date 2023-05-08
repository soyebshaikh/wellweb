<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="wellweb.Donation.WebForm2" %>

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
						<h6 class="mb-0 pb-3"><span>Log In </span></h6>
			          	
			          	<label for="reg-log"></label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">Log In</h4>
											<h6><asp:Label ID="lblMsg" runat="server" Text=""></asp:Label></h6>
											<form runat=server>
											<div class="form-group">
												<input type="email" name="email" id="email" runat="server" class="form-style" placeholder="Your Email" autocomplete="off">
												<i class="input-icon uil uil-at"></i>
											</div>	
											<div class="form-group mt-2">
												<input type="password" name="password" id="password" runat="server" class="form-style" placeholder="Your Password"  autocomplete="off">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<asp:Button ID="Button1" CssClass="btn mt-4" runat="server" onClick="Button1_Click" Text="Login" />
											
												</form>
                            				<p class="mb-0 mt-4 text-center"><a href="Reg.aspx" class="link">Don't Have a account</a></p>
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
