<?php require_once dirname(__DIR__).'/Includes/database.php'; ?>
<?php
    $query = 'select `id` , `title` , `thumbnail` , `created_at` , `updated_at` from `products`';
    $statement = $databaseConnection->query($query);
    $products = $statement->fetchAll();
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>products</title>
    <link rel="stylesheet" href="Css/Pages/Home.css">
    <script src="Js/Pages/Home/launcher.js" type="module"></script>
</head>
<body>
    <div id="loading" class="dis-none">
        <img src="img/loading.svg" alt="">
        <h6>loading</h6>
    </div>
    <h1 class="page-title">products</h1>
    <section class="container">
    <table id="products-data">
        <thead>
            <tr>
                <th>#</th>
                <th>title</th>
                <th>thumbnail</th>
                <th>created at</th>
                <th>updated at</th>
                <th>delete</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($products as $key => $product) : ?>
                <tr data-product-id="<?php echo $product->id?>">
                    <td><?php echo $key + 1 ?></td>
                    <td><?php echo $product->title ?></td>
                    <td>
                        <img src="img/<?php echo $product->thumbnail ?? 'default.png'?>" alt="">
                    </td>
                    <td><?php echo $product->created_at ?></td>
                    <td><?php echo $product->updated_at ?? '<i class="fa-solid fa-rectangle-xmark"></i>' ?></td>
                    <td>
                        <a class="delete-button" data-product-id="<?php echo $product->id ?>">
                            <i class="fa-solid fa-trash"></i>
                        </a>
                    </td>
                </tr>
            <?php endforeach;?>
        </tbody>

    </table>
    </section>
</body>
</html>