<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản phẩm</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.5.0/css/all.min.css">
</head>

<body>
<div class="page-wrapper">
    <div class="intro text-center">
        <div class="title-page">Tất cả dự án</div>
        <div class="row">
            <div class="col-xs-12 a-left">
                <ul class="desc-intro">
                    <li class="home">
                        <a href="./ViewHome.html"><span style="color:#fff">Trang chủ</span></a>
                        <span class="mx-1" style="color:#fff"> / </span>
                    </li>
                    <li class="intro-item"><span>Tất cả sản phẩm</span></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- SEARCH  -->
    <div class="search">
        <div class="container">
            <div class="row justify-content-center">
                <form:form id="listForm1" method="get" action="/san-pham" modelAttribute="modelSearch">
                    <div class="row align-items-end gx-3">
                        <div class="col-md-3">
                            <p class="search-text">Tên đường</p>
                            <form:input class="form-control" path="street" />
                        </div>
                        <div class="col-md-3">
                            <p class="search-text">Sức chứa</p>
                            <form:input class="form-control" path="maxSize" />
                        </div>
                        <div class="col-md-3 search-item">
                            <p class="search-text ">Chọn quận/huyện</p>
                            <form:select path="district" class="form-control">
                                <form:option value="">---Chọn quận---</form:option>
                                <form:options items="${districts}"/>
                            </form:select>
                        </div>
                        <div class="col-md-3 search-item">
                            <p class="search-text ">Chọn trạng thái</p>
                            <form:select path="status" class="form-control">
                                <form:option value="">---Chọn trạng thái---</form:option>
                                <form:options items="${hotelStatus}"/>
                            </form:select>
                        </div>
                        <div class="col-12 d-flex justify-content-center mt-3">
                            <button class="search-btn-text pb-0" type="button" id="btnSearchHotel1">
                                <i class="fa-solid fa-magnifying-glass search-btn-icon"></i>
                                <span>Tìm kiếm nhanh</span>
                            </button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>

    <!-- CONTENT  -->
    <div class="product mt-5">
        <div class="container">
            <div class="row">
                <c:forEach var="hotel" items="${hotelSearchResponses}">
                    <div class="col-12 col-md-4 mb-3 d-flex">
                        <div class="product1 vip d-flex flex-column ">
                            <div class="product1-image new"></div>

                            <div class="product1-conntent d-flex flex-column">
                            <div class="product1-conntent-header">
                                <a href="">${hotel.name}</a>
                            </div>
                            <span class="product1-conntent-title">Dự án Sky Park Residence số 3 Tôn Thất Thuyết đang
                                    trong quá trình hoàn thiện để đáp ứng tiến độ bàn giao nhà trong năm 2018. Khách
                                    hàng có thể thăm quan và giám sát trực tiếp chất lương công trình cũng như thưởng
                                    ngoạn tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu Giấy.
                            </span>
                            <ul class="product1-conntent-list mt-auto">
                                <li class="product1-conntent-item">
                                    <i class="fa-solid fa-location-dot"></i>
                                    <span>Địa chỉ: ${hotel.address}</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <i class="fa-solid fa-earth-asia"></i>
                                    <span>Hạng: ${hotel.level}</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <i class="fa-solid fa-earth-asia"></i>
                                    <span>Diện tích: ${hotel.floorArea} m2</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <i class="fa-solid fa-earth-asia"></i>
                                    <span>Sức chứa: ${hotel.maxSize} người</span>
                                </li>
                                <li class="product1-conntent-item">
                                    <i class="fa-solid fa-earth-asia"></i>
                                    <span>Trạng thái: ${hotelStatus[hotel.status]}</span>
                                </li>
                            </ul>
                        </div>
                         <div class="product1-footer ">
                            <span class="product1-footer-cost">${hotel.description}</span>
                                <button class="product1-footer-detail"><a href="./ChiTiet.html" style="color:#fff">Xem
                                chi
                                tiết</a></button>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>

        <!-- TIEN TRINH  -->
            <div class="container text-center">
            <div class="shop-pag text-xs-right mt-5">
                <nav class="text-center">
                    <ul class="pagination clearfix justify-content-center">
                        <li class="page-item disabled"><a class="page-link" href="#">«</a></li>
                        <li class="active page-item disabled"><a class="page-link" href="javascript:;">1</a></li>
                        <li class="page-item"><a class="page-link" onclick="doSearch(2)" href="javascript:;">2</a>
                        </li>
                        <li class="page-item"><a class="page-link" onclick="doSearch(2)" href="javascript:;">»</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- FOOTER  -->
            <footer class="footer">
            <div class="container">
                <div class="top-footer text-center mt-0">
                    <div class="logo logo-footer pt-5">
                        <div class="item-footer mt-5">
                            <div class="row">
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_maps.png?1676257083798" alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Trụ sở chính</p>
                                        <p class="desc-footer">141 Chiến Thắng, Thanh Trì, TP Hà Nội</p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_phone.png?1676257083798 alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Hotline</p>
                                        <p class="desc-footer"><a class="a-text" href="#">098828</a></p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_email.png?1676257083798g" alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Email</p>
                                        <p class="desc-footer"><a class="a-text" href="#">vsh@gmail.com</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <div class="border-bottom mb-5 mt-4"></div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <<script>
    $(document).ready(function () {
        $('#btnSearchHotel1').click(function (e) {
            e.preventDefault();
            $('#listForm1').submit();
        });
    });
</script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>

</html>