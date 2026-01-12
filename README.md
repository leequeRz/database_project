# 🍽️ ARHERELEE - Restaurant Food Ordering System

<div align="center">

![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Bootstrap](https://img.shields.io/badge/Bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)

**ระบบสั่งอาหารออนไลน์และจัดการร้านอาหารแบบครบวงจร**

</div>

---

## 📖 เกี่ยวกับโปรเจค

**ARHERELEE** เป็นระบบเว็บแอปพลิเคชันสำหรับร้านอาหารที่พัฒนาด้วย PHP และ MySQL ประกอบด้วยระบบจัดการร้านอาหารแบบครบวงจร ทั้งหน้าร้านสำหรับลูกค้าและระบบ Admin Dashboard สำหรับพนักงาน รองรับการสั่งอาหารทั้งแบบ Online และ Onsite รวมถึงระบบจองโต๊ะล่วงหน้า

---

## ✨ Features หลัก

### 🛒 ระบบสำหรับลูกค้า (Customer)
| Feature | Description |
|---------|-------------|
| 🏠 **หน้าแรก** | แสดง Banner Slider, Features และเมนูแนะนำ |
| 🍔 **เมนูอาหาร** | เรียกดูเมนูอาหารพร้อมหมวดหมู่ (Fast food, Thai, Chinese, Dessert, Drink) |
| 🛒 **ตะกร้าสินค้า** | เพิ่ม/ลบสินค้า และปรับจำนวน |
| 💳 **ชำระเงิน** | รองรับการจ่ายเงินทั้งแบบ Card และ Cash |
| 🪑 **จองโต๊ะ** | จองที่นั่งล่วงหน้าแบบออนไลน์ |
| 👤 **บัญชีผู้ใช้** | ลงทะเบียน, เข้าสู่ระบบ และจัดการข้อมูลส่วนตัว |

### 📊 ระบบ Admin Dashboard
| Feature | Description |
|---------|-------------|
| 📈 **Dashboard** | สรุปยอดขาย, ออเดอร์ และจำนวนลูกค้า |
| 👥 **จัดการลูกค้า** | ดูรายชื่อและข้อมูลลูกค้าทั้งหมด |
| 👨‍💼 **จัดการพนักงาน** | เพิ่ม/แก้ไข/ลบข้อมูลพนักงาน |
| 📦 **จัดการสินค้า** | เพิ่ม/แก้ไข/ลบเมนูอาหาร |
| 🎫 **จัดการโปรโมชัน** | สร้างและจัดการโปรโมชัน |
| 📝 **จัดการออเดอร์** | ดูรายการ Order ทั้ง Online และ Onsite |
| 🪑 **จัดการที่นั่ง** | ดูสถานะที่นั่งและ Reset ที่นั่ง |

---

## 🗂️ โครงสร้างโปรเจค

```
📦 database_project/
├── 📁 admin/                    # ระบบ Admin Dashboard
│   ├── home.php                 # หน้า Dashboard หลัก
│   ├── customer.php             # จัดการลูกค้า
│   ├── staff.php                # จัดการพนักงาน
│   ├── product.php              # จัดการสินค้า
│   ├── order.php                # จัดการ Order
│   ├── promotion.php            # จัดการโปรโมชัน
│   ├── seat.php                 # จัดการที่นั่ง
│   ├── add_product.php          # เพิ่มสินค้าใหม่
│   └── add_promotion.php        # เพิ่มโปรโมชัน
│
├── 📁 beforelogin/              # หน้าเว็บก่อน Login
│   ├── home.php                 # หน้าแรก
│   ├── shop.php                 # หน้าร้านค้า
│   ├── login.php                # หน้า Login
│   ├── register.php             # หน้าลงทะเบียน
│   └── cart.php                 # ตะกร้าสินค้า
│
├── 📁 afterlogin/               # หน้าเว็บหลัง Login
│   ├── afterlogin.php           # หน้าหลักหลัง Login
│   ├── afshop.php               # หน้าร้านค้า
│   ├── afcart.php               # ตะกร้าสินค้า
│   ├── booking.php              # จองโต๊ะ
│   ├── table.php                # เลือกโต๊ะ
│   ├── confirm_payment.php      # ยืนยันการชำระเงิน
│   └── accountsetting2.php      # ตั้งค่าบัญชี
│
├── 📁 config/                   # ไฟล์ Config Database
│   ├── db.php
│   └── pdo.php
│
├── 📁 css/                      # ไฟล์ CSS
├── 📁 img/                      # รูปภาพ
├── 📁 products/                 # รูปสินค้า
├── 📁 sass/                     # ไฟล์ SASS
│
├── 📄 index.php                 # หน้าแรกของเว็บไซต์
├── 📄 db.php                    # Database Connection
├── 📄 arherelee.sql             # Database SQL File
└── 📄 README.md
```

## 🚀 วิธีติดตั้ง

### ความต้องการของระบบ
- **PHP** >= 8.0
- **MySQL** / MariaDB
- **Apache** Web Server (XAMPP, WAMP, MAMP หรือ Laragon)

### ขั้นตอนการติดตั้ง

1. **Clone Repository**
   ```bash
   git clone https://github.com/username/database_project.git
   ```

2. **นำเข้าฐานข้อมูล**
   - เปิด phpMyAdmin
   - สร้าง Database ชื่อ `arherelee`
   - Import ไฟล์ `arherelee.sql`

3. **ตั้งค่า Database Connection**
   - แก้ไขไฟล์ `db.php` และ `config/db.php`
   ```php
   $servername = "localhost";
   $username = "root";
   $password = "";  // ใส่ password ถ้ามี
   ```

4. **เปิดใช้งาน**
   - วางโปรเจคไว้ใน `htdocs` (XAMPP) หรือ `www` (WAMP/Laragon)
   - เปิดเบราว์เซอร์ไปที่ `http://localhost/database_project/`

---

## 🛠️ เทคโนโลยีที่ใช้

| Layer | Technology |
|-------|------------|
| **Frontend** | HTML5, CSS3, JavaScript, Bootstrap 5 |
| **Backend** | PHP (Native) |
| **Database** | MySQL / MariaDB |
| **Icons** | Boxicons, Remix Icons, Font Awesome |

---

## 📸 Screenshots

<details>
<summary>🖼️ Click เพื่อดูภาพตัวอย่าง</summary>

### หน้าแรก (Home)
- แสดง Banner Slider พร้อม Autoplay
- แสดง Features ของร้าน
- แสดงเมนูแนะนำ

### Admin Dashboard
- สรุปยอดขาย (Total Sales)
- จำนวน Order ทั้งหมด
- จำนวนลูกค้า
- Sales Analytics (Online/Offline Orders)

</details>

---

## 👨‍💻 ผู้พัฒนา

**ARHERELEE Team**

---

## 📝 License

โปรเจคนี้เป็น **Open Source** สำหรับการศึกษาเท่านั้น

---

<div align="center">

Made with ❤️ by ARHERELEE Team

</div>
