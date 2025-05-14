
<?php include "headerquantri.php"; ?>
<?php

include "function_taikhoan.php";
$taikhoan = new taikhoan();
$result = $taikhoan->hienthi();
$count = mysqli_num_rows($result);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        body{
            height: 100vh;
        }
        .container{
            background-color: rgb(255, 207, 245);
            padding-bottom: 10px;
            height: 100vh;
        }
        .container th,.container tr,.container h2,.container  td{
            color: black;
            border-color: black;
        }
        .container th{
            text-align: center;
            background-color: #79d1d8;
            border-color: black !important;
        }
        .container h2{
            text-align: center;
            width: 100%;
            padding-top: 10px;
            font-weight: 700;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            font-size: 30px;
        }
        .container td{
            background-color: white;
        }
        .container button:hover{
        background-color:  #79d1d8;
        color: black;

        }
        .container button{
            border-radius: 7px; 
            margin-left: 10px;
            margin-top: 10px;
            font-size: 15px;
        }

        .table{
            padding: 0px 50px 0px 250px;
            font-size: 22px;
        }
        th,td{
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="example">
        <div class="container">
            <div class="row">
                <h2>Quản Lý Tài Khoản </h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Tên Đăng Nhập</th>
                            <th>Mật Khẩu</th>
                            <th>Họ Tên</th>
                            <th>Email</th>
                            <th>Địa chỉ</th>
                            <th>Số điện thoại</th>
                            <th>Enable</th>
                            <th> </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if ($count > 0) {
                            while ($row = mysqli_fetch_assoc($result)) { ?>
                                            <tr>
                                                <td>
                                                    <?PHP echo $row["tendangnhap"] ?>
                                                </td>
                                                <td>
                                                    <?PHP echo $row["matkhau"] ?>
                                                </td>
                                                <td>
                                                    <?PHP echo $row["hoten"] ?>
                                                </td>
                                                <td>
                                                    <?PHP echo $row["email"] ?>
                                                </td>
                                                <td>
                                                    <?PHP echo $row["diachi"] ?>
                                                </td>
                                                <td>
                                                    <?PHP echo $row["sdt"] ?>
                                                </td>
                                                <td>
                                                    <?PHP echo $row["enable"] ?>
                                                </td>
                                                <td>
                                                    <a href="suataikhoan.php?tendangnhap=<?PHP echo $row["tendangnhap"] ?>" style="text-decoration: none">Sửa</a>
                                                    <a href="xoaform.php?tendangnhap=<?PHP echo $row["tendangnhap"] ?>" style="text-decoration: none">Xóa</a>
                                                </td>

                                            </tr>
                           
                                        <?PHP
                            }
                        } ?> 
                    </tbody>
                </table>
              <button>  <a href="form.php" style="text-decoration: none; color: black; ">Thêm Tài Khoản</a></button>
            </div>
        </div>

    </div>
</body>

</html>