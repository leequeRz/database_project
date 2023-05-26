<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Welcome To ArHereLee</title>
        <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">  

        <link rel="stylesheet" href="style.css">
    </head>

    <body>
        <section id="header">
            <a href="index.php" class="headerlogo">ARHERELEE</a>
            
            <div>
                <ul id="navbar">
                    <li><a class="active" href="index.php">HOME</a></li>
                    <li><a href="shop.php">SHOP</a></li>
                    <!-- <li><a href="blog.php">BLOG</a></li> -->
                    <li><a href="login.php">LOGIN NOW</a></li>
                    <li id="lg-bag"><a href="cart.php"><i class='bx bx-shopping-bag'></i></a></li>
                    <a href="#" id="close"><i class="fa-solid fa-xmark"></i></a>
                </ul>
            </div>
            <div id="mobile">
                <a href="cart.php"><i class='bx bx-shopping-bag'></i></a>
                <i id="bar" class="fas fa-outdent"></i>
                
            </div>
        </section>

        <!-- <section id="hero">
            <h4>ยินดีต้อนรับสู่ร้านของเรา</h4>
            <h2>AR-HERE-LEE</h2>
            <h1>เรามีเมนูที่หลากหลาย</h1>
            <p>เอนจอยค้าบโผม</p>
            <a href="shop.html"><button>Order Now</button></a>
        </section> -->

        <section id="hero-banner">
            <div class="slider">
                <div class="slide active">
                    <img src="/database_project/img/bannerhero.png" alt="">
                    <div class="info">
                        <div class="info2">
                            <h2>Welcome to ARHERELEE</h2>
                            <p>เราเป็นหนึ่งทางด้านอาหารและมีเมนูที่หลากหลาย เอนจอยค้าบโผม</p>
                        </div>
                    </div>
                </div>
                <div class="slide">
                    <img src="/Image Files - Responsive Image Slider With Next And Previous Buttons - Using HTML CSS & Javascript/Image Files - Responsive Image Slider With Next And Previous Buttons - Using HTML CSS & Javascript/2.jpg"
                        alt="">
                    <div class="info">
                        <div class="info2">
                            <h2>เราคัดเลือกอาหารทุกส่วนอย่างมีคุณภาพ</h2>
                            <p>เพราะเราคำนึงถึงลูกค้าในทุกการกินเพื่อให้ได้รับประสบการณ์ที่ดีที่สุด</p>
                        </div>
                    </div>
                </div>
                <div class="slide">
                    <img src="/Image Files - Responsive Image Slider With Next And Previous Buttons - Using HTML CSS & Javascript/Image Files - Responsive Image Slider With Next And Previous Buttons - Using HTML CSS & Javascript/3.jpg"
                        alt="">
                    <div class="info">
                        <div class="info2">
                            <h2>ORDER NOW</h2>
                            <p>อร่อยสุดซึ้งหนึ่งคำขึ้นสมอง คำที่สองขึ้นสวรรค์ :)</p>
                        </div>
                    </div>
                </div>
                
                <div class="navigation">
                    <i class="fas fa-chevron-left prev-btn"></i>
                    <i class="fas fa-chevron-right next-btn"></i>
                </div>
                <div class="navigation-visibility">
                    <div class="slide-icon active"></div>
                    <div class="slide-icon"></div>
                    <div class="slide-icon"></div>
                </div>
            </div>
        </section>
        
        <section id="feature-head" class="section-p1">
                <h2>Features :)</h2>
        </section>

        <section id="feature" class="section-p1">
            <div class="fe-box">
                <img src="/img/features/online-shop.png" alt="">
                <h6>Online Shop</h6>
            </div>
            <div class="fe-box">
                <img src="/img/features/free shipping.png" alt="">
                <h6>Free Shipping</h6>
            </div>
            <div class="fe-box">
                <img src="/img/features/fresh food.png" alt="">
                <h6>Fresh Food</h6>
            </div>
            <div class="fe-box">
                <img src="/img/features/online seat.png" alt="">
                <h6>Seat Online</h6>
            </div>
            <div class="fe-box">
                <img src="/img/features/food inter.png" alt="">
                <h6>All Food Nationality</h6>
            </div>

        </section>

        <section id="product1" class="section-p1">
            <h2>Wanna try this?</h2>
            <p>เมนู Recomment ของทางร้าน</p>
            <div class="pro-container">
                <div class="pro" onclick="window.location.href='sproduct.php';">
                    <img src="/img/products/burger.jpg" alt="">
                    <div class="des">
                        <span>Fast food</span>
                        <h5>Burger คำโตๆ</h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>79 บาท</h4>
                    </div>
                    <a href="sproduct.php"><i class='bx bx-cart cartbuy'></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct10.php';">
                    <img src="/img/products/เป็ดปักกิ่งง.jpg" alt="">
                    <div class="des">
                        <span>Chinese Food</span>
                        <h5>เป็ดปักกื่งแสนอร่อย</h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>109 บาท</h4>
                    </div>
                    <a href="sproduct10.php"><i class='bx bx-cart cartbuy'></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct2.php';">
                    <img src="/img/products/กะเพราหมูกรอบ.jpg" alt="">
                    <div class="des">
                        <span>Thai Food</span>
                        <h5>กระเพราหมูกรอบ</h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>70 บาท</h4>
                    </div>
                    <a href="sproduct2.php"><i class='bx bx-cart cartbuy'></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct6.php';">
                    <img src="/img/products/ต้มยำกุ้ง.jpg" alt="">
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
                <div class="pro" onclick="window.location.href='sproduct9.php';">
                    <img src="/img/products/ส้มตำไทย.jpg" alt="">
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
                <div class="pro" onclick="window.location.href='sproduct7.php';">
                    <img src="/img/products/บัวลอยไข่หวาน.jpg" alt="">
                    <div class="des">
                        <span>Dessert</span>
                        <h5>บัวลอยไข่หวาน</h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>25 บาท</h4>
                    </div>
                    <a href="sproduct7.php"><i class='bx bx-cart cartbuy'></i></a>
                </div>
                <div class="pro" onclick="window.location.href='sproduct11.php';">
                    <img src="/img/products/แกงส้มกุ้ง.jpeg" alt="">
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
                <div class="pro" onclick="window.location.href='sproduct5.php';">
                    <img src="/img/products/ซาลาเปาหมูสับไข่เค็ม.jpg" alt="">
                    <div class="des">
                        <span>Chinese Food</span>
                        <h5>ซาลาเปาหมูสับไข่เค็ม</h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>30 บาท</h4>
                    </div>
                    <a href="sproduct5.php"><i class='bx bx-cart cartbuy'></i></a>
                </div>
            </div>
        </section>

        <script src="script.js"></script>
        <script src="https://kit.fontawesome.com/10876e5229.js" crossorigin="anonymous"></script>
        <script type="text/javascript">
            const slider = document.querySelector(".slider");
            const nextBtn = document.querySelector(".next-btn");
            const prevBtn = document.querySelector(".prev-btn");
            const slides = document.querySelectorAll(".slide");
            const slideIcons = document.querySelectorAll(".slide-icon");
            const numberOfSlides = slides.length;
            var slideNumber = 0;
        
            //image slider next button
            nextBtn.addEventListener("click", () => {
              slides.forEach((slide) => {
                slide.classList.remove("active");
              });
              slideIcons.forEach((slideIcon) => {
                slideIcon.classList.remove("active");
              });
        
              slideNumber++;
        
              if(slideNumber > (numberOfSlides - 1)){
                slideNumber = 0;
              }
        
              slides[slideNumber].classList.add("active");
              slideIcons[slideNumber].classList.add("active");
            });
        
            //image slider previous button
            prevBtn.addEventListener("click", () => {
              slides.forEach((slide) => {
                slide.classList.remove("active");
              });
              slideIcons.forEach((slideIcon) => {
                slideIcon.classList.remove("active");
              });
        
              slideNumber--;
        
              if(slideNumber < 0){
                slideNumber = numberOfSlides - 1;
              }
        
              slides[slideNumber].classList.add("active");
              slideIcons[slideNumber].classList.add("active");
            });
        
            //image slider autoplay
            var playSlider;
        
            var repeater = () => {
              playSlider = setInterval(function(){
                slides.forEach((slide) => {
                  slide.classList.remove("active");
                });
                slideIcons.forEach((slideIcon) => {
                  slideIcon.classList.remove("active");
                });
        
                slideNumber++;
        
                if(slideNumber > (numberOfSlides - 1)){
                  slideNumber = 0;
                }
        
                slides[slideNumber].classList.add("active");
                slideIcons[slideNumber].classList.add("active");
              }, 4000);
            }
            repeater();
        
            //stop the image slider autoplay on mouseover
            slider.addEventListener("mouseover", () => {
              clearInterval(playSlider);
            });
        
            //start the image slider autoplay again on mouseout
            slider.addEventListener("mouseout", () => {
              repeater();
            });
            </script>
    </body>

</html>