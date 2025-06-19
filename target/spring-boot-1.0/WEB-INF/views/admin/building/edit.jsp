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
    <title>Thông tin tòa nhà</title>
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
                        Thông tin tòa nhà
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            overview &amp; stats
                        </small>
                    </h1>
                </div><!-- /.page-header -->
            </div><!-- /.page-content -->
            <div class="row">
                <div class="col-xs-12">
                    <form:form class="form-horizontal" role="form" id="form-edit" action="/admin/building-edit" method="get" modelAttribute="buildingEdit">
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Tên tòa nhà</label>
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
                            <label class="col-xs-3 control-label">Kết cấu</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="structure"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Số tầng hầm</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="numberOfBasement"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Diện tích sàn</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="floorArea"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Hướng</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="direction"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Hạng</label>
                            <div class="col-xs-5">
                               <form:input class="form-control" path="level"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Diện tích thuê</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="rentArea"/>
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
                                <form:input class="form-control" path="rentPriceDescription"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Phí dịch vụ</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="serviceFee"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Phí ô tô</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="carFee"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Phí mô tô</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="motoFee"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Phí ngoài giờ</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="overtimeFee"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Tiền điện</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="electricityFee"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Tiền nước</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="waterFee"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Đặt cọc</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="deposit"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Thanh toán</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="payment"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Thời hạn thuê</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="rentTime"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Thời gian trang trí</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="decorationTime"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Tên quản lí</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="managerName"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">SĐT quản lí</label>
                            <div class="col-xs-5">
                                <form:input class="form-control" path="managerPhone"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label">Loại tòa nhà</label>
                            <div class="col-xs-5">
                                <form:checkboxes path="typeCode" items="${types}" />
                                <span class="error-message" style="color: red" id="typeCodeError"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-3 control-label"></label>
                            <div class="col-xs-9">
                                <c:if test="${not empty buildingEdit.id}">
                                    <button type="button" class="btn btn-warning" id="btnAddBuilding">
                                        Sửa tòa nhà
                                    </button>
                                </c:if>
                                <c:if test="${empty buildingEdit.id}">
                                    <button type="button" class="btn btn-primary" id="btnAddBuilding">
                                        Thêm tòa nhà
                                    </button>
                                </c:if>
                                <a href="/admin/building-list">
                                    <button type="button" class="btn btn-danger">
                                        Hủy thao tác
                                    </button>
                                </a>
                                <input type="hidden" id="id" value="${buildingEdit.id}"></input>
                            </div>
                        </div>
                    </form:form>
                </div>

            </div>
        </div>
</div><!-- /.main-container -->
<script>
    var ok;
    function validateDataBuilding(json){
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
        if (json['typeCode'].length == 0) {
            ok = 0;
            $('#typeCodeError').html('Loại tòa nhà không được bỏ trống');
        }
    }
    $('#btnAddBuilding').click(function () {
        var formData = $('#form-edit').serializeArray();
        var json = {};
        var typeCode = [];
        $.each(formData, function (i, it) {
            if (it.name != 'typeCode') {
                json["" + it.name + ""] = it.value;
            } else {
                typeCode.push(it.value);
            }
        });
        json['typeCode'] = typeCode;
        json['id'] = $('#id').val();
        ok = 1;
        validateDataBuilding(json);
        if(ok==0){
            alert('Failed');
        }else{
            if(json['id'] == ''){
                addBuilding(json);
            }else{
                updateBuilding(json);
            }

        }

        console.log(json)
    });

    function addBuilding(json) {
        // gui request xuong server => ajax
        $.ajax({
            type: "POST",
            url: "http://localhost:8081/api/buildings",
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
    function updateBuilding(json) {
        // gui request xuong server => ajax
        $.ajax({
            type: "PUT",
            url: "http://localhost:8081/api/buildings",
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
