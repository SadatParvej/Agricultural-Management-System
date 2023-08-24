<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Sign In</title>
    <link rel="stylesheet" href="index1.css">
</head>
<body style="background-image:cropsfield.jpg">
    <div class="container">
        <div class="card">
            <h1 class="heading">Sign In</h1>
            <form action="./Pages/sign_in.php" method="post">
                <label for="email">User Email:</label><br>
                <input type="email" name="email" placeholder="E-mail" required><br>

                <label for="pass">Password:</label><br>
                <input type="password" name="pass" placeholder="Password" required><br><br>

                <input type="submit" name="login" value="Login">
                <input type="reset" value="Reset">
            </form>

            <p class="signup-text">Don't have an account yet?</p>
            <a class="signup-link" href="./Pages/registration_form.php">Sign Up Here</a><br>
            <a class="signup-link" href="./Pages/applicant_form.php">Apply Here</a>
        </div>
    </div>
    <?php include_once 'Pages/connection.php'; ?>
</body>
</html>
