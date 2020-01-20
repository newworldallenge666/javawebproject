<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String context = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>添加医生</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/transition.js"></script>
<script src="js/collapse.js"></script>
<script src="js/ie-emulation-modes-warning.js"></script>
<script type="text/javascript" src="js/dropdown.js"></script>
</head>
<script type="text/javascript">
        function imgPreview(fileDom) {
            //判断是否支持FileReader
            if (window.FileReader) {
                var reader = new FileReader();
            } else {
                alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
            }
            //获取文件
            var file = fileDom.files[0];
            var imageType = /^image\//;
            //是否是图片
            if (!imageType.test(file.type)) {
                alert("请选择图片！");
                return;
            }
            //读取完成
            reader.onload = function (e) {
                //获取图片dom
                var img = document.getElementById("preview");
                //图片路径设置为读取的图片
                img.src = e.target.result;
            };
            reader.readAsDataURL(file);
        }
        
    </script>
    
<body>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong><span class="icon-pencil-square-o"></span> 添加医生信息</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="addDoctor" enctype="multipart/form-data">
				<div class="form-group">
					<div class="label">
						<label>医生工号</label>
					</div>
					<div class="field">
						<input type="text" name="dNumber" style="width: 25%; float: left;" class="input"
							 value="" />
						<div class="tipss"><font color="red">*必填项</font></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>医生照片</label>
					</div>
					<div class="field">
						<input type="file" id="image" name="image" class="tips"
							style="width: 25%; float: left;" value="" data-toggle="hover"
							data-place="right" data-image=""onchange="imgPreview(this)" /> 
							
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>医生姓名：</label>
					</div>
					<div class="field">
						<input type="text" name="name"  style="width: 25%; float: left;" class="input"
							value="" />
							<div class="tipss"><font color="red">*必填项</font></div>
					</div>
					
				</div>
				<div class="form-group">
					<div class="label">
						<label>初始密码：</label>

					</div>
					<div class="field">
						<input type="text" name="dPwd" style="width: 25%; float: left;" class="input"
							 value="" />
						<div class="tipss"><font color="red">*必填项</font></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>所属科室：</label>
					</div>
					<div class="field">
				
						<select name="cNumber"  class="input w50">
								<c:forEach items="${department}" var="department">
								<option value="${department.cNumber }">${department.dName}</option>
							</c:forEach>
						</select>
						
						<div class="tipss"><font color="red">*必填项</font></div>
					</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>医生描述：</label>
						</div>
						<div class="field">
							<textarea class="input" name="dInfo" style="width: 50%; float: left value=""></textarea>
							<div class="tips"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>职称：</label>
						</div>
						<div class="field">
							<input type="text" class="input" name="dResume"  style="width: 25%; float: left; value="" />
							<div class="tipss"><font color="red">*必填项</font></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>联系方式：</label>
						</div>
						<div class="field">
							<input type="text" name="dTel" class="input" style="width: 25%; float: left;  value="" />
							<div class="tipss"><font color="red">*必填项</font></div>
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label>email：</label>
						</div>
						<div class="field">
							<input type="text" class="input" name="dEmail" style="width: 25%; float: left; value="" />
							<div class="tipss"><font color="red">*必填项</font></div>
						</div>
					</div>
					<div class="field" align="center">
						<button class="button bg-main icon-check-square-o" type="submit">
							提交</button>
					</div>
				</div>
			</form>
		</div>
</body>
</html>