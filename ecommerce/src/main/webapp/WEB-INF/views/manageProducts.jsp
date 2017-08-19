<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="container">
	<div class="row">

		<div class="col-md-offset-2 col-md-8">

			<div class="panel panel-primary">

				<div class="panel-heading">

					<h4>Product Management</h4>

				</div>
				<div class="panel-body">

					<!-- Form Elements -->
					<sf:form class="form-horizontal" modelAttribute="product"
						action="${contextRoot}/manage/products" method="POST"
						enctype="multipart/form-data">

						<div class="form-group">

							<label class="control-label col-md-4" for="name">Enter
								Product Name: </label>
							<div class="col-md-8">
								<sf:input type="text" path="name" id="name"
									placeholder="Product Name" class="form-control" />
								<sf:errors path="name" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="brand">Enter
								Brand Name: </label>
							<div class="col-md-8">
								<sf:input type="text" path="brand" id="brand"
									placeholder="Brand Name" class="form-control" />
								<sf:errors path="brand" cssClass="help-block" element="em" />
							</div>
						</div>


						<div class="form-group">

							<label class="control-label col-md-4" for="description">Product
								Description: </label>
							<div class="col-md-8">
								<sf:textarea path="description" id="description" rows="4"
									placeholder="Product Description" class="form-control"></sf:textarea>
								<sf:errors path="description" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="unitPrice">Enter
								Unit Price: </label>
							<div class="col-md-8">
								<sf:input type="number" path="unitPrice" id="unitPrice"
									placeholder="Unit Price in &#8377" class="form-control" />
								<sf:errors path="unitPrice" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="quantity">Quantity
								Available: </label>
							<div class="col-md-8">
								<sf:input type="number" path="quantity" id="quantity"
									placeholder="Quantity Available" class="form-control" />
							</div>
						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="file">Select
								an image: </label>
							<div class="col-md-8">
								<sf:input type="file" path="file" id="file" class="form-control" />
								<sf:errors path="file" cssClass="help-block" elememt="em" />
							</div>
						</div>

						<div class="form-group">

							<label class="control-label col-md-4" for="categoryId">Select
								Category: </label>
							<div class="col-md-8">
								<select class="form-control" id="categoryId" name="categoryId">
									<option value="1">Category one</option>
									<option value="2">Category two</option>
								</select>
							</div>
						</div>
						<div class="form-group">

							<div class="col-md-offset-4 col-md-8">
								<input type="submit" name="submit" id="submit" value="Submit"
									class="btn btn-primary" />
							</div>
						</div>

						<sf:hidden path="id" />
						<sf:hidden path="code" />
						<sf:hidden path="supplierId" />
						<sf:hidden path="active" />
						<sf:hidden path="purchases" />
						<sf:hidden path="views" />

					</sf:form>


				</div>

			</div>

		</div>

	</div>
	<c:if test="${not empty message}">
		<div class="col-xs-12">

			<div class="alert alert-success alert-dismissible">

				<button type="button" class="close" data-dismiss="alert">&times;
				</button>

				${message}

			</div>

		</div>
	</c:if>
	<div class="row">

		<div class="col-xs-12">

			<h3>Available Products</h3>
			<hr />
		</div>


		<div class="col-xs-12">
			<div style="overflow: auto">

				<!-- product table for admin -->
				<table id="adminProductsTable"
					class="table table-stripped table-bordered">

					<thead>

						<tr>
							<th>Id</th>
							<th>&#160</th>
							<th>Name</th>
							<th>Quantity</th>
							<th>Unit Price</th>
							<th>Active</th>
							<th>Edit</th>
						</tr>
					</thead>
					
					<tbody>
					<tr>
					<td>4</td>
					<td>
					<img class="adminDataTableImg" src="${contextRoot}/resources/images/PRDMNO123PQRX.jpg" alt="Macbook Pro"/>
					</td>
					<td>Macbook Pro</td>
					<td>3</td>
					<td>&#8377,57000.00/-</td>
					<td>
					<!-- toggle switch -->
						<label class="switch">
						<input type="checkbox" checked="checked" value="4"/>
						<div class="slider"></div>
						</label>
					</td>
					<td>
					<a href="${contextRoot}/manage/4/product" class="btn btn-warning"></a>
					<span class="glyphicon glyphicon-pencil"></span>
					</td>
					</tr>
					
					<tr>
					<td>4</td>
					<td>
					<img class="adminDataTableImg" src="${contextRoot}/resources/images/PRDMNO123PQRX.jpg" alt="Macbook Pro"/>
					</td>
					<td>Macbook Pro</td>
					<td>3</td>
					<td>&#8377,57000.00/-</td>
					<td>
					<!-- toggle switch -->
						<label class="switch">
						<input type="checkbox"  value="4"/>
						<div class="slider"></div>
						</label>
					</td>
					<td>
					<a href="${contextRoot}/manage/4/product" class="btn btn-warning"></a>
					<span class="glyphicon glyphicon-pencil"></span>
					</td>
					</tr>
					</tbody>
					
					<tfoot>
						<tr>
							<th>Id</th>
							<th>&#160</th>
							<th>Name</th>
							<th>Quantity</th>
							<th>Unit Price</th>
							<th>Active</th>
							<th>Edit</th>
						</tr>
					</tfoot>
				</table>

			</div>

		</div>
	</div>