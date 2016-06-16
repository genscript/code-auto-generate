<!DOCTYPE html><html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache"/>
<meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache"/>
<meta name="description" content="工具"/>
<meta name="keywords" content="工具"/>
<#assign ctxPath=request.contextPath>
<#assign staticPath="${ctxPath}/webstatic">
<title>代碼生成器</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="${staticPath}/css/main.css">
</head>
<body>
<div class="container"  >
<div class="row jumbotron" >
  <form id="uploadForm"  enctype="multipart/form-data">
  <div class="form-group  col-md-offset-5">
     <input name="file" type="file" size="20"  id="file">
     <a href="${staticPath}/excel/template.xlsx">
     <br/>
  	 <img src="${staticPath}/img/excel.png" title="Download template" class="img-thumbnail" height=30px width=30px/></a>
     &nbsp;
     <button type="button" class="btn btn-primary btn-xs"  id="submitBtn" >Submit</button>
    </div>
  </div>
</form>
</div>
</div>
<div class="row codeArea jumbotron" > 
  <p id="code"></p> 
</div>
</div>

</body>
<script type="text/javascript" src="${staticPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${staticPath}/js/jquery.form.js"></script>
<script type="text/javascript" src="${staticPath}/js/main.js"></script>
<script type="text/javascript">
$.ajax({
    url: 'http://sopsit.cnsuning.com/sel/CShopInfo/downLoadImg.action',
    data:{'url':'http://codesit.cnsuning.com/qrcode/buildQrCodeUrlPCWap_68,74,74,70,3a,2f,2f,72,65,73,2e,6d,73,69,74,2e,63,6e,73,75,6e,69,6e,67,2e,63,6f,6d,2f,70,72,6f,6a,65,63,74,2f,6c,61,6e,64,69,6e,67,70,61,67,65,2f,69,6e,64,65,78,5f,31,2e,68,74,6d,6c,3f,75,72,6c,3d,68,74,74,70,25,33,41,25,32,46,25,32,46,73,69,74,73,68,6f,70,2e,73,69,74,2e,63,6e,73,75,6e,69,6e,67,2e,63,6f,6d,25,32,46,25,32,46,37,30,30,35,36,39,38,36,25,32,46,69,6e,64,65,78,2e,68,74,6d,6c,26,75,74,6d,5f,73,6f,75,72,63,65,3d,71,72,63,6f,64,65,26,75,74,6d,5f,6d,65,64,69,75,6d,3d,30,36,26,75,74,6d,5f,63,6f,6e,74,65,6e,74,3d,34,30,30,30,26,75,74,6d,5f,74,65,72,6d,3d,30,31,26,75,74,6d,5f,63,61,6d,70,61,69,67,6e,3d,26,61,64,54,79,70,65,43,6f,64,65,3d,31,30,31,32,26,61,64,49,64,3d,30,30,37,30,30,35,36,39,38,36,26,63,68,61,6e,6e,65,6c,74,79,70,65,3d,30,36,26,73,74,6f,72,65,3d,34,30,30,30,5f,30,31,5f,26,68,61,73,77,61,6b,65,3d,31,26,64,6f,77,6e,6c,6f,61,64,75,72,6c,3d,68,74,74,70,25,33,41,25,32,46,25,32,46,6d,61,70,70,2e,73,75,6e,69,6e,67,2e,63,6f,6d,25,32,46,61,2e,70,68,70,25,33,46,73,25,33,44,71,72,63,6f,64,65,25,32,46,6f,66,66,6c,69,6e,65,25,32,36,66,25,33,44,73,6a,7a,78,6a,25,32,36,70,61,63,6b,25,33,44,63,6f,6d,2e,73,75,6e,69,6e,67,2e,6d,6f,62,69,6c,65,2e,65,62,75,79,26,76,69,65,77,55,72,6c,3d,68,74,74,70,25,33,41,25,32,46,25,32,46,73,68,6f,70,2e,6d,73,69,74,2e,63,6e,73,75,6e,69,6e,67,2e,63,6f,6d,25,32,46,37,30,30,35,36,39,38,36,2e,68,74,6d,6c_jpg_90_000000_68,74,74,70,3a,2f,2f,6d,2e,73,75,6e,69,6e,67,2e,63,6f,6d,2f,52,45,53,2f,77,61,70,2f,56,33,2f,69,6d,61,67,65,73,2f,73,75,6e,69,6e,67,2d,69,63,6f,6e,2d,31,31,34,2d,31,31,34,2e,70,6e,67_-1.jpg'},
    type: 'post',
    dataType:'json',
    timeout: 50000,	
     success: function(msg) {
           },
    error: function(){
    	alert('接口异常,请刷新重试!');
    }
})
</script>
</html>