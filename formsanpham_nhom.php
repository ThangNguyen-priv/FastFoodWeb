
<link href="quantri/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="quantri/css/sb-admin-2.min.css" rel="stylesheet">
<?php include "headerquantri.php";
include "function_nhomsanpham.php";
$nhomsanpham = new nhomsanpham();
if(isset($_POST['tbOk'])){
    $nhomsanpham->id=isset($_POST['id']) ? $_POST['id'] : '';
    $nhomsanpham->tennhom=isset($_POST['tennhom']) ? $_POST['tennhom'] : '';
    $nhomsanpham->ghichu=isset($_POST['ghichu']) ? $_POST['ghichu'] : '';
   
    $nhomsanpham->insert();

   
}
?>
<style>
    body {
    font-family: 'Nunito', sans-serif;
    background-color: #FFCCCC; /* Màu nền */
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
textarea:hover,
select:hover {
    border-color: #4e73df;
    box-shadow: 0 0 5px rgba(78, 115, 223, 0.5);
}

input[type="text"]:focus,
textarea:focus,
select:focus {
    border-color: #4e73df;
    box-shadow: 0 0 5px rgba(78, 115, 223, 0.7);
    outline: none;
}
</style>

<div class="container" >
    <h1>Thêm vào danh mục</h1>
    <form action="" method="post">
        <div class="form-group">
            <label for="tensp">Mã:</label>
            <input type="text" class="form-control" id="id" name="id" required>
        </div>
        <div class="form-group">
            <label for="tensp">Tên loại sản phẩm:</label>
            <input type="text" class="form-control"  name="tennhom" required>
        </div>
        <div class="form-group">
            <label for="soluong">Ghi Chú:</label>
            <input type="text" class="form-control" name="ghichu" >
        </div>
       
<button type="submit" class="btn btn-primary" name="tbOk">Chấp nhận</button>
    </form>
</div>
</body>
</html> 
