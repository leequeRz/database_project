<?php
    session_start();
    require_once '../config/db.php';
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
                <a href="index.php">
                    <i class="ri-logout-box-r-line"></i>
                    <h3>Logout</h3>
                </a>
            </div>
        </aside>

        <!----------------- Main content ----------------->
        <main>
            <h1>Seat</h1>

            <!-- <div class="date">
                <input type="date">
            </div> -->

            <div class="recent-orders">
                <h2>Recent Reservation</h2>
                <!-- query ข้อมูลจาก db -->
                <table>
                    <thead>
                        <tr>
                            <th>Reserve ID</th>
                            <th>User ID</th>
                            <th>Seat ID</th>
                            <th>Seat Type</th>
                            <th>Reservation Time</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php

                            $select = mysqli_query($conn, "SELECT * FROM seat_reserve sr, seat_type st, user_action ua WHERE sr.seat_type_id = st.seat_type_id AND sr.reserve_id = ua.reserve_id");

                            while($row = mysqli_fetch_assoc($select)) {

                            if(isset($_GET['delete'])) {
                                $id = $_GET['delete'];
                                mysqli_query($conn, "DELETE FROM seat_reserve WHERE reserve_id = $id");
                                header('location:seat.php');
                            }
                            ?>

                            <tr>
                                <td><?php echo $row['reserve_id']; ?></td>
                                <td><?php echo $row['user_id']; ?></td>
                                <td><?php echo $row['seat_id']; ?></td>
                                <td class="primary"><?php echo $row['seat_type_name']; ?></td>
                                <td><?php echo $row['reserve_time']; ?></td>
                                <td><a href="seat.php?delete=<?php echo $row['reserve_id']; ?>" class="button-delete">Delete</a></td>
                            </tr>

                        <?php }; ?>
                    </tbody>
                </table>
            </div>
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
                        <p>Hey, <b>Username</b></p>
                        <small class="text-muted">Admin</small>
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