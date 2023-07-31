<?php require "includes/header.php"; ?>
<?php require "config/config.php"; ?>
<?php 

    //categories 
    $categories = $conn->query("SELECT * FROM categories");
    $categories->execute();

    $allCategories = $categories->fetchAll(PDO::FETCH_OBJ);

    // most wanted products
    $mostProducts = $conn->query("SELECT * FROM products WHERE status = 1");
    $mostProducts->execute();

    $allmostProducts = $mostProducts->fetchAll(PDO::FETCH_OBJ);


    //vigies
    $vigies = $conn->query("SELECT * FROM products WHERE category_id = 1");
    $vigies->execute();

    $allVigies = $vigies->fetchAll(PDO::FETCH_OBJ);


    //MEATS
     $meats = $conn->query("SELECT * FROM products WHERE category_id = 2");
     $meats->execute();
 
     $allMeats = $meats->fetchAll(PDO::FETCH_OBJ);


    //MEATS
    $fishes = $conn->query("SELECT * FROM products WHERE  category_id = 3");
    $fishes->execute();
    
    $allFishes = $fishes->fetchAll(PDO::FETCH_OBJ);



    //ACTIVE WEAR
    $active = $conn->query("SELECT * FROM products WHERE  category_id = 4");
    $active->execute();
       
    $allActive = $active->fetchAll(PDO::FETCH_OBJ);
 



    

?>
    <div id="page-content" class="page-content">
        <div class="banner"'>
            <div class="jumbotron jumbotron-bg text-center rounded-0" style=" background-image: url('assets/img/bg_shop.jpg');">
                <div class="container">
                    <h1 class="pt-5">
                        Shopping Page
                    </h1>
                    <p class="lead">
                        Save time and leave the Quality on us.
                    </p>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="shop-categories owl-carousel mt-5">
                        <?php foreach($allCategories as $category) : ?>
                            <div class="item">
                                <a href="shop.php">
                                    <div class="media d-flex align-items-center justify-content-center">
                                        <div class="media-body">
                                            <h5><?php echo $category->name; ?></h5>
                                            <p><?php echo substr($category->description, 1, 30); ?></p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        <?php endforeach; ?>
                        
                    </div>
                </div>
            </div>
        </div>

        <section id="most-wanted">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="title">Most Wanted</h2>
                        <div class="product-carousel owl-carousel">
                            <?php foreach($allmostProducts as $allmostProduct) : ?>
                                <div class="item">
                                    <div class="card card-product">
                                        <div class="card-ribbon">
                                            <div class="card-ribbon-container right">
                                                <span class="ribbon ribbon-primary">SPECIAL</span>
                                            </div>
                                        </div>
                                        <div class="card-badge">
                                            <div class="card-badge-container left">
                                                <span class="badge badge-default">
                                                    Only <?php echo $allmostProduct->exp_date; ?> left
                                                </span>
                                                <span class="badge badge-primary">
                                                    20% OFF
                                                </span>
                                            </div>
                                            <img src="http://localhost/E-commerce/assets/img/product/<?php echo $allmostProduct->image; ?>" alt="Card image 2" class="card-img-top">
                                        </div>
                                        <div class="card-body">
                                            <h4 class="card-title">
                                                <a href="http://localhost/E-commerce/products/detail-product.php?id=<?php echo $allmostProduct->id; ?>"><?php echo $allmostProduct->title; ?></a>
                                            </h4>
                                            <div class="card-price">
                                                <!-- <span class="discount">Rp. 300.000</span> -->
                                                <span class="reguler">&#8377;<?php echo $allmostProduct->price; ?></span>
                                            </div>
                                            <a href="http://localhost/E-commerce/products/detail-product.php?id=<?php echo $allmostProduct->id; ?>" class="btn btn-block btn-primary">
                                                Add to Cart
                                            </a>

                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="shirts" class="gray-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="title">Shirts and Tops</h2>
                        <div class="product-carousel owl-carousel">
                            <?php foreach($allVigies as $allvigi) : ?>
                                <div class="item">
                                    <div class="card card-product">
                                        <div class="card-badge">
                                            <div class="card-badge-container left">
                                                <span class="badge badge-primary">
                                                    20% OFF
                                                </span>
                                            </div>
                                            <img src="http://localhost/E-commerce/assets/img/product/<?php echo $allvigi->image; ?>" alt="Card image 2" class="card-img-top">
                                        </div>
                                        <div class="card-body">
                                            <h4 class="card-title">
                                                <a href="detail-product.html"><?php echo $allvigi->title; ?></a>
                                            </h4>
                                            <div class="card-price">
                                                <span class="reguler">&#8377; <?php echo $allvigi->price; ?></span>
                                            </div>
                                            <a href="<?php echo APPURL; ?>/products/detail-product.php?id=<?php echo $allvigi->id; ?>" class="btn btn-block btn-primary">
                                                Add to Cart
                                            </a>

                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                          
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="shoes">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="title">Shoes</h2>
                        <div class="product-carousel owl-carousel">
                           <?php foreach($allMeats as $meat) : ?> 
                            <div class="item">
                                <div class="card card-product">
                                    <div class="card-badge">
                                        <div class="card-badge-container left">
                                            <span class="badge badge-primary">
                                                20% OFF
                                            </span>
                                        </div>
                                        <img src="http://localhost/E-commerce/assets/img/product/<?php echo $meat->image; ?>" alt="Card image 2" class="card-img-top">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title">
                                            <a href="detail-product.html"><?php echo $meat->title; ?></a>
                                        </h4>
                                        <div class="card-price">
                                            <span class="reguler">&#8377; <?php echo $meat->price; ?></span>
                                        </div>
                                        <a href="<?php echo APPURL; ?>/products/detail-product.php?id=<?php echo $meat->id; ?>" class="btn btn-block btn-primary">
                                            Add to Cart
                                        </a>

                                    </div>
                                </div>
                            </div>
                          <?php endforeach; ?>
                           
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="jeans" class="gray-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="title">Jeans</h2>
                        <div class="product-carousel owl-carousel">
                            <?php foreach($allFishes as $fish) : ?>
                                <div class="item">
                                    <div class="card card-product">
                                        <div class="card-badge">
                                            <div class="card-badge-container left">
                                                <span class="badge badge-primary">
                                                    20% OFF
                                                </span>
                                            </div>
                                            <img src="http://localhost/E-commerce/assets/img/product/<?php echo $fish->image; ?>" alt="Card image 2" class="card-img-top">
                                        </div>
                                        <div class="card-body">
                                            <h4 class="card-title">
                                                <a href="detail-product.html"><?php echo $fish->title; ?></a>
                                            </h4>
                                            <div class="card-price">
                                                <span class="reguler">&#8377; <?php echo $fish->price; ?></span>
                                            </div>
                                            <a href="<?php echo APPURL; ?>/products/detail-product.php?id=<?php echo $fish->id; ?>" class="btn btn-block btn-primary">
                                                Add to Cart
                                            </a>

                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                          
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="activewear">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="title">Active wear</h2>
                        <div class="product-carousel owl-carousel">
                           <?php foreach($allActive as $active) : ?> 
                                <div class="item">
                                    <div class="card card-product">
                                        <div class="card-badge">
                                            <div class="card-badge-container left">
                                                <span class="badge badge-primary">
                                                    20% OFF
                                                </span>
                                            </div>
                                            <img src="http://localhost/E-commerce/assets/img/product/<?php echo $active->image; ?>" alt="Card image 2" class="card-img-top">
                                        </div>
                                        <div class="card-body">
                                            <h4 class="card-title">
                                                <a href="detail-product.html"><?php echo $active->title; ?></a>
                                            </h4>
                                            <div class="card-price">
                                                <span class="reguler">&#8377; <?php echo $active->price; ?></span>
                                            </div>
                                            <a href="<?php echo APPURL; ?>/products/detail-product.php?id=<?php echo $active->id; ?>" class="btn btn-block btn-primary">
                                                Add to Cart
                                            </a>

                                        </div>
                                    </div>
                                </div>
                          <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
<?php require "includes/footer.php"; ?>

