
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="css/main.css">

</head>
<body>

    <div class="wrapper">
        <div class="container">
            <div class="dashboard">
                <div class="left">
                    <span class="left__icon">
                        <span></span>
                        <span></span>
                        <span></span>
                    </span>
                    <div class="left__content">
                      <!--   <div class="left__logo">LOGO</div> -->
                        <div class="left__profile">
                            <div class="left__image"><img src="assets/pet-house-with-a-dog.png" alt=""></div>
                            <p class="left__name">Pet Shop</p>
                        </div>
                        <ul class="left__menu">
                            <li class="left__menuItem">
                                <a href="index.html" class="left__title"><img src="assets/icon-dashboard.svg" alt="">Dashboard</a>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-tag.svg" alt="">Sản Phẩm<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="insert_product.html">Thêm Sản Phẩm</a>
                                    <a class="left__link" href="view_product.html">Xem Sản Phẩm</a>
                                </div>
                            </li>
                        <!--     <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-edit.svg" alt="">Danh Mục SP<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="insert_p_category.html">Chèn Danh Mục</a>
                                    <a class="left__link" href="view_p_category.html">Xem Danh Mục</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-book.svg" alt="">Thể Loại<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="insert_category.html">Chèn Thể Loại</a>
                                    <a class="left__link" href="view_category.html">Xem Thể Loại</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-settings.svg" alt="">Slide<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="insert_slide.html">Chèn Slide</a>
                                    <a class="left__link" href="view_slides.html">Xem Slide</a>
                                </div>
                            </li> -->
                            <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-book.svg" alt="">Coupons<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="insert_coupon.html">Chèn Coupon</a>
                                    <a class="left__link" href="view_coupons.html">Xem Coupons</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <a href="view_customers.html" class="left__title"><img src="assets/icon-users.svg" alt="">Khách Hàng</a>
                            </li>
                            <li class="left__menuItem">
                                <a href="view_orders.html" class="left__title"><img src="assets/icon-book.svg" alt="">Đơn Đặt Hàng</a>
                            </li>
                          <!--   <li class="left__menuItem">
                                <a href="edit_css.html" class="left__title"><img src="assets/icon-pencil.svg" alt="">Chỉnh CSS</a>
                            </li> -->
                            <li class="left__menuItem">
                                <div class="left__title"><img src="assets/icon-user.svg" alt="">Admin<img class="left__iconDown" src="assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="insert_admin.html">Thêm Admin</a>
                                    <a class="left__link" href="view_admins.html">Xem Admins</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <a href="" class="left__title"><img src="assets/icon-logout.svg" alt="">Đăng Xuất</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="right">
                    <div class="right__content">
                        <div class="right__title">Bảng điều khiển</div>
                        <p class="right__desc">Xem sản phẩm</p>
                        <div class="right__table">
                            <div class="right__tableWrapper">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Tiêu Đề</th>
                                            <th>Hình ảnh</th>
                                            <th>Giá SP</th>
                                            <th>Giống</th>
                                            <th>Tuổi</th>
                                            <th>Địa chỉ</th>
                                            <th>Thời gian tạo</th>
                                            <th>Cập nhật</th>

                                            <th>Sửa</th>
                                            <th>Xoá</th>
                                        </tr>
                                    </thead>

                <?php
                $stt = 0;
                while ($row = mysqli_fetch_array($products)) {
                    $stt ++;
                ?>
                     <tbody>
                        <tr>
                            <td>$stt</td>
                            <td><?= $row['title'] ?></td>
                            <td><?= $row['image'] ?></td>
                            <td><?= $row['price'] ?></td>
                            <td><?= $row['kind'] ?></td>
                            <td><?= $row['age'] ?></td>
                            <td><?= $row['address'] ?></td>
                            <td><?= $row['created_time'] ?></td>
                            <td><?= $row['last_updated'] ?></td>
                            <td data-label="Sửa" class="right__iconTable"><a href=""><img src="assets/icon-edit.svg" alt=""></a></td>
                            <td data-label="Xoá" class="right__iconTable"><a href=""><img src="assets/icon-trash-black.svg" alt=""></a></td>
                        </tr>
                    </tbody>
                 <?php } ?>
                                <!--     <tbody>
                                        <tr>
                                            <td data-label="STT">1</td>
                                            <td data-label="Tên sản phẩm">Dada Dress</td>
                                            <td data-label="Hình ảnh"><img src="images/product1.jpg" alt=""></td>
                                            <td data-label="Giá SP">590.000 ₫</td>
                                            <td data-label="Đã bán">1</td>
                                            <td data-label="Từ khoá">dress, vay</td>
                                            <td data-label="Thời gian">2020-07-13 21:31:05</td>
                                            <td data-label="Sửa" class="right__iconTable"><a href=""><img src="assets/icon-edit.svg" alt=""></a></td>
                                            <td data-label="Xoá" class="right__iconTable"><a href=""><img src="assets/icon-trash-black.svg" alt=""></a></td>
                                        </tr>
                                        <tr>
                                            <td data-label="STT">2</td>
                                            <td data-label="Tên sản phẩm">Cobi Top, Tuta Skirt</td>
                                            <td data-label="Hình ảnh"><img src="images/product2.jpg" alt=""></td>
                                            <td data-label="Giá SP">810.000 ₫</td>
                                            <td data-label="Đã bán">0</td>
                                            <td data-label="Từ khoá">top skirt</td>
                                            <td data-label="Thời gian">2020-07-13 22:19:01</td>
                                            <td data-label="Sửa" class="right__iconTable"><a href=""><img src="assets/icon-edit.svg" alt=""></a></td>
                                            <td data-label="Xoá" class="right__iconTable"><a href=""><img src="assets/icon-trash-black.svg" alt=""></a></td>
                                        </tr>
                                        <tr>
                                            <td data-label="STT">3</td>
                                            <td data-label="Tên sản phẩm">Beda Dress</td>
                                            <td data-label="Hình ảnh"><img src="images/product3.jpg" alt=""></td>
                                            <td data-label="Giá SP">590.000 ₫</td>
                                            <td data-label="Đã bán">1</td>
                                            <td data-label="Từ khoá">dress, vay</td>
                                            <td data-label="Thời gian">2020-07-13 21:30:41</td>
                                            <td data-label="Sửa" class="right__iconTable"><a href=""><img src="assets/icon-edit.svg" alt=""></a></td>
                                            <td data-label="Xoá" class="right__iconTable"><a href=""><img src="assets/icon-trash-black.svg" alt=""></a></td>
                                        </tr>
                                    </tbody> -->
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="js/main.js"></script>
</body>
</html>
