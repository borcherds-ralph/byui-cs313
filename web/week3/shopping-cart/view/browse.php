<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Simple PHP Shopping Cart</title>
	<link href="style.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<div id="shopping-cart">
		<div class="txt-heading">Shopping Cart <a id="btnView" href="index.php?action=view">View Cart</a><a id="btnEmpty" href="index.php?action=empty">Empty Cart</a></div>
		<?php
			if(isset($_SESSION["cart_item"])){
				$item_total = 0;
			}
		?>
	</div>

	<div id="product-grid">
		<div class="txt-heading">Products</div>
		<?php
		$product_array = array( array( 'id' => "1", 'name' => "3D Camera", 'code' => "3DcAM01", 'image' => "product-images/camera.jpg", 'price' => "1500.00" ),  array( 'id' => "2", 'name' => "External Hard Drive", 'code' => "USB02", 'image' => "product-images/external-hard-drive.jpg", 'price' => "800.00" ), array( 'id' => "3", 'name' => "Wrist Watch", 'code' => "wristWear03", 'image' => "product-images/watch.jpg", 'price' => "300.00" ));

		if (!empty($product_array)) { 
			foreach($product_array as $key=>$value){
		?>
			<div class="product-item">
				<form method="post" action="index.php?action=add&code=<?php echo $product_array[$key]["code"]; ?>">
				<div class="product-image"><img src="<?php echo $product_array[$key]["image"]; ?>"></div>
				<div><strong><?php echo $product_array[$key]["name"]; ?></strong></div>
				<div class="product-price"><?php echo "$".$product_array[$key]["price"]; ?></div>
				<div><input type="text" name="quantity" value="1" size="2" /><input type="submit" value="Add to cart" class="btnAddAction" /></div>
				</form>
			</div>
		<?php
				}
		}
		?>
	</div>
</body>
</html>