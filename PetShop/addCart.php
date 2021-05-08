<?php session_start(); ?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Giỏ hàng</title>
        <br>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/styleCart.css" >
         <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    </head>
    <body>
<div style="background-image:url(image/home_banner.jpg);
    height:180px;
    width: 1000px;
    overflow: auto;
    background-size:cover;
    background-position:center center;
    margin-bottom: 5px;
    "></div>


    <div id="menu">
        <ul>
            <li>
                <a href="index.php"><img src="image/pet-house.png" width="15px"> Trang Chủ</a>
            </li>

            <li>
                <a href="#">Mua bán chó</a>
                <ul class="sub-menu">
                    <a href="#">Chó Pug</a>
                    <a href="">Chó Puddle</a>
                    <a href="">Golden-Labrator</a>
                    <a href="">Husky</a>
                    <a href="">Chó Chihuahua</a>    
                </ul>
            </li>
                
            <li>
                <a href="#">Mua bán mèo</a>
                <ul class="sub-menu">
                     <a href="#">Mèo Xiêm</a>
                      <a href="#">Mèo Anh Lông Dài</a>
                      <a href="#">Mèo Anh Lông Ngắn</a>
                      <a href="#">Mèo Ba Tư</a>
                      <a href="#">Mèo Mỹ</a>    
                </ul>
            </li>

            <li>
                <a href="#">Tặng - Tìm</a>
                <ul class="sub-menu">
                     <a href="#">Cho Tặng Thú Cưng</a>
                     <a href="#">Tìm Kiếm Pet Thất Lạc</a>   
                </ul>
            </li>

            <li>
                <a href="#">Phối Giống</a>
            </li>
            <li>
               <a href=""><img src="image/petFood.png" width="15"> Đăng nhập</a>
            </li>
            
            <li>
                <a href="hoadon.php"> &#128722; Giỏ hàng</a>
            </li>
        </ul>
    </div>
<br>
    <body>
        <?php
        
        if (empty($_SESSION['current_user'])) {
            echo "<script>alert('Mời bạn đăng nhập để sử dụng chức năng!');
                location.href='Sign-In-Sign-Up-Form/index.html'</script>";
        } 
        include './config.php';
        if (!isset($_SESSION["cart"])) {
            $_SESSION["cart"] = array();
        }
        $user_name = $_SESSION['current_user'];
         $user1 = mysqli_query($conn, "SELECT * FROM `user` WHERE `username` = '$user_name'");
        $rowUser =  mysqli_fetch_array($user1);
                        
        $userID = $rowUser['id'];
        $error = false;
        $success = false;
        if (isset($_GET['action'])) {

            function update_cart($add = false) {
                foreach ($_POST['quantity'] as $id => $quantity) {
                    if ($quantity == 0) {
                        unset($_SESSION["cart"][$id]);
                    } else {
                        if ($add) {
                            $_SESSION["cart"][$id] += $quantity;
                        } else {
                            $_SESSION["cart"][$id] = $quantity;
                        }
                    }
                }
            }

            switch ($_GET['action']) {
                case "add":
                    update_cart(true);
                    header('Location: ./addCart.php');
                    break;
                case "delete":
                    if (isset($_GET['id'])) {
                        unset($_SESSION["cart"][$_GET['id']]);
                    }
                    header('Location: ./addCart.php');
                    break;
                case "submit":
                    if (isset($_POST['update_click'])) { //Cập nhật số lượng sản phẩm
                        update_cart();
                        header('Location: ./addCart.php');
                    } elseif ($_POST['order_click' && !empty($_POST['order_click'])]) { //Đặt hàng sản phẩm
                        if (empty($_POST['name'])) {
                            $error = "Bạn chưa nhập tên của người nhận";
                        } elseif (empty($_POST['phone'])) {
                            $error = "Bạn chưa nhập số điện thoại người nhận";
                        } elseif (empty($_POST['address'])) {
                            $error = "Bạn chưa nhập địa chỉ người nhận";
                        } elseif (empty($_POST['quantity'])) {
                            $error = "Giỏ hàng rỗng";
                        }
                        if ($error == false && !empty($_POST['quantity'])) { //Xử lý lưu giỏ hàng vào db
                            $products = mysqli_query($conn, "SELECT * FROM `post` WHERE `id` IN (" . implode(",", array_keys($_POST['quantity'])) . ")");
                            $total = 0;
                            $orderProducts = array();
                            while ($row = mysqli_fetch_array($products)) {
                                $orderProducts[] = $row;
                                $total += $row['price'] * $_POST['quantity'][$row['id']];
                            }
                            $insertOrder = mysqli_query($conn, "INSERT INTO `orders` (`id`, `userID`, `note`, `total`, `created_time`, `last_updated`) VALUES (NULL, '" . $userID . "', '" . $_POST['note'] . "', '" . $total . "', '" . time() . "', '" . time() . "');");
                            $orderID = $conn->insert_id;
                            $insertString = "";
                            foreach ($orderProducts as $key => $product) {
                                $insertString .= "(NULL, '" . $orderID . "', '" . $product['id'] . "', '" . $_POST['quantity'][$product['id']] . "', '" . $product['price'] . "', '" . time() . "', '" . time() . "')";
                                if ($key != count($orderProducts) - 1) {
                                    $insertString .= ",";
                                }
                            }
                            $insertOrder = mysqli_query($conn, "INSERT INTO `order_detail` (`id`, `order_id`, `post_id`, `quantity`, `price`, `created_time`, `last_updated`) VALUES " . $insertString . ";");
                            $success = "Đặt hàng thành công";
                            unset($_SESSION['cart']);
                        }
                    }
                    break;
            }
        }
        $total = 0;
        if (!empty($_SESSION["cart"])) {

            $products = mysqli_query($conn, "SELECT * FROM `post` WHERE `id` IN (" . implode(",", array_keys($_SESSION["cart"])) . ")");
        }
//        $result = mysqli_query($con, "SELECT * FROM `product` WHERE `id` = ".$_GET['id']);
//        $product = mysqli_fetch_assoc($result);
//        $imgLibrary = mysqli_query($con, "SELECT * FROM `image_library` WHERE `product_id` = ".$_GET['id']);
//        $product['images'] = mysqli_fetch_all($imgLibrary, MYSQLI_ASSOC);
        ?>
        <div class="container">
            <?php if (!empty($error)) { ?> 
                <div id="notify-msg">
                    <?= $error ?>. <a href="javascript:history.back()">Quay lại</a>
                </div>
            <?php } elseif (!empty($success)) { ?>
                <div id="notify-msg">
                    <?= $success ?>. <a href="index.php">Tiếp tục mua hàng</a>
                </div>
            <?php } else { ?>
              
                <h1>Giỏ hàng</h1>
                <br>
                <form id="cart-form" action="addCart.php?action=submit" method="POST">
                    <table>
                        <tr>
                           <!--  <th class="product-number">STT</th> -->
                            <th class="product-name">Giống</th>
                            <th class="product-img">Ảnh sản phẩm</th>
                            <th class="product-name">Đơn giá</th>
                            <th class="product-name">Số lượng</th>
                            <th class="product-name">Thành tiền</th>
                            <th class="product-name">Xóa</th>
                        </tr>
                        <hr>
                        <?php
                        if (!empty($products)) {
                            $total = null;  
                            $total = 0;
                            $num = 1;
                            while ($row = mysqli_fetch_array($products)) {
                                ?>
                                <tr>
                                   <!--  <td class="product-number"><?= $num++; ?></td> -->
                                    <td class="product-kind"><?= $row['kind'] ?></td>
                                    <td class="product-img"><img src="<?= $row['image'] ?>" /></td>
                                    <td class="product-name"><?= number_format($row['price'], 0, ",", ".") ?></td>
                                    <td class="product-quantity"><input type="text" value="<?= $_SESSION["cart"][$row['id']] ?>" name="quantity[<?= $row['id'] ?>]" /></td>
                                    <td class="product-name"><?= number_format($row['price'] * $_SESSION["cart"][$row['id']], 0, ",", ".") ?></td>
                                    <td class="product-name"><a href="addCart.php?action=delete&id=<?= $row['id'] ?>"><img style="width: 25px;" src="admin/assets/icon-trash-black.svg" alt=""></a></td>
                                </tr>
                                <?php
                                $total += $row['price'] * $_SESSION["cart"][$row['id']];
                                $num++;
                            }
                            ?>

                           <!--  <tr id="row-total">
                                <td class="product-number">&nbsp;</td>
                                <td class="product-name">Tổng tiền</td>
                                <td class="product-img">&nbsp;</td>
                                <td class="product-price">&nbsp;</td>
                                <td class="product-quantity">&nbsp;</td>
                                <td class="total-money"><?= number_format($total, 0, ",", ".") ?></td>
                                <td class="product-delete">Xóa</td>
                            </tr> -->
                            
                                
                           
                            
                            <?php
                        }
                       
                        ?>

                    </table> <hr>
                    <div id="form-button">

                       
                        <div id="tongtien">

                                <strong><p>Tổng tiền: <?= number_format($total, 0, ",", ".") ?> đ</p></strong>
                            <br>
                         <!--  <input style="width: 70px; background-color: #ffc700;
                                                margin-top: 10px; float: right;
                                                margin-left: 30px;"
                                  type="submit"  value="Đặt hàng" /> -->
                        <button style="width: 70px; background-color: #ffc700;
                                                margin-top: 10px; float: right;
                                                margin-left: 30px;">
                            <a href="thong-tin-thanh-toan.php">Đặt hàng</a>
                        </button>

                         <input style="width: 70px; background-color: #ffc700;
                                        margin-top: 10px; float: right;"
                          type="submit" name="update_click" value="Cập nhật" />

                                   
                            </div>
                    </div>

                  <!--   <hr>
                    <div><label>Người nhận: </label><input type="text" value='<?= $rowUser['username'] ?>'  name="name" /></div>
                    <div><label>Điện thoại: </label><input type="text" value='<?= $rowUser['sodienthoai'] ?>' name="phone" /></div>
                    <div><label>Địa chỉ: </label><input type="text" value='<?= $rowUser['diachi'] ?>' name="address" /></div>
                    <div><label>Ghi chú: </label><textarea name="note" cols="50" rows="7" ></textarea></div>
                    <input type="submit" name="order_click" value="Đặt hàng" /> -->
                </form>
            <?php } ?>
        </div>

        <div id="footer"><h4>CÔNG TY TNHH DỊCH VỤ THÚ CƯNG TNT VIỆT NAM</h4></div>
        <div id="footer">Giấy ĐKKD số: 0315707307 Do Sở Kế hoạch và Đầu tư Hà Nội cấp lần đầu ngày 29/05/2019</div>
             <div id="footer">Người đại diện: Hứa Mạnh Tuấn</div>
              <div id="footer">Địa chỉ: Lĩnh Nam - Hoàng Mai - Hà nội</div>
         
          
           </div>
           <?php
          include('phonecall.html');
          ?>
    </body>
</html>