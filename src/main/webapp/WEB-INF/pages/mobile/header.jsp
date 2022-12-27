<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="header">
        <div class="header-nav" style="margin-left: 12%">
            <div class="grid wide no-margin">
                <div class="row">
                    <div class="col l-4 m-12 c-12">
                        <div class="header-nav__item">
                            <span>Bạn đang xem giá, tồn kho tại: </span>
                            <span class="header-nav__location">
                                Quảng Nôm
                                <i class="header-nav__icon-down fas fa-chevron-down"></i>
                                <ul class="header-nav__areas-list">
                                    <li class="header-nav__area-name">Hồ Chí Minh</li>
                                    <li class="header-nav__area-name">Hà Nội</li>
                                    <li class="header-nav__area-name">Quảng Nôm</li>
                                </ul>
                            </span>
                        </div>
                    </div>
                    <!-- <div class="col l-4 m-0 c-0">
                        <div class="header-nav__item">
                            <p class="header-nav__info">
                                Hotline: 
                                <span class="header-nav__info-address">
                                    HN: 0969.120.120 - SG: 0965.123.123 - ĐN: 096.123.9797 - CSKH Online 037.462.9999 - 096.539.7966
                                </span>
                            </p>
                        </div>
                    </div> -->
                    <div class="col l-4 l-o-4 m-0 c-0">
                        <div class="header-nav__item">
                            <ul class="header-nav__logs-list">
                                <li class="header-nav__log-item">
                                    <a href="#" class="header-nav__log-link">Tra cứu bảo hành</a>
                                </li>
                                <li class="header-nav__log-item">
                                	<c:if test="${kh == null }">
                                		 <a href="/MobileCity/Account/login" class="header-nav__log-link">Đăng nhập</a>
                                	</c:if>
                                   <c:if test="${kh != null }">
                                		 <a  class="header-nav__log-link"> ${kh.hoten }</a>
                                	</c:if>
                                </li>
                                <li class="header-nav__log-item">
                                    <c:if test="${kh != null }">
                                    	<a href="/MobileCity/Account/logout" class="header-nav__log-link">Đăng xuất</a>
                                    </c:if>
                                    <c:if test="${kh == null }">
                                    	<a href="/MobileCity/Account/register" class="header-nav__log-link">Tạo tài khoản</a>
                                    </c:if>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="header-with-search">
            <div class="grid wide">
                <div class="header-with-search__wrap">
                    <!-- Mobile menu button -->
                    <div class="header-mobile-menu display-on-mobile-and-tablet">
                        <i class="header-mobile-menu__icon fas fa-bars"></i>
                    </div>

                    <a href="#" class="header-logo__link">
                        <div class="header-logo__img"></div>
                    </a>

                    <div class="header-search hide-on-mobile-and-tablet">
                        <form style="width: 100%" action="/MobileCity/mobile">
                            <input style="width: 85%" type="text" name="value" placeholder="Nhập tên sản phẩm..." class="header-search__input">
                           <button style="background: white; border: none"><i class="header-search__icon fas fa-search"> </i></button>
                        </form>
                    </div>

                    <ul class="header-menu hide-on-mobile-and-tablet">
                        
                        <!-- Menu Mobile -->
                        <li class="header-menu__item">
                            <a href="/MobileCity/mobile" class="header-menu__item-link">     		
                                <i class="header-menu__item-icon fas fa-mobile-alt"></i>
                                <p class="header-menu__item-name">Điện thoại</p>
                            </a>

                            <div class="header-sub-menu">
                                <div class="grid">
                                    <div class="row">
                                        <div class="col l-9 m-9">
                                            <h3 class="header-sub-menu__title">Hãng sản xuất</h3>
                                            <div class="row">
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Apple
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Samsung
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            OnePlus
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Xiaomi
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Oppo
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Vivo
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            ZTE (Nubia)
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Asus
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Nokia
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            LG
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Google
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Vsmart
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Meizu
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Sony
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            BlackBerry
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Lenovo
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Bkav
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Huawei
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Smartisan
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Meiigoo
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col l-3 m-4">
                                            <h3 class="header-sub-menu__title">Mức giá</h3>
                                            <div class="row">
                                                <div class="col l-12">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Dưới 1 triệu
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-12">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Dưới 2 triệu
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-12">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Dưới 3 triệu
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-12">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Dưới 5 triệu
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-12">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Dưới 8 triệu
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-12">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Dưới 10 triệu
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-12">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Trên 10 triệu
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col l-12 m-12">
                                            <div class="header-sub-menu__ranking">
                                                <i class="header-sub-menu__ranking-icon fas fa-trophy"></i>
                                                <a href="#" class="header-sub-menu__ranking-title">Xếp hạng điện thoại</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <!-- Menu Tablet -->
                        <li class="header-menu__item">
                            <a href="" class="header-menu__item-link">
                                <i class="header-menu__item-icon fas fa-tablet-alt"></i>
                                <p class="header-menu__item-name">Tablet</p>
                            </a>

                            <div class="header-sub-menu">
                                <div class="grid">
                                    <div class="row">
                                        <div class="col l-9 m-9">
                                            <h3 class="header-sub-menu__title">Hãng sản xuất</h3>
                                            <div class="row">
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Apple
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Samsung
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col l-3 m-3">
                                            <h3 class="header-sub-menu__title">Mức giá</h3>
                                            <div class="row">
                                                <div class="col l-12 m-12">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Dưới 1 triệu
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-12 m-12">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Dưới 2 triệu
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-12 m-12">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Dưới 3 triệu
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-12 m-12">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Dưới 5 triệu
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-12 m-12">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Dưới 8 triệu
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-12 m-12">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Dưới 10 triệu
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-12 m-12">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Trên 10 triệu
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col l-12 m-12">
                                            <div class="header-sub-menu__ranking">
                                                <i class="header-sub-menu__ranking-icon fas fa-trophy"></i>
                                                <a href="#" class="header-sub-menu__ranking-title">Xếp hạng điện thoại</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <!-- Menu Tool -->
                        <li class="header-menu__item">
                            <a href="" class="header-menu__item-link">
                                <i class="header-menu__item-icon fas fa-headphones-alt"></i>
                                <p class="header-menu__item-name">Phụ kiện</p>
                            </a>

                            <div class="header-sub-menu header-sub-menu--m-size">
                                <div class="grid">
                                    <div class="row">
                                        <div class="col l-12 m-12">
                                            <h3 class="header-sub-menu__title">Loại phụ kiện</h3>
                                            <div class="row">
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Loa - Tai nghe
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Đồng hồ thông minh
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Pin - Sạc dự phòng
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Phụ kiện iPhone
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Đồ chơi công nghệ
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Phụ kiện Xiaomi
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Máy lọc không khí
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Phụ kiện Sony
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Phụ kiện Samsung
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Phụ kiện LG
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Phụ kiện Lenovo
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Phụ kiện iPad
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Phụ kiện Meizu
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Phụ kiện BlackBerry
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Phụ kiện Oppo
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Phụ kiện Pisen
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Phụ kiện Mark
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col l-4 m-4">
                                                    <div class="header-sub-menu__item">
                                                        <a href="#" class="header-sub-menu__link">
                                                            <i class="header-sub-menu__icon fas fa-angle-double-right"></i>
                                                            Phụ kiện khác
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <!-- Menu Fix -->
                        <li class="header-menu__item">
                            <a href="/MobileCity/history" class="header-menu__item-link">
                                <i class="header-menu__item-icon fas fa-clock-rotate-left"></i>
                                <p class="header-menu__item-name">Lịch sử</p>
                            </a>

                           
                        </li>

                        <!-- Menu Unlock -->
                        <li class="header-menu__item">
                            <a href="/MobileCity/cart" class="header-menu__item-link">
                                <i class="header-menu__item-icon fas fa-cart-shopping"></i>
                                <p class="header-menu__item-name">Giỏ hàng</p>
                            </a>

                           
                                 
                        </li>

                        <!-- Menu news -->
                        <li class="header-menu__item">
                            <a href="" class="header-menu__item-link">
                                <i class="header-menu__item-icon fas fa-newspaper"></i>
                                <p class="header-menu__item-name">Tin tức</p>
                            </a>
                        </li>
                    </ul>

                    <!-- Button search in mobile -->
                    <div class="header-mobile-search display-on-mobile-and-tablet">
                        <i class="header-mobile-search__icon fas fa-search"></i>
                    </div>

                    <!-- Mobile search input -->
                    <div class="header-mobile-search-box__wrap">
                        <input type="text" placeholder="Nhập tên sản phẩm..." class="header-mobile-search-box__input">
                        <button class="header-mobile-search-box__btn">
                            <i class="header-mobile-search-box__icon fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile and Tablet sub menu -->
        <label class="header-mobile-nav__overlay"></label>

        <nav class="header-mobile-nav">
            <div class="header-mobile-nav__heading">
                <a href="#" class="header-mobile-nav__heading-link">
                    <div class="header-mobile-nav__logo"></div>
                </a>
                <i class="header-mobile-nav__close fas fa-times"></i>
            </div>
            
            <ul class="header-mobile-nav__list">
                <!-- Mobile -->
                <li class="header-mobile-nav__item">
                    <label class="header-mobile-nav__item-select">
                        <i class="header-mobile-nav__icon-open fas fa-chevron-right"></i>
                        Điện thoại
                    </label>
                    
                    <ul class="header-mobile-sub-nav__list" style="--num-row: 8;">
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Apple</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Samsung</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">OnePlus</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Xiaomi</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Oppo</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Vivo</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">ZTE (Nubia)</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Asus</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Nokia</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">LG</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Google</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Vsmart</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Meizu</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Sony</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">BlackBerry</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Lenovo</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Bkav</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Huawei</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Smartisan</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Meiigo</a>
                        </li>
                    </ul>
                </li>

                <!-- Tablet -->
                <li class="header-mobile-nav__item">
                    <label class="header-mobile-nav__item-select">
                        <i class="header-mobile-nav__icon-open fas fa-chevron-right"></i>
                        Tablet
                    </label>
              
                    <ul class="header-mobile-sub-nav__list" style="--num-row: 2;">
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Apple</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Samsung</a>
                        </li>
                    </ul>
                </li>

                <!-- Tool -->
                <li class="header-mobile-nav__item">
                    <label class="header-mobile-nav__item-select">
                        <i class="header-mobile-nav__icon-open fas fa-chevron-right"></i>
                        Phụ kiện
                    </label>
                    
                    <ul class="header-mobile-sub-nav__list" style="--num-row: 8;">
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Loa - Tai nghe</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Đồng hồ thông minh</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Pin - Sạc dự phòng</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Phụ kiện iPhone</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Đồ chơi công nghệ</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Phụ kiện Xiaomi</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Máy lọc không khí</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Phụ kiện Sony</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Phụ kiện Samsung</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Phụ kiện LG</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Phụ kiện Lenovo</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Phụ kiện Ipad</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Phụ kiện Meizu</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Phụ kiện BlackBerry</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Phụ kiện Oppo</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Phụ kiện Pisen</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Phụ kiện Mark</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Phụ kiện khác</a>
                        </li>
                    </ul>
                </li>

                <!-- Fix -->
                <li class="header-mobile-nav__item">
                    <label class="header-mobile-nav__item-select">
                        <i class="header-mobile-nav__icon-open fas fa-chevron-right"></i>
                        Sửa chữa
                    </label>
                    
                    <ul class="header-mobile-sub-nav__list" style="--num-row: 8;">
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">iPhone</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Samsung</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Xiaomi</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Oppo</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Realme</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Honor</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">iPad</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Sony</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">HTC</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">LG</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Asus</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">BlackBerry</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Meizu</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Vivo</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Mobiistar</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Huawei</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Sim ghép iPhone</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Hãng khác</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Linh kiện điện thoại</a>
                        </li>
                    </ul>
                </li>

                <!-- Unlock -->
                <li class="header-mobile-nav__item">
                    <label class="header-mobile-nav__item-select">
                        <i class="header-mobile-nav__icon-open fas fa-chevron-right"></i>
                        Mở khóa
                    </label>
                    
                    <ul class="header-mobile-sub-nav__list" style="--num-row: 4;">
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Unlock iPhone</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Unlock Samsung</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Unlock LG</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Unlock Sony</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Unlock HTC</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Unlock Huawei</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Unlock iPad</a>
                        </li>
                        <li class="header-mobile-sub-nav__item">
                            <a href="#" class="header-mobile-sub-nav__item-link">Unlock Xiaomi</a>
                        </li>
                    </ul>
                </li>

                <!-- News -->
                <li class="header-mobile-nav__item">
                    <a href="#" class="header-mobile-nav__item-select">
                        <i class="header-mobile-nav__icon-open fas fa-chevron-right"></i>
                        Tin tức
                    </a>
                </li>
                
                <li class="header-mobile-nav__item pd-none" style="--num-row: 2;">
                    <a href="#" class="header-mobile-nav__item-link">Liên hệ</a>
                </li>
                <li class="header-mobile-nav__item pd-none">
                    <a href="#" class="header-mobile-nav__item-link">Diễn đàn</a>
                </li>
                <li class="header-mobile-nav__item pd-none">
                    <a href="#" class="header-mobile-nav__item-link">Tra cứu bảo hành</a>
                </li>
                <li class="header-mobile-nav__item pd-none">
                    <a href="#" class="header-mobile-nav__item-link">Đăng nhập</a>
                </li>
                <li class="header-mobile-nav__item pd-none">
                    <a href="#" class="header-mobile-nav__item-link">Đăng xuất</a>
                </li>
            </ul>
        </nav>
    </div>
</body>
</html>
