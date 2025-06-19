<%--
  Created by IntelliJ IDEA.
  User: Nguyen Truong An
  Date: 5/19/2025
  Time: 9:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>Thông tin khách sạn</title>
</head>
<body>

<div class="main-content" style="font-family: 'Times New Roman', Times, serif;">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try { ace.settings.check('breadcrumbs', 'fixed') } catch (e) { }
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>
                    <li class="active">Dashboard</li>
                </ul><!-- /.breadcrumb -->
            </div>

            <div class="page-content">
                <div class="page-header">
                    <h1>
                        Thông tin khách sạn
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            overview &amp; stats
                        </small>
                    </h1>
                </div><!-- /.page-header -->
            </div><!-- /.page-content -->
            <div class="row">
                <div class="col-xs-12">
                    <form:form class="form-horizontal" role="form" id="form-edit" action="/admin/hotel-edit" method="get" modelAttribute="hotelEdit">
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Tên khách sạn</label>
                            <div class="col-xs-5">
                                    <form:input class="form-control" path="name"/>
                                    <span class="error-message" style="color: red" id="name"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Quận</label>
                            <div class="col-xs-3">
                                <form:select path="district" class="form-control">
                                    <form:option value="">---Chọn quận---</form:option>
                                    <form:options items="${districts}"/>
                                </form:select>
                                <span class="error-message" style="color: red" id="district"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Phường</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="ward"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Đường</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="street"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Diện tích sàn</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="floorArea"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Giá thuê</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="rentPrice"/>
                                <span class="error-message" style="color: red" id="rentPrice"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Mô tả giá</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="description"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label"></label>
                            <div class="col-xs-9">
                                <c:if test="${not empty hotelEdit.id}">
                                    <button type="button" class="btn btn-warning" id="btnAddHotel">
                                        Sửa tòa nhà
                                    </button>
                                </c:if>
                                <c:if test="${empty hotelEdit.id}">
                                    <button type="button" class="btn btn-primary" id="btnAddHotel">
                                        Thêm tòa nhà
                                    </button>
                                </c:if>
                                <a href="/admin/hotel-list">
                                    <button type="button" class="btn btn-danger">
                                        Hủy thao tác
                                    </button>
                                </a>
                                <input type="hidden" id="id" value="${hotelEdit.id}"></input>
                            </div>
                        </div>
                    </form:form>
                </div>

            </div>
        </div>
</div><!-- /.main-container -->
<script>
    var ok;
    function validateDataHotel(json){
        $('.error-message').html('');
        if (json['name'] == '') {
            ok = 0;
            $('#name').after('<span class="error-message" style="color: red">Tên không được bỏ trống</span>')
        }
        if (json['district'] == '') {
            ok = 0;
            $('#district').after('<span class="error-message" style="color: red">Quận không được bỏ trống</span>')
        }
        if (json['rentPrice'] == '') {
            ok = 0;
            $('#rentPrice').after('<span class="error-message" style="color: red">Giá thuê không được bỏ trống và phải lớn hơn 5</span>')
        }
    }
    $('#btnAddHotel').click(function () {
        var formData = $('#form-edit').serializeArray();
        var json = {};
        $.each(formData, function (i, it) {
                json["" + it.name + ""] = it.value;
        });
        json['id'] = $('#id').val();
        ok = 1;
        validateDataHotel(json);
        if(ok==0){
            alert('Failed');
        }else{
            if(json['id'] == ''){
                addHotel(json);
            }else{
                updateHotel(json);
            }

        }

        console.log(json)
    });

    function addHotel(json) {
        // gui request xuong server => ajax
        $.ajax({
            type: "POST",
            url: "http://localhost:8081/api/hotels",
            data: JSON.stringify(json),
            dataType: "json",
            contentType: "application/json",
            success: function (response) {
                console.log('success');
                alert(response.message)
            },
            error: function (response) {
                console.log('fail');
                alert(response.message);
            },
        })
    }
    function updateHotel(json) {
        // gui request xuong server => ajax
        $.ajax({
            type: "PUT",
            url: "http://localhost:8081/api/hotels",
            data: JSON.stringify(json),
            dataType: "json",
            contentType: "application/json",
            success: function (response) {
                console.log('success');
                alert(response.message)
            },
            error: function (response) {
                console.log('fail');
                alert(response.message);
            },
        })
    }
</script>
</body>
</html>
