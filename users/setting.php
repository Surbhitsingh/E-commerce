<?php require "../includes/header.php"; ?>
<?php require "../config/config.php"; ?>
<?php 

    if(!isset($_SESSION['username'])) {
                        
        echo "<script> window.location.href='".APPURL."'; </script>";

    }


    if(isset($_GET['id'])) {
        $id = $_GET['id'];


        if($id != $_SESSION['user_id']) {
                    
            echo "<script> window.location.href='".APPURL."'; </script>";
    
        }
    

        $select = $conn->query("SELECT * FROM users WHERE id='$id'");
        $select->execute();
        $users = $select->fetch(PDO::FETCH_OBJ);



        if(isset($_POST['submit'])) {

            $fullname = $_POST['fullname'];
            $email = $_POST['email'];
            $username = $_POST['username'];
            

            $update = $conn->prepare("UPDATE users SET fullname = '$fullname', email = '$email',
            username = '$username'  WHERE id='$id'");

            $update->execute();
            echo "<script> window.location.href='".APPURL."'; </script>";

        }

    } else {
        echo "<script> window.location.href='".APPURL."/404.php'; </script>";
    }

?>
    <div id="page-content" class="page-content">
        <div class="banner">
            <div class="jumbotron jumbotron-bg text-center rounded-0" style="background-image: url('<?php echo APPURL; ?>/assets/img/bg_shop.jpg');">
                <div class="container">
                    <h1 class="pt-5">
                        Settings
                    </h1>
                    <p class="lead">
                        Update Your Account Info
                    </p>
                </div>
            </div>
        </div>

        <section id="checkout">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xs-12 col-sm-6">
                        <h4 class="mb-4">ACCOUNT DETAILS</h4>
                        <!-- Bill Detail of the Page -->
                        <form action="setting.php?id=<?php echo $id; ?>" method="POST" class="bill-detail">
                            <fieldset>
                                <div class="form-group row">
                                    <div class="col">
                                    <h6>Full Name</h6>
                                        <input class="form-control" placeholder="Full Name" name="fullname" value="<?php echo $users->fullname; ?>" type="text">
                                    </div>
                                   
                                </div>
                               
                                <div class="form-group">
                                    <h6>Email</h6>
                                    <input class="form-control"  value="<?php echo $users->email; ?>" name="email" placeholder="Email"></input>
                                </div>
                                <div class="form-group">
                                <h6>Username</h6>
                                    <input class="form-control" name="username" value="<?php echo $users->username; ?>" placeholder="username" type="text">
                                </div>
                                
                                
                              
                                <div class="form-group text-right">
                                    <button type="submit" name="submit" class="btn btn-primary">UPDATE</button>
                                    <div class="clearfix">
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
<?php require "../includes/footer.php"; ?>

