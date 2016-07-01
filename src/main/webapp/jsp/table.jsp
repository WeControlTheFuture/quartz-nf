<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@ include file="/jsp/public/header.jsp"%>
<body>
	<%@include file="/jsp/public/topbar.jsp"%>
	<div class="ch-container">
		<div class="row">
			<%@include file="/jsp/public/left-menu.jsp"%>
			<div id="content" class="col-lg-10 col-sm-10">
				<!-- content starts -->
				<div>
					<ul class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li><a href="#">Tables</a></li>
					</ul>
				</div>

				<div class="row">
					<div class="box col-md-12">
						<div class="box-inner">
							<div class="box-content">
								<div class="alert alert-info">
									<a id="create-job-def" class="btn btn-success" href="#"> <i class="glyphicon glyphicon-zoom-in icon-white"></i>创建任务
									</a>
								</div>
								<table id="job-define-table" class="table table-striped table-bordered bootstrap-datatable datatable responsive">
									<thead>
										<tr>
											<th>任务名称</th>
											<th>任务描述</th>
											<th>类名</th>
											<th>Status</th>
											<th>Actions</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>David R</td>
											<td class="center">2012/01/01</td>
											<td class="center">Member</td>
											<td class="center"><span class="label-success label label-default">Active</span></td>
											<td class="center"><a class="btn btn-success" href="#"> <i class="glyphicon glyphicon-zoom-in icon-white"></i>参数
											</a> <a class="btn btn-info" href="#"> <i class="glyphicon glyphicon-edit icon-white"></i>触发器
											</a> <a class="btn btn-danger" href="#"> <i class="glyphicon glyphicon-trash icon-white"></i>删除
											</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!--/span-->

				</div>

				<!-- content ends -->
			</div>
			<!--/#content.col-md-0-->

			<div class="modal fade" id="job-edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">×</button>
							<h3>任务定义</h3>
						</div>
						<div class="modal-body">
							<form id="job-define-form" role="form">
								<div class="form-group">
			                        <label for="jobname">任务名称</label>
			                        <input type="email" class="form-control" name="jobname" placeholder="name">
			                    </div>
			                    <div class="form-group">
			                        <label for="jobname">类名</label>
			                        <input type="email" class="form-control" name="jobclass" placeholder="class">
			                    </div>
			                    <div class="form-group">
			                        <label for="jobname">任务描述</label>
			                        <input type="email" class="form-control" name="jobdec" placeholder="description">
			                    </div>
			                    <div class="form-group">
			                        <label for="jobname">参数</label>
			                        <table id="job-param-table" class="table table-striped table-bordered bootstrap-datatable">
				                        <thead>
											<tr>
												<th style="width: 45%">Key</th>
												<th style="width: 45%">Value</th>
												<th style="width: 10%"><a id="job-param-plus" class="btn btn-success" href="#">+
												</a></th>
											</tr>
										</thead>
										<tbody>
										</tbody>
			                        </table>
			                    </div>
							</form>
						</div>
						<div class="modal-footer">
							<a id="job-define-cancel" href="#" class="btn btn-default" data-dismiss="modal">取消</a> <a id="job-define-submit"  href="#" class="btn btn-primary" data-dismiss="modal">保存</a>
						</div>
					</div>
				</div>
			</div>
			<%@include file="/jsp/public/foot.jsp"%>
		</div>
	</div>
	<!--/.fluid-container-->
	<%@ include file="/jsp/public/include-js.jsp"%>
</body>
</html>
