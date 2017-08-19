
<div class="main container">

	<div class="row">
		<div id="content" class="col-sm-9 col-main">
			<div class="page-title">
				<h2>Register Account</h2>
			</div>
			<p>
				If you already have an account with us, please login at the <a
					href="#">login page</a>.
			</p>
			<form action="#" method="post" enctype="multipart/form-data"
				class="form-horizontal">
				<fieldset id="account">
					<legend>Your Personal Details</legend>
					<div class="form-group required" style="display: none;">
						<label class="col-sm-2 control-label">Customer Group</label>
						<div class="col-sm-10">
							<div class="radio">
								<label> <input type="radio" name="customer_group_id"
									value="1" checked="checked" /> Default
								</label>
							</div>
						</div>
					</div>

					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-firstname">First
							Name</label>
						<div class="col-sm-10">
							<input type="text" name="firstname" placeholder="First Name"
								id="input-firstname" class="form-control" />
						</div>
					</div>
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-lastname">Last
							Name</label>
						<div class="col-sm-10">
							<input type="text" name="lastname" placeholder="Last Name"
								id="input-lastname" class="form-control" />
						</div>
					</div>
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-email">E-Mail</label>
						<div class="col-sm-10">
							<input type="email" name="email" placeholder="E-Mail"
								id="input-email" class="form-control" />
						</div>
					</div>
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-telephone">Telephone</label>
						<div class="col-sm-10">
							<input type="tel" name="telephone" placeholder="Telephone"
								id="input-telephone" class="form-control" />
						</div>
					</div>

				</fieldset>
				<fieldset id="address">
					<legend>Your Address</legend>
					
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-address-1">Address
							1</label>
						<div class="col-sm-10">
							<input type="text" name="address_1" placeholder="Address 1"
								id="input-address-1" class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-address-2">Address
							2</label>
						<div class="col-sm-10">
							<input type="text" name="address_2" placeholder="Address 2"
								id="input-address-2" class="form-control" />
						</div>
					</div>
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-city">City</label>
						<div class="col-sm-10">
							<input type="text" name="city" placeholder="City" id="input-city"
								class="form-control" />
						</div>
					</div>
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-postcode">Post
							Code</label>
						<div class="col-sm-10">
							<input type="text" name="postcode" placeholder="Post Code"
								id="input-postcode" class="form-control" />
						</div>
					</div>
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-country">Country</label>
						<div class="col-sm-10">
							<select name="country_id" id="input-country" class="form-control">
								<option value="">--- Please Select ---</option>
								<option value="1">Bangladesh</option>
								<option value="2" selected="selected">India</option>
								<option value="3">United States</option>
							</select>
						</div>
					</div>
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-zone">Region
							/ State</label>
						<div class="col-sm-10">
							<select name="zone_id" id="input-zone" class="form-control">
								<option value="">--- Please Select ---</option>
								<option value="1">Maharashtra</option>
							</select>
						</div>
					</div>
				</fieldset>
				<fieldset>
					<legend>Your Password</legend>
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-password">Password</label>
						<div class="col-sm-10">
							<input type="password" name="password" placeholder="Password"
								id="input-password" class="form-control" />
						</div>
					</div>
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-confirm">Password
							Confirm</label>
						<div class="col-sm-10">
							<input type="password" name="confirm"
								placeholder="Password Confirm" id="input-confirm"
								class="form-control" />
						</div>
					</div>
				</fieldset>
				<fieldset>
					<divclass"button">
        <center><button type="submit" class="button"><span>Submit</span></button></center>
        
		</div>
        </fieldset>
