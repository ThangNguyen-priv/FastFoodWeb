
<link href="quantri/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="quantri/css/sb-admin-2.min.css" rel="stylesheet">
<?php include "headerquantri.php";
include "function_taikhoan.php";
$taikhoan = new taikhoan();
if(isset($_POST['tbOk'])){
   $taikhoan->tendangnhap=isset($_POST['tendangnhap']) ? $_POST['tendangnhap'] : '';
   $taikhoan->matkhau=isset($_POST['matkhau']) ? $_POST['matkhau'] : '';
   $taikhoan->hoten=isset($_POST['hoten']) ? $_POST['hoten'] : '';
   $taikhoan->email=isset($_POST['email']) ? $_POST['email'] : '';
   $taikhoan->email=isset($_POST['diachi']) ? $_POST['diachi'] : '';
   $taikhoan->email=isset($_POST['sdt']) ? $_POST['sdt'] : '';
   $taikhoan->enable=isset($_POST['enable']) ? $_POST['enable'] : 0 ;
   $taikhoan->insert();

   
}
?>
<!DOCTYPE html>
<html lang="en">
    <style>
        body {
    font-family: 'Nunito', sans-serif;
    background-color: #FFCCCC; /* Màu nền mới */
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
.form-group input[type="password"],
.form-group input[type="file"],
textarea,
select {
    flex: 2;
    padding: 8px;
    font-size: 15px;
    border: 1px solid #ddd;
    border-radius: 5px;
    transition: all 0.3s ease;
}

textarea {
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
input[type="password"]:hover,
textarea:hover,
select:hover {
    border-color: #4e73df;
    box-shadow: 0 0 5px rgba(78, 115, 223, 0.5);
}

input[type="text"]:focus,
input[type="password"]:focus,
textarea:focus,
select:focus {
    border-color: #4e73df;
    box-shadow: 0 0 5px rgba(78, 115, 223, 0.7);
    outline: none;
}
    </style>


<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Account</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>
    <style>
     .container h2,label{
          color: black ;
       }

    </style>
</head>
<body>

<div class="container" >
    <h1>Thêm Tài Khoản</h1>
    <form action="" method="post">
        <div class="form-group">
            <label for="email">Tên đăng nhập:</label>
            <input type="text" class="form-control" id="tendangnhap" name="tendangnhap" required>
        </div>
        <div class="form-group">
            <label for="pwd">Mật khẩu:</label>
            <input type="password" class="form-control"  name="matkhau" required>
        </div>
        <div class="form-group">
            <label for="email">Họ tên:</label>
            <input type="text" class="form-control" name="hoten" >
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="text" class="form-control" name="email" >
        </div>
        <div class="form-group">
            <label for="diachi">Địa chỉ:</label>
            <input type="text" class="form-control" name="diachi" >
        </div>
        <div class="form-group">
            <label for="sdt">Số điện thoại:</label>
            <input type="text" class="form-control" name="sdt" >
        </div>
        <div class="form-group form-check">
            <label class="form-check-label">
            <input class="form-check-input" type="checkbox" name="enable" value="1" checked> Kích hoạt </label>
</div>
<button type="submit" class="btn btn-primary" name="tbOk">Chấp nhận</button>
    </form>
</div>
</body>
</html> 
