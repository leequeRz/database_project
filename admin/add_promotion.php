<?php

    session_start();
    require_once '../config/db.php';
    if(!isset($_SESSION['staff_login'])){
        // header('location: index.php');
        echo 'ไม่มีข้อมูล';
    }

    if(isset($_POST['add_product'])) {

        $promotion_id = $_POST['promotion_id'];
        $promotion_discount = $_POST['promotion_discount'];
        $promotion_minimum_cost = $_POST['promotion_minimum_cost'];
        $promotion_expired_date = $_POST['promotion_expired_date'];

        $insert = "INSERT INTO `promotion`(`promotion_id`, `expire_date`, `discount`, `minimum_cost`) VALUES ('$promotion_id','$promotion_expired_date','$promotion_discount','$promotion_minimum_cost')";

        $result = mysqli_query($conn, $insert);

        if($result) {
            $_SESSION['success'] = 'เพิ่มข้อมูลเรียบร้อย';
            header("Loacation: add_promotion.php");
        }
        else {
            $_SESSION['error'] = 'ใส่ข้อมูลไม่ถูกต้อง';
            echo "Failed: " . mysqli_error($conn);
        }
    }
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Dashboard</title>

    <!-- CSS style -->
    <link rel="stylesheet" href="../css/style.css">
        
    <!-- Material icons -->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
    
</head>
<body>
<?php if(isset($_SESSION['error'])) { ?>
        <div class="alert">
        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
            <?php
                echo $_SESSION['error'];
                unset ($_SESSION['error']);
            ?>
        </div>
    <?php  } ?>
    <?php if(isset($_SESSION['success'])) { ?>
        <div class="alert">
        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
            <?php
                echo $_SESSION['success'];
                unset ($_SESSION['success']);
            ?>
        </div>
    <?php  } ?>
    <div class="container">
        <!----------------- Sidebar ----------------->
        <aside>
            <div class="top">
                <div class="logo">
                    <img src="../image/main-logo.png">
                    <h2>ARHERELEE</h2>
                </div>

                <div class="close" id="close-bin">
                    <i class="ri-close-line"></i>
                </div>
            </div>

            <div class="sidebar">
                <a href="home.php">
                    <i class="ri-dashboard-fill"></i>
                    <h3>Dashboard</h3>
                </a>
                <a href="customer.php">
                    <i class="ri-user-3-line"></i>
                    <h3>Customers</h3>
                </a>
                <a href="staff.php">
                    <i class="ri-team-line"></i>
                    <h3>Staff</h3>
                </a>
                <a href="order.php">
                    <i class="ri-file-list-3-line"></i>
                    <h3>Orders</h3>
                </a>
                <a href="product.php">
                    <i class="ri-survey-line"></i>
                    <h3>Products</h3>
                </a>
                <a href="promotion.php">
                    <i class="ri-coupon-3-line"></i>
                    <h3>Promotions</h3>
                </a>
                <a href="seat.php">
                    <span class="material-symbols-outlined">chair</span>
                    <h3>Seat</h3>
                </a>
                <a href="add_product.php">
                    <i class="ri-add-line"></i>
                    <h3>Add Product</h3>
                </a>
                <a href="logout.php">
                    <i class="ri-logout-box-r-line"></i>
                    <h3>Logout</h3>
                </a>
            </div>
        </aside>
        
        <!----------------- Main content ----------------->
        <main>
            <!-- <div class="form-popup" id="myForm"> -->
                  <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post" enctype="multipart/form-data" class="form-container">

                    <h1>Add Promotion</h1>
                    <br>

                    <label for="name"><h2>Promotion ID</h2></label>
                    <input type="text" placeholder="Enter ID" name="promotion_id" required>
                    <label for="price"><h2>Discount</h2></label>
                    <input type="number" placeholder="Enter Discount" name="promotion_discount" required>
                    <label for="price"><h2>Minimum Cost</h2></label>
                    <input type="number" placeholder="Enter Minimum Cost" name="promotion_minimum_cost" required>
                    <label for="expired_date"><h2>Expired Date</h2></label>
                    <br>
                    <input type="date" placeholder="Enter Expired Date" name="promotion_expired_date" required>
                    
                    <br>
                    <br>
                    <br>

                    <button type="submit" class="btn" name="add_product">Add</button>
                    <a href="promotion.php"><button type="button" class="btn cancel" name="cancel">Cancel</button></a>
                </form>
            <!-- </div> -->
        </main>

        <!----------------- Right ----------------->
        <div class="right">
            <div class="top">
                <button id="menu-btn">
                    <i class="ri-menu-line"></i>
                </button>
                <div class="theme-toggler">
                    <i class="ri-sun-fill active"></i>
                    <i class="ri-moon-fill"></i>
                </div>
                <!-- query ชื่อ user จาก db -->
                <div class="profile">
                    <div class="info">
                    <?php 
                    if(isset($_SESSION['staff_login'])){
                        $staff_id = $_SESSION['staff_login'];
                        $select = mysqli_query($conn, "SELECT * FROM staff_info si, staff_position sp WHERE staff_id = $staff_id AND si.position_id = sp.position_id");
                        $row = mysqli_fetch_assoc($select);
                    }
                    ?>
                    <p>Hi!, <b><?php echo $row['staff_firstname'] ?></b></p>
                    <small class="text-muted"><?php echo $row['position_name']?></small>
                    </div>
                    <div class="profile-photo">
                        <img src="../image/profile.jpg">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="../script.js"></script>
</body>
</html>