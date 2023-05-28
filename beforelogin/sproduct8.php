<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Shop</title>
        <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css" rel="stylesheet">

        <link rel="stylesheet" href="style.css">
    </head>

    <body>
        <section id="header">
            <a href="home.php" class="headerlogo">ARHERELEE</a>
            
            <div>
                <ul id="navbar">
                    <li><a href="home.php">HOME</a></li>
                    <li><a class="active" href="shop.php">SHOP</a></li>
                    <!-- <li><a href="blog.php">BLOG</a></li> -->
                    <li><a href="login.php">LOGIN NOW</a></li>
                    <li id="lg-bag"><a href="/cart.php"><i class='bx bx-shopping-bag'></i></a></li>
                    <a href="#" id="close"><i class="fa-solid fa-xmark"></i></a>
                </ul>
            </div>
            <div id="mobile">
                <a href="cart.php"><i class='bx bx-shopping-bag'></i></a>
                <i id="bar" class="fas fa-outdent"></i>
                
            </div>
        </section>

        <section id="prodetails" class="section-p1">
            <div class="single-pro-image">
                <img src="/database_project/img/products/ผัดไทยทะเล.jpeg" width="100%" height="500px" id="MainImg" alt="">
                <!-- <div class="small-img-group">
                    <div class="small-img-col">
                        <img src="/database_project/img/products/f1.jpg" width="100%" class="small-img" alt="">
                    </div>
                    <div class="small-img-col">
                        <img src="/database_project/img/products/f2.jpg" width="100%" class="small-img" alt="">
                    </div>
                    <div class="small-img-col">
                        <img src="/database_project/img/products/f3.jpg" width="100%" class="small-img" alt="">
                    </div>
                    <div class="small-img-col">
                        <img src="/database_project/img/products/f4.jpg" width="100%" class="small-img" alt="">
                    </div>
                </div> -->
            </div>

            <div class="single-pro-details">
                <h7>Thai Food</h7>
                <h4>ผัดไททะเล</h4>
                <h2>70 บาท</h2>
                <!-- <select>
                    <option>select size</option>
                    <option>XL</option>
                    <option>XXL</option>
                    <option>Small</option>
                    <option>Large</option>
                </select> -->
                <input type="number" value="1">
                <button class="normal">ADD TO CART</button>
                <h4>Product detail</h4>
                <span>ผัดไทสูตรเด็ด เจ็ดย่านน้ำ</span>
            </div>
        </section>

        <section id="product1" class="section-p1">
            <h2>Featured Food</h2>
            <p>เมนู Recomment ของทางร้าน</p>
            <div class="pro-container">
                <div class="pro">
                    <img src="/database_project/img/products/ต้มยำกุ้ง.jpg" alt="" onclick="window.location.href='sproduct6.php';">
                    <div class="des">
                        <span>Thai Food</span>
                        <h5>ต้มยำกุ้ง</h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>80 บาท</h4>
                    </div>
                    <a href="sproduct6.php"><i class='bx bx-cart cartbuy'></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct11.php';">
                    <img src="/database_project/img/products/แกงส้มกุ้ง.jpeg" alt="">
                    <div class="des">
                        <span>Thai Food</span>
                        <h5>แกงส้มกุ้ง</h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>70 บาท</h4>
                    </div>
                    <a href="sproduct11.php"><i class='bx bx-cart cartbuy'></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct4.php';">
                    <img src="/database_project/img/products/ข้าวผัดปู.jpg" alt="">
                    <div class="des">
                        <span>Thai Food</span>
                        <h5>ข้าวผัดปู</h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>80 บาท</h4>
                    </div>
                    <a href="sproduct4.php"><i class='bx bx-cart cartbuy'></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct9.php';">
                    <img src="/database_project/img/products/ส้มตำไทย.jpg" alt="">
                    <div class="des">
                        <span>Thai Food</span>
                        <h5>ส้มตำไทย</h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>50 บาท</h4>
                    </div>
                    <a href="sproduct9.php"><i class='bx bx-cart cartbuy'></i></a>
                </div>
            </div>
        </section>

        <script>
            var MainImg = document.getElementById("MainImg");
            var smallimg = document.getElementsByClassName("small-img");

            smallimg[0].onclick = function(){
                MainImg.src = smallimg[0].src;
            }
            smallimg[1].onclick = function(){
                MainImg.src = smallimg[1].src;
            }
            smallimg[2].onclick = function(){
                MainImg.src = smallimg[2].src;
            }
            smallimg[3].onclick = function(){
                MainImg.src = smallimg[3].src;
            }
        </script>
        
        <script src="script.js"></script>
        <script src="https://kit.fontawesome.com/10876e5229.js" crossorigin="anonymous"></script>
    </body>

</html>