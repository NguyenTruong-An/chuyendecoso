<%--
  Created by IntelliJ IDEA.
  User: Nguyen Truong An
  Date: 5/18/2025
  Time: 11:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
    <head>
        <title>Danh sách tòa nhà</title>
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
                        Danh sách tòa nhà
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            overview &amp; stats
                        </small>
                    </h1>
                </div><!-- /.page-header -->
            </div><!-- /.page-content -->

            <div class="row">
                <div class="col-xs-12">
                    <div class="widget-box">
                        <div class="widget-header">
                            <h4 class="widget-title">Tìm kiếm</h4>

                            <span class="widget-toolbar">

									<a href="/admin/building-list" data-action="reload">
										<i class="ace-icon fa fa-refresh"></i>
									</a>

									<a href="#" data-action="collapse">
										<i class="ace-icon fa fa-chevron-up"></i>
									</a>

									<a href="#" data-action="close">
										<i class="ace-icon fa fa-times"></i>
									</a>
								</span>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main">
                                <form:form id="listForm" method="get" action="/admin/building-list" modelAttribute="modelSearch">
                                    <div class="row">
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-6">
                                                <label> Tên tòa nhà </label>
<%--                                                <input type="text" name="name" placeholder="tên tòa nhà"--%>
<%--                                                       class="form-control" value="${modelSearch.name}">--%>
                                                    <form:input class="form-control" path="name" />
                                            </div>
                                            <div class="col-xs-6">
                                                <label> Diện tích sàn </label>
<%--                                                <input type="number" name="floorArea" placeholder="diện tích sàn"--%>
<%--                                                       class="form-control" value="${modelSearch.floorArea}">--%>
                                                    <form:input class="form-control" path="floorArea" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-2">
                                                <label> Quận </label>
<%--                                                <select name="district" id="district" class="form-control">--%>
<%--                                                    <option value="">Chọn Quận</option>--%>
<%--                                                    <option value="1">Quận 1</option>--%>
<%--                                                    <option value="2">Quận 2</option>--%>
<%--                                                    <option value="3">Quận 3</option>--%>
<%--                                                    <option value="4">Quận 4</option>--%>
<%--                                                </select>--%>
                                                    <form:select path="district" class="form-control">
                                                        <form:option value="">---Chọn quận---</form:option>
                                                        <form:options items="${districts}"/>
                                                    </form:select>
                                            </div>
                                            <div class="col-xs-5">
                                                <label> Phường </label>
<%--                                                <input type="text" name="ward" placeholder="phường"--%>
<%--                                                       class="form-control" value="${modelSearch.ward}">--%>
                                                    <form:input class="form-control" path="ward" />
                                            </div>
                                            <div class="col-xs-5">
                                                <label> Đường </label>
<%--                                                <input type="text" name="street" placeholder="đường"--%>
<%--                                                       class="form-control" value="${modelSearch.street}">--%>
                                                    <form:input class="form-control" path="street" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-4">
                                                <label> Số tầng hầm </label>
<%--                                                <input type="number" name="numberOfBasement" placeholder="số tầng hầm"--%>
<%--                                                       class="form-control" value="${modelSearch.numberOfBasement}">--%>
                                                    <form:input class="form-control" path="numberOfBasement" />
                                            </div>
                                            <div class="col-xs-4">
                                                <label> Hướng </label>
<%--                                                <input type="text" name="direction" placeholder="hướng"--%>
<%--                                                       class="form-control" value="${modelSearch.direction}">--%>
                                                    <form:input class="form-control" path="direction" />
                                            </div>
                                            <div class="col-xs-4">
                                                <label> Hạng </label>
<%--                                                <input type="number" name="level" placeholder="hạng"--%>
<%--                                                       class="form-control" value="${modelSearch.level}">--%>
                                                    <form:input class="form-control" path="level" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-3">
                                                <label> Diện tích từ </label>
<%--                                                <input type="number" name="areaFrom" placeholder="diện tích từ"--%>
<%--                                                       class="form-control" value="${modelSearch.areaFrom}">--%>
                                                    <form:input class="form-control" path="areaFrom" />
                                            </div>
                                            <div class="col-xs-3">
                                                <label> Diện tích đến </label>
<%--                                                <input type="number" name="areaTo" placeholder="diện tích đến"--%>
<%--                                                       class="form-control" value="${modelSearch.areaTo}">--%>
                                                    <form:input class="form-control" path="areaTo" />
                                            </div>
                                            <div class="col-xs-3">
                                                <label> Giá thuê từ </label>
<%--                                                <input type="number" name="rentPriceFrom" placeholder="giá thuê từ"--%>
<%--                                                       class="form-control" value="${modelSearch.rentPriceFrom}">--%>
                                                    <form:input class="form-control" path="rentPriceFrom" />
                                            </div>
                                            <div class="col-xs-3">
                                                <label> Giá thuê đến </label>
<%--                                                <input type="number" name="rentPriceTo" placeholder="giá thuê đến"--%>
<%--                                                       class="form-control" value="${modelSearch.rentPriceTo}">--%>
                                                    <form:input class="form-control" path="rentPriceTo" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-5">
                                                <label> Tên quản lí </label>
<%--                                                <input type="text" name="managerName" placeholder="tên quản lí"--%>
<%--                                                       class="form-control" value="${modelSearch.managerName}">--%>
                                                    <form:input class="form-control" path="managerName" />
                                            </div>
                                            <div class="col-xs-5">
                                                <label> Số điện thoại quản lí </label>
<%--                                                <input type="text" name="managerPhone" placeholder="số điện thoại quản lí"--%>
<%--                                                        class="form-control" value="${modelSearch.managerPhone}">--%>
                                                    <form:input class="form-control" path="managerPhone" />
                                            </div>
                                            <div class="col-xs-2">
                                                <label> Chọn nhân viên </label>
<%--                                                <select name="staffId" id="staff" class="form-control">--%>
<%--                                                    <option value="">Chọn nhân viên</option>--%>
<%--                                                    <option value="1">Nguyễn Văn A</option>--%>
<%--                                                    <option value="2">Nguyễn Văn B</option>--%>
<%--                                                    <option value="3">Nguyễn Văn C</option>--%>
<%--                                                </select>--%>
                                                <form:select path="staffId" class="form-control">
                                                    <form:option value="">---Chọn nhân viên---</form:option>
                                                    <form:options items="${staffs}"/>
                                                </form:select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-6">
<%--                                                <label class="checkbox-inline">--%>
<%--                                                    <input type="checkbox" name="typeCode" value="nguyen-can">Nguyên căn--%>
<%--                                                </label>--%>
<%--                                                <label class="checkbox-inline">--%>
<%--                                                    <input type="checkbox" name="typeCode" value="noi-that">Nội thất--%>
<%--                                                </label>--%>
<%--                                                <label class="checkbox-inline">--%>
<%--                                                    <input type="checkbox" name="typeCode" value="tang-tret">Tầng trệt--%>
<%--                                                </label>--%>
                                                    <form:checkboxes path="typeCode" items="${types}" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-6">
                                                <button type="button" class="btn btn-purple btn-sm"
                                                        id="btnSearchBuilding">
														<span
                                                                class="ace-icon fa fa-search icon-on-right bigger-110"></span>
                                                    Tìm kiếm
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </form:form>

                            </div>
                        </div>
                    </div>
                    <div class="pull-right">
                        <a href="/admin/building-edit">
                            <button class="btn btn-app btn-success btn-xs" title="thêm tòa nhà">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                     class="bi bi-building-add" viewBox="0 0 16 16">
                                    <path
                                            d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0" />
                                    <path
                                            d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z" />
                                    <path
                                            d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z" />
                                </svg>
                                Add
                            </button>
                        </a>

                        <button class="btn btn-app btn-danger btn-xs" title="xóa tòa nhà" id="btnDeleteBuilding">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-building-dash" viewBox="0 0 16 16">
                                <path
                                        d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1" />
                                <path
                                        d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z" />
                                <path
                                        d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z" />
                            </svg>
                            Del
                        </button>
                    </div>
                </div><!-- /.span -->
            </div>

            <div class="hr hr-20 hr-double"></div>

            <!-- table list building -->
            <div class="row">
                <div class="col-xs-12">
                    <table id="buildingList" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="center">
                                Chọn
                            </th>
                            <th>Tên tòa nhà</th>
                            <th>Địa chỉ</th>
                            <th class="hidden-480">Số tầng hầm</th>

                            <th>Tên quản lí</th>
                            <th class="hidden-480">SĐT quản lí</th>

                            <th>Diện tích sàn</th>
                            <th>Diện tích thuê</th>
                            <th>Diện tích trống</th>
                            <th>Giá thuê</th>
                            <th>Phí dịch vụ</th>
                            <th>Phí môi giới</th>
                            <th>Thao tác</th>
                        </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="building" items="${buildingSearchResponses}">
                                <tr>
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace" id="idBuilding" value="${building.id}">
                                            <span class="lbl"></span>
                                        </label>
                                    </td>

                                    <td>${building.name}</td>
                                    <td>${building.address}</td>
                                    <td>${building.numberOfBasement}</td>
                                    <td>${building.managerName}</td>
                                    <td>${building.managerPhone}</td>
                                    <td>${building.floorArea}</td>
                                    <td>${building.rentArea}</td>
                                    <td></td>
                                    <td>${building.rentPrice}</td>
                                    <td>${building.serviceFee}</td>
                                    <td>${building.brokerageFee}</td>
                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success" onclick="assignmentBuilding(${building.id})" title="Giao tòa nhà">
                                                <i class="ace-icon fa fa-users"></i>
                                            </button>
                                            <a href="/admin/building-edit-${building.id}" class="btn btn-xs btn-info" title="Sửa tòa nhà">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                            </a>


                                            <button class="btn btn-xs btn-danger" onclick="deleteBuilding(${building.id})" title="Xóa tòa nhà">
                                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                            </button>

                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div><!-- /.span -->
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="assignmentBuildingModal" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalLabel" aria-hidden="true" style="font-family: 'Times New Roman', Times, serif;">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Danh sách nhân viên</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <table id="staffList" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="center">
                                <label class="pos-rel">Chọn
                                </label>
                            </th>
                            <th class="center">Tên nhân viên</th>
                        </tr>
                        </thead>

                        <tbody>
                        </tbody>
                    </table>
                    <input type="hidden" id="buildingId" value="">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy thao tác</button>
                    <button type="button" class="btn btn-primary" id="btnAssignBuilding">Giao tòa nhà</button>
                </div>
            </div>
        </div>
    </div>
        </div><!-- /.main-content -->
        <script>
            function assignmentBuilding(buildingId) {
                $('#assignmentBuildingModal').modal();
                $('#buildingId').val(buildingId);
                loadStaff(buildingId);
            }
            function loadStaff(buildingId){
                $.ajax({
                    type: "GET",
                    url: "/api/buildings/" + buildingId +'/staffs',
                    dataType: "json", //expected data response
                    // contentType: "application/json",
                    success: function (response) {
                        var row = '';
                        $.each(response.data, function (index, item){
                            row += '<tr>';
                            row += '<td class = "center"> <input type="checkbox" value=' + item.staffId + ' id="checkbox_' + item.staffId + '" class="center"' + item.checked + '/> </td>';
                            row += '<td class = "center">' + item.fullName + '</td>';
                            row += '</tr>'
                        })
                        $('#staffList tbody').html(row);
                        console.log(row);
                        console.log(response);
                    },
                    error: function (response) {
                        console.log('fail');
                        //alert(response.error);
                    },
                })
            }
            $('#btnAssignBuilding').click(function(e){
                e.preventDefault();
                var json = {};
                json['buildingId'] = $('#buildingId').val();
                var staffIds = $('#staffList').find('tbody input[type=checkbox]:checked').map(function(){
                    return $(this).val();
                }).get();
                json['staffs'] = staffIds;
                console.log(json);
                if(json['buildingId'] == ''){
                    alert('ID not found');
                }else{
                    assignBuilding(json);
                }
            });
            $('#btnDeleteBuilding').click(function(e){
                e.preventDefault();
                var buildingIds = $('#buildingList').find('tbody input[type=checkbox]:checked').map(function(){
                    return $(this).val();
                }).get();
                if(buildingIds == ''){
                    alert('no buildings selected');
                }else{
                    deleteBuildings(buildingIds);
                }
            });
            function deleteBuildings(ids) {
                // gui request xuong server => ajax
                $.ajax({
                    type: "DELETE",
                    url: "/api/buildings/" + ids,
                    // data: JSON.stringify(json),
                    dataType: "json", //expected data response
                    // contentType: "application/json",
                    success: function (response) {
                        alert(response.message);
                    },
                    error: function (response) {
                        alert(response.message);
                    },
                })
            }
            function assignBuilding(json) {
                // gui request xuong server => ajax
                $.ajax({
                    type: "POST",
                    url: "/api/assign",
                    data: JSON.stringify(json),
                    dataType: "json", //expected data response
                    contentType: "application/json",
                    success: function (response) {
                        alert(response.message);
                    },
                    error: function (response) {
                        alert(response.message);
                    },
                })
            }
            function deleteBuilding(id){
                if(id == ''){
                    alert('id not found');
                }else{
                    deleteBuildings(id);
                }
            }
            $('#btnSearchBuilding').click(function (e){
                e.preventDefault();
                $('#listForm').submit();
            });
        </script>
    </body>
</html>
