$(function() {

	// solving the active menu problem
	switch (menu) {

	case 'About Us':
		$('#about').addClass('active');
		break;
		
	case 'Contact':
		$('#contact').addClass('active');
		break;

	case 'All Products':
		$('#listProducts').addClass('active'); 
		break;

	case 'login':
		$('#login').addClass('active'); 
		break;

	case 'Manage Products':
		$('#manageProducts').addClass('active'); 
		break;
		
	default:
		if(menu == "home") break;
		$('#listProducts').addClass('active');
		$('#a_' +menu).addClass('active');
		break;
	}
	
	//code for jquery data table 
	
	var $table = $('#productListTable')
	
	//execute the below code only when we have this tabel
	if ($table.length){
		
		//console.log('inside the table!');
		
		var jsonUrl = '';
		
		if(window.categoryId == ''){
			jsonUrl = window.contextRoot + '/json/data/all/products';
		}
		else{
			
			jsonUrl = window.contextRoot + '/json/data/category/'+ window.categoryId +'/products';
		
		}
		$table.DataTable({
			
			lengthMenu:[[3,5,10,-1], ['3 records','5 records','10 records','all records']],
			pageLength:5,
			ajax: {
				
				url: jsonUrl,
				dataSrc: ''
			},
			
			columns:[
				
				{
					data: 'code',
					mRender: function(data, tyope, row){
						
						return '<img src="'+window.contextRoot+'/resources/images/'+data+'.jpg"class="dataTableImg"/>'
					}
					
				},
				{
					data: 'name'
					
				},
				{
					data: 'brand'
					
				},
				{
					data: 'unitPrice',
					mRender: function(data, type, row){
						return '&#8377; ' + data
					}
					
				},
				{
					data: 'quantity'
					
				},
				{
					data: 'id',
					bSortable: false,
					mRender: function(data, type, row){
					
						var str= '';
						str += '<a href="'+window.contextRoot+ '/show/' +data+' /product"class ="btn btn-primary"><span class= "glyphicon glyphicon-eye-open"></span></a> &#160;';
						str += '<a href="'+window.contextRoot+ '/cart/add/' +data+' /product"class ="btn btn-success"><span class= "glyphicon glyphicon-shopping-cart"></span></a>';
						return str;
						
					}
					
				},
				
				]
		
		}); 
	
	}
	
	
	//dismissing alert after 3 seconds
	var $alert = $('.alert');
	
	if ($alert.length){
		
		setTimeout(function(){
			
			$alert.fadeOut('slow');
		},3000)
	}
		
});



