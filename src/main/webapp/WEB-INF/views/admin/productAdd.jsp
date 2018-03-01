<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Panel | Yönetim Sayfası</title>
<c:import url="/admin/css"></c:import>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<c:import url="/admin/header"></c:import>
		<c:import url="/admin/menu"></c:import>
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Product <small>Product Page Add</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href='<s:url value="/admin/dashboard"></s:url>'><i
							class="fa fa-dashboard"></i> Dashboard</a></li>
					<li class="active">Product Add</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">

					<div class="col-xs-12">
						<a onclick="window.history.back();" class="btn btn-app pull-right">
							<i class="fa fa-arrow-left"></i>Back
						</a>
					</div>


					<div class="col-md-12">
						<div class="box box-info">
							<div class="box-header with-border">
								<h3 class="box-title">Product Add Form</h3>
							</div>
							<!-- /.box-header -->
							<!-- form start -->
							<form class="form-horizontal">
								<div class="box-body">


									<div class="col-md-6">
										<div class="form-group">
											<div class="col-sm-2">
												<label>Category</label>
											</div>
											<div class="col-sm-10">
												<select name="productcategoryid" id="productcategoryid" value="${item.getCategoryid() }" class="form-control select2" multiple="multiple"
													data-placeholder="Select a State" style="width: 100%;">
													<c:if test="${ not empty lc }">

														<c:forEach items="${ lc }" var="item">
															<option>${item.getCategorytitle() }</option>
														</c:forEach>

													</c:if>

												</select>
											</div>
										</div>
										<div class="form-group">
											<label for="productDescription"
												class="col-sm-2 control-label">Description</label>

											<div class="col-sm-10">
												<input type="text" class="form-control"
													name="productdescription" id="productDescription" placeholder="Description">
											</div>
										</div>
										<div class="form-group">
											<label for="productDescription"
												class="col-sm-2 control-label">Type</label>
											<div class="col-sm-10">
												<select class="col-sm-10 form-control" name="producttype"
													id="producttype">

													<option>Satılık</option>
													<option>Kiralık</option>


												</select>
											</div>
										</div>


									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="productName" class="col-sm-2 control-label">Name</label>

											<div class="col-sm-10">
												<input type="text" class="form-control" name="producttitle" id="producttitle"
													placeholder="Product Name">
											</div>
										</div>

										<div class="form-group">
											<label for="productPrice" class="col-sm-2 control-label">Price</label>

											<div class="col-sm-10">
												<input type="text" class="form-control" name="productprice" id="productprice"
													placeholder="Price">
											</div>
										</div>
										<div class="form-group">
											<label for="productDescription"
												class="col-sm-2 control-label">Campainge</label>
											<div class="col-sm-10">
												<select class="col-sm-10 form-control" name="productcampaignid"
													id="ProductCampaigne">

													<option>Hayır</option>
													<option>Evet</option>

												</select>
											</div>
										</div>
										<div class="form-group">
											<label for="campaigneName" class="col-sm-2 control-label">Campaigne
												Name</label>

											<div class="col-sm-10">
												<input type="text" class="form-control" id="campaigneName"
													placeholder="Campaigne Name">
											</div>
										</div>
									</div>



									<div class="col-md-12">
										<div class="form-group">

											<label for="inputPassword3" class="col-sm-1 control-label">Detail</label>
											<div class="col-sm-11">
												<textarea id="editor1" name="editor1" rows="10" cols="80">

                    </textarea>
											</div>
										</div>


									</div>

								</div>
								<!-- /.box-body -->
								<div class="box-footer">
									<button type="reset" class="btn btn-default">Reset</button>
										<a href='<s:url value="/sinavduzenle"></s:url>'
						class="btn btn-info pull-right" role="button" aria-disabled="true">Save</a>
								</div>
								<!-- /.box-footer -->
							</form>
						</div>

					</div>

				</div>


			</section>
		</div>
		<c:import url="/admin/footer"></c:import>
		<c:import url="/admin/sidebar"></c:import>
	</div>
	<c:import url="/admin/js"></c:import>
	<script src='<s:url value="/resources/adminJS/product.js"></s:url>'></script>
</body>
</html>

