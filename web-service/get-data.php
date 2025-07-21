<?php
// Create base query
$q = 'SELECT prod_name, prod_img, prod_price, prod_code FROM products';

// Add filtering if prod_code parameter exists
if (isset($_GET['prod_code']) && in_array($_GET['prod_code'], ['APP', 'NOO', 'BEV'])) {
    $q .= " WHERE prod_code = :prod_code";
    $results = $pdo->prepare($q);
    $results->execute([':prod_code' => $_GET['prod_code']]);
} else {
    // No filter or invalid code - get all products
    $results = $pdo->query($q);
}

$products = $results->fetchAll(PDO::FETCH_ASSOC);
?>
