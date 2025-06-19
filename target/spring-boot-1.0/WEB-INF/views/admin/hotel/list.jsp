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
                    <li class="active">Danh sách khách sạn</li>
                </ul><!-- /.breadcrumb -->
            </div>

            <div class="page-content">
                <div class="page-header">
                    <h1>
                        Danh sách khách sạn
                    </h1>
                </div><!-- /.page-header -->
            </div><!-- /.page-content -->

            <div class="row">
                <div class="col-xs-12">
                    <div class="widget-box">
                        <div class="widget-header">
                            <h4 class="widget-title">Tìm kiếm</h4>

                            <span class="widget-toolbar">

									<a href="/admin/hotel-list" data-action="reload">
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
                                <form:form id="listForm" method="get" action="/admin/hotel-list" modelAttribute="modelSearch">
                                    <div class="row">
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-8">
                                                <label> Tên tòa nhà </label>
                                                    <form:input class="form-control" path="name" />
                                            </div>
                                            <div class="col-xs-4">
                                                <label> Chọn nhân viên </label>
                                                <form:select path="staffId" class="form-control">
                                                    <form:option value="">---Chọn nhân viên---</form:option>
                                                    <form:options items="${staffs}"/>
                                                </form:select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-2">
                                                <label> Quận </label>
                                                    <form:select path="district" class="form-control">
                                                        <form:option value="">---Chọn quận---</form:option>
                                                        <form:options items="${districts}"/>
                                                    </form:select>
                                            </div>
                                            <div class="col-xs-5">
                                                <label> Phường </label>
                                                    <form:input class="form-control" path="ward" />
                                            </div>
                                            <div class="col-xs-5">
                                                <label> Đường </label>
                                                    <form:input class="form-control" path="street" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-3">
                                                <label> Diện tích từ </label>
                                                    <form:input class="form-control" path="floorAreaFrom" />
                                            </div>
                                            <div class="col-xs-3">
                                                <label> Diện tích đến </label>
                                                    <form:input class="form-control" path="floorAreaTo" />
                                            </div>
                                            <div class="col-xs-3">
                                                <label> Giá thuê từ </label>
                                                    <form:input class="form-control" path="rentPriceFrom" />
                                            </div>
                                            <div class="col-xs-3">
                                                <label> Giá thuê đến </label>
                                                    <form:input class="form-control" path="rentPriceTo" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="col-xs-6">
                                                <button type="button" class="btn btn-purple btn-sm"
                                                        id="btnSearchHotel">
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
                        <a href="/admin/hotel-edit">
                            <button class="btn btn-app btn-success btn-xs" title="thêm khách sạn">
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

                        <button class="btn btn-app btn-danger btn-xs" title="xóa khách sạn" id="btnDeleteHotel">
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

            <!-- table list hotel -->
            <div class="row">
                <div class="col-xs-12">
                    <table id="hotelList" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="center">
                                Chọn
                            </th>
                            <th>Tên tòa nhà</th>
                            <th>Địa chỉ</th>
                            <th>Diện tích sàn</th>
                            <th>Mô tả giá</th>
                            <th>Giá thuê</th>
                            <th>Thao tác</th>
                        </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="hotel" items="${hotelSearchResponses}">
                                <tr>
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace" id="idHotel" value="${hotel.id}">
                                            <span class="lbl"></span>
                                        </label>
                                    </td>

                                    <td>${hotel.name}</td>
                                    <td>${hotel.address}</td>
                                    <td>${hotel.floorArea}</td>
                                    <td>${hotel.description}</td>
                                    <td>${hotel.rentPrice}</td>
                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success" onclick="assignmentHotel(${hotel.id})" title="Giao tòa nhà">
                                                <i class="ace-icon fa fa-users"></i>
                                            </button>
                                            <a href="/admin/hotel-edit-${hotel.id}" class="btn btn-xs btn-info" title="Sửa tòa nhà">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                            </a>


                                            <button class="btn btn-xs btn-danger" onclick="deleteHotel(${hotel.id})" title="Xóa tòa nhà">
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
        <div class="modal fade" id="assignmentHotelModal" tabindex="-1" role="dialog"
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
                    <input type="hidden" id="hotelId" value="">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy thao tác</button>
                    <button type="button" class="btn btn-primary" id="btnAssignHotel">Giao tòa nhà</button>
                </div>
            </div>
        </div>
    </div>
        </div><!-- /.main-content -->
        <script>
            function assignmentHotel(hotelId) {
                $('#assignmentHotelModal').modal();
                $('#hotelId').val(hotelId);
                loadStaff(hotelId);
            }
            function loadStaff(hotelId){
                $.ajax({
                    type: "GET",
                    url: "/api/hotels/" + hotelId +'/staffs',
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
            $('#btnAssignHotel').click(function(e){
                e.preventDefault();
                var json = {};
                json['hotelId'] = $('#hotelId').val();
                var staffIds = $('#staffList').find('tbody input[type=checkbox]:checked').map(function(){
                    return $(this).val();
                }).get();
                json['staffs'] = staffIds;
                console.log(json);
                if(json['hotelId'] == ''){
                    alert('ID not found');
                }else{
                    assignHotel(json);
                }
            });
            $('#btnDeleteHotel').click(function(e){
                e.preventDefault();
                var hotelIds = $('#hotelList').find('tbody input[type=checkbox]:checked').map(function(){
                    return $(this).val();
                }).get();
                if(hotelIds == ''){
                    alert('no hotels selected');
                }else{
                    deleteHotels(hotelIds);
                }
            });
            function deleteHotels(ids) {
                // gui request xuong server => ajax
                $.ajax({
                    type: "DELETE",
                    url: "/api/hotels/" + ids,
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
            function assignHotel(json) {
                // gui request xuong server => ajax
                $.ajax({
                    type: "POST",
                    url: "/api/assignment",
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
            function deleteHotel(id){
                if(id == ''){
                    alert('id not found');
                }else{
                    deleteHotels(id);
                }
            }
            $('#btnSearchHotel').click(function (e){
                e.preventDefault();
                $('#listForm').submit();
            });
        </script>
    </body>
</html>
