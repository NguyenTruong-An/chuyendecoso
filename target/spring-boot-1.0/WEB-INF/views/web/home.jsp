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
    <title>Trang chủ</title>
</head>

<body>
<div class="page-wrapper">
    <div class="">
        <!-- HEADER -->
        <%--<header>--%>
            <%--<!-- Begin menu  -->--%>
            <%--<div class="p-4">--%>
                <%--<div class="row navbar">--%>
                    <%--<div class="col-12 col-md-3">--%>
                        <%--<div class="logo">--%>
                            <%--<a href="">--%>
                                <%--<img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/logo.png?1676257083798"--%>
                                     <%--alt="">--%>
                            <%--</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="col-12 col-md-6">--%>
                        <%--<div class="item-menu">--%>
                            <%--<div class="nav nav1">--%>
                                <%--<div class="nav-item p-2">--%>
                                    <%--<a class="nav-item-link" href="">--%>
                                        <%--<span style="color: var(--primary-color);">Trang chủ</span>--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                                <%--<div class="nav-item p-2">--%>
                                    <%--<a href='<c:url value='/gioi-thieu'/>'>--%>
                                        <%--<span>Giới thiệu</span>--%>
                                        <%--&lt;%&ndash;<span style="color: var(--primary-color);">Giới thiệu</span>&ndash;%&gt;--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                                <%--<div class="nav-item p-2">--%>
                                    <%--&lt;%&ndash;<a class="nav-item-link" href="./Duan.html">&ndash;%&gt;--%>
                                        <%--<a href='<c:url value='/san-pham'/>'>--%>
                                        <%--<span>Sản phẩm</span>--%>
                                        <%--&lt;%&ndash;<span style="color: var(--primary-color);">Sản phẩm</span>&ndash;%&gt;--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                                <%--<div class="nav-item p-2">--%>
                                    <%--&lt;%&ndash;<a class="nav-item-link" href="./TinTuc.html">&ndash;%&gt;--%>
                                        <%--<a href='<c:url value='/tin-tuc'/>'>--%>
                                        <%--<span>Tin tức</span>--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                                <%--<div class="nav-item p-2">--%>
                                    <%--<a href='<c:url value='/lien-he'/>'>--%>
                                        <%--<span>Liên hệ</span>--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="nav-login col-12 col-md-3">--%>
                        <%--<button class="btn btn-primary px-4">--%>
                            <%--<a style="color:#fff;" href="/login">Đăng nhập</a>--%>
                        <%--</button>--%>
                        <%--<button class="btn btn-primary px-4">--%>
                            <%--Đăng ký--%>
                        <%--</button>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<!-- End menu  -->--%>
        <%--</header>--%>
        <!-- SLIDESHOW -->
        <div class="container-fluid">
            <div class="p-0">
                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                                class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div><img src="https://du-lich.chudu24.com/f/m/2207/08/khach-san-lamor-boutique-9.jpg?w=800&h=500" alt="">
                            </div>
                            <div class="carousel-caption d-none d-md-block">
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="img-slideshow"><img src="https://media.tapchitaichinh.vn/images/upload/hoangthuviet/04202019/bat-dong-san.jpg"
                                                            alt=""></div>
                            <div class="carousel-caption d-none d-md-block">
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="https://richnguyen.vn/wp-content/uploads/2020/08/buc-anh-bat-dong-san-dep-2.jpg" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- SEARCH -->
<%--        <div class="search">--%>
<%--            <div class="container">--%>
<%--                <div class="row justify-content-center">--%>
<%--                    <div class="col-12 col-md-3">--%>
<%--                        <div class="search-item">--%>
<%--                            <p class="search-text">Chọn tỉnh/thành phố</p>--%>
<%--                            <select class="search-option" name="search-option" id="search-option">--%>
<%--                                <option value>- Tỉnh/thành phố</option>--%>
<%--                                <option value="">TP.Hà Nội</option>--%>
<%--                            </select>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-12 col-md-3">--%>
<%--                        <div class="search-item">--%>
<%--                            <p class="search-text">Chọn quận/huyện</p>--%>
<%--                            <select class="search-option" name="search-option" id="search-option">--%>
<%--                                <option value>--Chọn quận--</option>--%>
<%--                                <c:forEach var="item" items="${districts}">--%>
<%--                                    <option value="">${item.value}</option>>--%>
<%--                                        &lt;%&ndash;<td>${item.value}</td>&ndash;%&gt;--%>
<%--                                </c:forEach>--%>
<%--                            </select>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-12 col-md-3 ">--%>
<%--                        <div class="search-btn">--%>
<%--                            <button class="search-btn-text">--%>
<%--                                <i class="fa-solid fa-magnifying-glass search-btn-icon text-primary"></i>--%>
<%--                                <span >Tìm kiếm nhanh</span>--%>
<%--                            </button>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
        <!-- CONTENT 1  -->
        <div class="content">
            <div class="content-title">
                <div class="title-cover">
                    <span id="title1">Khách sạn nổi bật</span>
                    <span id="title2">Tổng hợp các khách sạn tại Hà Nội</span>
                </div>
            </div>
            <div class="content-product ">
                <div class="container">
                    <div class="content1 justify-content-center">
                        <div class="row">
                            <div class="col-12 col-md-4">
                                <div class="product1 vip">
                                    <div class="product1-image new"></div>

                                    <div class="product1-conntent">
                                        <div class="product1-conntent-header">
                                            <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                        </div>
                                        <span class="product1-conntent-title">Dự án Sky Park Residence số 3 Tôn Thất
                                                Thuyết đang
                                                trong quá trình hoàn thiện để đáp ứng tiến độ bàn giao nhà trong năm
                                                2018.
                                                Khách
                                                hàng có thể thăm quan và giám sát trực tiếp chất lương công trình cũng
                                                như
                                                thưởng
                                                ngoạn tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu Giấy.</span>
                                        <ul class="product1-conntent-list">
                                            <li class="product1-conntent-item">
                                                <i class="fa-solid fa-location-dot"></i>
                                                <span>Số 03 Tôn Thất thuyết</span>
                                            </li>
                                            <li class="product1-conntent-item">
                                                <i class="fa-solid fa-building"></i>
                                                <span>Loại BĐS: Chung cư</span>
                                            </li>
                                            <li class="product1-conntent-item">
                                                <i class="fa-solid fa-earth-asia"></i>
                                                <span>Diện tích: 78m2 - 146m2</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product1-footer">
                                        <span class="product1-footer-cost">1 Tỷ</span>
                                        <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                                  style="color:#fff">Xem chi
                                            tiết</a></button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="product1 hot">
                                    <div class="product1-image new"></div>
                                    <div class="product1-conntent">
                                        <div class="product1-conntent-header">
                                            <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                        </div>
                                        <span class="product1-conntent-title">Dự án Sky Park Residence số 3 Tôn Thất
                                                Thuyết đang
                                                trong quá trình hoàn thiện để đáp ứng tiến độ bàn giao nhà trong năm
                                                2018.
                                                Khách
                                                hàng có thể thăm quan và giám sát trực tiếp chất lương công trình cũng
                                                như
                                                thưởng
                                                ngoạn tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu Giấy.</span>
                                        <ul class="product1-conntent-list">
                                            <li class="product1-conntent-item">
                                                <i class="fa-solid fa-location-dot"></i>
                                                <span>Số 03 Tôn Thất thuyết</span>
                                            </li>
                                            <li class="product1-conntent-item">
                                                <i class="fa-solid fa-building"></i>
                                                <span>Loại BĐS: Chung cư</span>
                                            </li>
                                            <li class="product1-conntent-item">
                                                <i class="fa-solid fa-earth-asia"></i>
                                                <span>Diện tích: 78m2 - 146m2</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product1-footer">
                                        <span class="product1-footer-cost">2,5 Tỷ</span>
                                        <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                                  style="color:#fff">Xem chi
                                            tiết</a></button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="product1 vip">
                                    <div class="product3-image new"></div>
                                    <div class="product1-conntent">
                                        <div class="product1-conntent-header">
                                            <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                        </div>
                                        <span class="product1-conntent-title">Dự án Sky Park Residence số 3 Tôn Thất
                                                Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến độ bàn giao nhà
                                                trong năm
                                                2018. Khách
                                                hàng có thể thăm quan và giám sát trực tiếp chất lương công trình cũng
                                                như
                                                thưởng
                                                ngoạn tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu Giấy.</span>
                                        <ul class="product1-conntent-list">
                                            <li class="product1-conntent-item">
                                                <i class="fa-solid fa-location-dot"></i>
                                                <span>Số 03 Tôn Thất thuyết</span>
                                            </li>
                                            <li class="product1-conntent-item">
                                                <i class="fa-solid fa-building"></i>
                                                <span>Loại BĐS: Chung cư</span>
                                            </li>
                                            <li class="product1-conntent-item">
                                                <i class="fa-solid fa-earth-asia"></i>
                                                <span>Diện tích: 78m2 - 146m2</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product1-footer">
                                        <span class="product1-footer-cost">2,5 Tỷ</span>
                                        <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                                  style="color:#fff">Xem chi
                                            tiết</a></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- CONTENT 2 - NEW  -->
        <div class="content3">
            <div class="container">
                <div class="text-center">
                    <a class="content3-title" href="">Khách sạn mới nhất</a>
                </div>
                <div class="content3-product justify-content-center">
                    <div class="row">
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>

                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>
                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>

                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>

                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- CONTENT 3 - HOT -->
        <div class="content3">
            <div class="container">
                <div class="text-center">
                    <a class="content3-title" href="">Khách sạn xem nhiều</a>
                </div>
                <div class="content3-product justify-content-center">
                    <div class="row">
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>

                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>
                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>

                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-3">
                            <div class="product2">
                                <div class="product1-image"></div>

                                <div class="product1-conntent">
                                    <div class="product1-conntent-header">
                                        <a href="">Căn hộ chung cư tại Sky Park Residence</a>
                                    </div>
                                    <span class="product1-conntent-title">Dự án Sky Park Residence số 3
                                            Tôn Thất Thuyết đang trong quá trình hoàn thiện để đáp ứng tiến
                                            độ bàn giao nhà trong năm 2018. Khách hàng có thể thăm quan và
                                            giám sát trực tiếp chất lương công trình cũng như thưởng ngoạn
                                            tầm view tuyệt đẹp ra hai công viên lớn nhất quận Cầu
                                            Giấy.</span>
                                    <ul class="product1-conntent-list">
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-location-dot"></i>
                                            <span>Số 03 Tôn Thất thuyết</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-building"></i>
                                            <span>Loại BĐS: Chung cư</span>
                                        </li>
                                        <li class="product1-conntent-item">
                                            <i class="fa-solid fa-earth-asia"></i>
                                            <span>Diện tích: 78m2 - 146m2</span>
                                        </li>
                                    </ul>
                                </div>

                                <div class="product1-footer">
                                    <span class="product1-footer-cost">2,5 Tỷ</span>
                                    <button class="product1-footer-detail"><a href="./ChiTiet.html"
                                                                              style="color:#fff">Xem chi
                                        tiết</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- FOOTER  -->
        <footer class="footer">
            <div class="container-fluid">
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
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_phone.png?1676257083798" alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Hotline</p>
                                        <p class="desc-footer"><a class="a-text" href="#">098828</a></p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_email.png?1676257083798" alt="">
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

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>

</html>