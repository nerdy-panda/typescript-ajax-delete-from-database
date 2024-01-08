<?php require_once dirname(__DIR__,2).'/Includes/database.php' ; ?>
<?php header('Content-Type: application/json;'); ?>
<?php
sleep(rand(2,5));
$productId = (int)$_GET['product-id'];
$query = 'delete from `products` where `id`=:productId;';
$statement = $databaseConnection->prepare($query);
$statement->bindValue(':productId',$productId,PDO::PARAM_INT);
$executed = $statement->execute();
$isDeleted = $statement->rowCount();

$response = ["message"=> null , "productId"=> $productId];
if($isDeleted===1){
    $response["message"] = "successfully removed product with id => {$productId}";
    echo json_encode($response);
}
else {
    http_response_code(406);
    $response["message"] = "no delete product with id => {$productId}";
    echo json_encode($response);
}
