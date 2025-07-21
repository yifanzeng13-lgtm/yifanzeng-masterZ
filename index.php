<?php
// connect to db
include 'connection/connect.php';

//retrieve data
include 'web-service/get-data.php';

?>


<!doctype html>
<html lang="en">
  <head>
    <?php include 'includes/metas.php' ?>
    <title>Master Z. Noodle Bar</title>
    <?php include 'includes/styles.php' ?>
  </head>
  <body>
    <div id="override">
      
      <!-- Include Navigation -->
      <?php include 'includes/navigation.php' ?>
      <!-- Include Masthead -->
      <?php include 'includes/masthead.php' ?>
      <!-- Product Catalog Section -->
      <div class="container mt-5">
        <div class="row">

        <?php
          if (!empty($products)) {
              foreach ($products as $product) {
                  echo '<div class="col-lg-3 col-md-6 mb-4">';
                  echo '  <div class="card h-100 product-card">';
                  echo '    <img src="img/' . ($product['prod_img']) . '" class="card-img-top" alt="' . ($product['prod_name']) . '">';
                  echo '    <div class="card-body">';
                  echo '      <h5 class="card-title">' . ($product['prod_name']) . '</h5>';
                  echo '      <p class="card-text  fw-bold">$' . number_format($product['prod_price'], 2) . '</p>';
                  echo '    </div>';
                  echo '  </div>';
                  echo '</div>';
              }
          } else {
              echo '<div class="col-12"><div class="alert alert-info">No products found.</div></div>';
          }
          ?>
        </div>
      </div>

      <!-- Include Footer -->
      <?php include 'includes/footer.php' ?>
    </div>

    <!-- Include Scripts -->
    <?php include 'includes/scripts.php' ?>
  </body>
</html>