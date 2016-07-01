//将一个表单的数据返回成JSON对象  
(function($) {
	var job_def_option = "<a class='btn btn-success' href='#'> <i class='glyphicon glyphicon-zoom-in icon-white'></i>参数</a> <a class='btn btn-info' href='#'> <i class='glyphicon glyphicon-edit icon-white'></i>触发器</a> <a class='btn btn-danger' href='#'> <i class='glyphicon glyphicon-trash icon-white'></i>删除</a>";
	$.fn.serializeObject = function() {
		var o = {};
		var a = this.serializeArray();
		$.each(a, function() {
			if (o[this.name]) {
				if (!o[this.name].push) {
					o[this.name] = [ o[this.name] ];
				}
				o[this.name].push(this.value || '');
			} else {
				o[this.name] = this.value || '';
			}
		});
		return o;
	};
	// 菜单点击事件
	$("a[class='ajax-link']").click(function() {
		alert(this.href);
	});

	// 绑定 创建任务 按钮点击事件
	$("#create-job-def").click(function(e) {
		e.preventDefault();
		$('#job-edit').modal('show');
	});

	// 创建任务编辑中，增加参数按钮点击事件绑定
	$("#job-param-plus")
			.click(
					function() {
						var obj = '<tr><td><input type="jobparam" class="form-control" name="jobkey" placeholder="key"></td><td><input type="jobparam" class="form-control" name="jobvalue" placeholder="value"></td><td class="center"><a onclick="removejobparam(this)" class="btn btn-danger btn-job-param-minus" href="#">-</a></td></tr>';
						$("#job-param-table").children("tbody").append(obj);
					});

	// 创建任务编辑中，取消按钮点击事件绑定
	$("#job-define-cancel").click(function() {
		$("#job-param-table tbody").children("tr").remove();
	});
	//datatable
    var dt = $('.datatable').DataTable({
        "sDom": "<'row'<'col-md-6'l><'col-md-6'f>r>t<'row'<'col-md-12'i><'col-md-12 center-block'p>>",
        "sPaginationType": "bootstrap",
        "oLanguage": {
            "sLengthMenu": "_MENU_ records per page"
        }
    });
	console.log("tabledata============="+dt.row);

	$("#job-define-submit")
			.click(
					function() {
						var aa = $('#job-define-form').serializeObject();
						var paramObj = $('#job-define-form').serializeObject();
						var param = JSON.stringify(paramObj);
						console.log("data=======" + param);
						$.ajax({
									type : 'POST',
									contentType : 'application/json',
									url : webRoot + "/job/define/create",
									data : param,
									success : function(result) {
										alert(result);
										$('.datatable').DataTable().row
												.add([ paramObj.jobname,
														paramObj.jobdec,
														paramObj.jobclass,
														"<span class='label-success label label-default'>Active</span>",
														job_def_option]).draw( false );;
									}
								});
					});

})(jQuery);

function removejobparam(aObj) {
	$(aObj).parent().parent().remove();
}
