<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/logrestyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Catamaran:wght@100;300&family=Poppins:wght@600&display=swap" rel="stylesheet">
    <title>Register ArHereLee</title>
</head>
<body>
    <div class="wrapper">
        <div class="container main">
            <div class="row">
                <div class="col-md-6 side-image">
                    <!-- ใส่รูป -->
                    <img src="chef.png" alt="">
                    <div class="text">
                        <p>Welcome to ArHereLee Management System</p>
                    </div>
                </div>
                <div class="col-md-6 right">
                    <div class="input-box">
                        <header>Create Account</header>
                        <!-- <div class="input-field">
                            <input type="text" class="input" id="username" required>
                            <label for="username">Username</label>
                        </div> -->
                        <div class="input-field">
                            <input type="text" class="input" id="email" required>
                            <label for="email">Email</label>
                        </div>
                        <div class="input-field">
                            <input type="password" class="input" id="password" required>
                            <label for="password">Password</label>
                        </div>
                        <div class="input-field">
                            <input type="password" class="input" id="confirm-password" required>
                            <label for="confirm-password">Confirm-Password</label>
                        </div>
                        <div class="input-field">
                            <input type="text" class="input" id="firstname" required>
                            <label for="firstname">Firstname</label>
                        </div>
                        <div class="input-field">
                            <input type="text" class="input" id="lastname" required>
                            <label for="firstname">Lastname</label>
                        </div>
                        <div class="input-field">
                            <input type="text" class="input" id="tel" required>
                            <label for="tel">Tel.</label>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Date of Birth</label>
                                <input type="date" class="form-control" value="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                  <label>Sex</label>
                                  <form>
                                    <label for="gender">Gender:</label>
                                    <select id="gender" name="gender">
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                        <option value="other">Other</option>
                                    </select>
                                </form>
                            </div>
                        </div>
                        
                        <form class="input-role">
                            <label>Role: </label>
                            <label>
                                <input type="radio" name="radio"/>
                                <span>Staff</span>
                            </label>
                            <label>
                                <input type="radio" name="radio"/>
                                <span>Rider</span>
                            </label>
                        </form> 

                        <div class="input-field">
                            <input type="text" class="input" id="vehicle_id" required>
                            <label for="vehicle_id">Vehicle ID</label>
                        </div>

                        <div class="input-field">
                            <input type="submit" class="submit" Value="Sign Up">
                        </div>
                        <div class="signin">
                            <span>Already have an account?<a href="index.php"> Log in here</a></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>