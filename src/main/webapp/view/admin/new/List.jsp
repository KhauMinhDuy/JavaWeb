<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Danh Sach Bai Viet</title>
</head>
<body>
<div class="main-content">
    <form action="${pageContext.request.contextPath}/admin-new" id="formSubmit" method="get">
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <em class="ace-icon fa fa-home home-icon"></em>
                        <a href="#">Home</a>
                    </li>
                </ul>
            </div>
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <caption>List</caption>
                                        <thead>
                                        <tr>
                                            <th scope="col">Tên Bài Viết</th>
                                            <th scope="col">Mô tả ngắn</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>abc</td>
                                            <td>xyz</td>
                                        </tr>
                                        <tr>
                                            <td>abc</td>
                                            <td>xyz</td>
                                        </tr>
                                        <tr>
                                            <td>abc</td>
                                            <td>xyz</td>
                                        </tr>
                                        <tr>
                                            <td>abc</td>
                                            <td>xyz</td>
                                        </tr>
                                        <tr>
                                            <td>abc</td>
                                            <td>xyz</td>
                                        </tr>
                                        <tr>
                                            <td>abc</td>
                                            <td>xyz</td>
                                        </tr>
                                        <tr>
                                            <td>abc</td>
                                            <td>xyz</td>
                                        </tr>
                                        <tr>
                                            <td>abc</td>
                                            <td>xyz</td>
                                        </tr>
                                        <tr>
                                            <td>abc</td>
                                            <td>xyz</td>
                                        </tr>
                                        <tr>
                                            <td>abc</td>
                                            <td>xyz</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <ul class="pagination" id="pagination"></ul>
                                    <input type="hidden" value="" name="startPage" id="startPage">
                                    <input type="hidden" value="" name="visiblePages" id="visiblePages">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<script>

    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: 10,
            visiblePages: 5,
            startPage: 1,
            onPageClick: function (event, page) {

            }
        });
    });
</script>
</body>
</html>



