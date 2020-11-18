<%@include file="/common/taglib.jsp" %>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/css/bootstrap.min.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/template/admin/font-awesome/4.5.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/css/fonts.googleapis.com.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/css/ace.min.css"
          class="ace-main-stylesheet" id="main-ace-style"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/css/ace-part2.min.css"
          class="ace-main-stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/admin/css/ace-ie.min.css"/>
    <script src="${pageContext.request.contextPath}/template/admin/js/jquery-2.1.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/template/admin/js/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/template/admin/js/jquery.twbsPagination.min.js"></script>
    <script src="${pageContext.request.contextPath}/template/admin/js/jquery.twbsPagination.js"></script>
    <title><decorator:title default="Admin Home"/></title>
</head>
<body class="no-skin">
<%@include file="/common/admin/header.jsp" %>
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.loadState('main-container')
        } catch (e) {
            console.log(e);
        }
    </script>
    <%@ include file="/common/admin/menu.jsp" %>
    <decorator:body/>
    <%@ include file="/common/admin/footer.jsp" %>
    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <em class="ace-icon fa fa-angle-double-up icon-only bigger-110"></em>
    </a>
</div>
<script src="${pageContext.request.contextPath}/template/admin/js/ace-extra.min.js"></script>
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.request.contextPath}/template/admin/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="${pageContext.request.contextPath}/template/admin/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/js/excanvas.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/js/jquery-ui.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/js/jquery.ui.touch-punch.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/js/jquery.easypiechart.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/js/jquery.sparkline.index.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/js/jquery.flot.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/js/jquery.flot.pie.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/js/jquery.flot.resize.min.js"></script>
<!-- ace scripts -->
<script src="${pageContext.request.contextPath}/template/admin/js/ace-elements.min.js"></script>
<script src="${pageContext.request.contextPath}/template/admin/js/ace.min.js"></script>
</body>
</html>
