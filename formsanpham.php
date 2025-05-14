
<link href="quantri/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="quantri/css/sb-admin-2.min.css" rel="stylesheet">
<?php
   include "headerquantri.php";
   include "function_sanpham.php";
   
 
   ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <style>
        .container h2,
        label {
            color: black;
        }
        body {
    font-family: 'Nunito', sans-serif;
    background-color: #FFCCCC;
    color: #333;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 600px;
    margin: 30px auto;
    background-color: #fff;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    border-radius: 5px;
}

h1 {
    text-align: center;
    color: #4e73df;
    font-weight: 700;
}

.form-group {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 15px;
}

.form-group label {
    color: #333;
    font-weight: 600;
    flex: 1;
    margin-right: 15px;
    text-align: right;
}

.form-group input[type="text"],
.form-group input[type="number"],
.form-group input[type="file"],
.form-group textarea,
.form-group select {
    flex: 2;
    padding: 8px;
    font-size: 15px;
    border: 1px solid #ddd;
    border-radius: 5px;
    transition: all 0.3s ease;
}

textarea.form-control {
    resize: none;
}

.form-check-label {
    font-weight: 500;
    color: #333;
}

.form-check {
    margin-left: 0;
}

.form-check-input {
    margin-left: 0;
    margin-right: 10px;
}

.btn-primary {
    background-color: #4e73df;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
}

.btn-primary:hover {
    background-color: #2e59d9;
}

input[type="text"]:hover,
input[type="number"]:hover,
input[type="file"]:hover,
textarea:hover,
select:hover {
    border-color: #4e73df;
    box-shadow: 0 0 5px rgba(78, 115, 223, 0.5);
}

input[type="text"]:focus,
input[type="number"]:focus,
input[type="file"]:focus,
textarea:focus,
select:focus {
    border-color: #4e73df;
    box-shadow: 0 0 5px rgba(78, 115, 223, 0.7);
    outline: none;
}
    </style>
</head>

<body>
<?php

   $sanpham = new sanpham();
   $result_nhom= $sanpham->hienthinhom();
   if(isset($_POST['tbOk'])){
       $sanpham->masanpham = isset($_POST['masp']) ? $_POST['masp'] : '';
       $sanpham->nhomid= isset($_POST['nhom_id']) ? $_POST['nhom_id'] : '';
       $sanpham->tensanpham = isset($_POST['tensp']) ? $_POST['tensp'] : '';
       $sanpham->mota= isset($_POST['mota']) ? $_POST['mota'] : '';
       $sanpham->dongiacu = isset($_POST['dongiacu']) ? $_POST['dongiacu'] : '';
       $sanpham->dongiamoi = isset($_POST['dongiamoi']) ? $_POST['dongiamoi'] : '';
       $sanpham->enable = isset($_POST['enable']) ? $_POST['enable'] : 0;
       $sanpham->ghichu = isset($_POST['ghichu']) ? $_POST['ghichu'] : '';
       $sanpham->diemnoibat = isset($_POST['diemnoibat']) ? $_POST['diemnoibat'] : '';
       $sanpham->xuatxu= isset($_POST['xuatxu']) ? $_POST['xuatxu'] : '';
       $sanpham->ngaydang = isset($_POST['ngaydang']) ? $_POST['ngaydang'] : '';
       $sanpham->nguoidang = isset($_POST['nguoidang']) ? $_POST['nguoidang'] : '';
       $sanpham->themsanpham();

   }
   ?>


    <div class="container">
    <h1>Thêm Sản Phẩm</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="email">Nhóm Sản Phẩm:</label>
            <select class="form-control" id="nhom_id" name="nhom_id">
                <?php while ($row_nhom = mysqli_fetch_assoc($result_nhom)) { ?>
                    <option value="<?php echo $row_nhom["id"] ?>">
                        <?php echo $row_nhom["tennhom"] ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="form-group">
            <label for="masp">Mã Sản Phẩm:</label>
            <input type="text" class="form-control" name="masp" required>
        </div>
        <div class="form-group">
            <label for="tensp">Tên Sản Phẩm:</label>
            <input type="text" class="form-control" name="tensp" required>
        </div>
        <div class="form-group">
            <label for="mota">Mô Tả:</label>
            <textarea type="text" rows="5" class="form-control" name="mota"></textarea>
        </div>
        <div class="form-group">
            <label for="dongia">Đơn Giá Cũ:</label>
            <input type="number" class="form-control" name="dongiacu">
        </div>
        <div class="form-group">
            <label for="dongia">Đơn Giá Mới:</label>
            <input type="number" class="form-control" name="dongiamoi">
        </div>
        <div class="form-group">
            <label for="img">Ảnh 1:</label>
            <input type="file" class="form-control-file border" name="img1">
       
        </div>
        <div class="form-group">
            <label for="img">Ảnh 2:</label>
            <input type="file" class="form-control-file border" name="img2">
       
        </div>
        <div class="form-group">
            <label for="img">Ảnh 3:</label>
            <input type="file" class="form-control-file border" name="img3">
       
        </div>
        <div class="form-group">
            <label for="img">Ảnh 4:</label>
            <input type="file" class="form-control-file border" name="img4">
       
        </div>
        <div class="form-group">
            <label for="ghichu">Ghi Chú:</label>
            <textarea type="text" rows="3" class="form-control" name="ghichu"></textarea>
        </div>
        <div class="form-group">
            <label for="ghichu">Điểm Nổi Bât:</label>
            <textarea type="text" rows="3" class="form-control" name="diemnoibat"></textarea>
        </div>
        <div class="form-group">
            <label for="tensp">Xuất Xứ:</label>
            <input type="text" class="form-control" name="xuatxu" >
        </div>
        <div class="form-group">
            <label for="tensp">Ngày Đăng:</label>
            <input type="text" class="form-control" name="ngaydang" >
        </div>
        <div class="form-group">
            <label for="tensp">Người Đăng:</label>
            <input type="text" class="form-control" name="nguoidang" >
        </div>
        <div class="form-group form-check">
            <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="enable" value="1" checked> Hiển Thị
            </label>
        </div>
        <button type="submit" class="btn btn-primary" name="tbOk">Chấp nhận</button>
    </form>
</div>
</body>