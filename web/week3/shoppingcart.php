<?php

session_start();

$items = array (
        'A123' => array (
                'name' => 'Item1',
                'desc' => 'Item 1 description...',
                'price' => 1000 
        ),
        'B456' => array (
                'name' => 'Item40',
                'desc' => 'Item40 description...',
                'price' => 2500 
        ),
        'Z999' => array (
                'name' => 'Item999',
                'desc' => 'Item999 description...',
                'price' => 9999 
        ) 
);

if (!isset ( $_SESSION ['cart'] )) {
    $_SESSION ['cart'] = array ();
}

// Add
if (isset($_POST ["buy"] )) {
    if (!in_array($_POST["buy"], $_SESSION['cart'])) {
        $_SESSION ['cart'] = $_POST["buy"];
} 
}

// Delete Item
else if (isset ( $_POST ['delete'] )) { // a remove button has been clicked
    // Remove the item from the cart
    if (false !== $key = array_search($_POST['delete'], $_SESSION['cart'])) {
        unset($_SESSION['cart'][$key]);
    }
}

// Empty Cart
else if (isset ( $_POST ["delete"] )) { // remove item from cart
    unset( $_SESSION ['cart'] );
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shopping Cart</title>
</head>
<body>
    
    <form action='<?php echo $_SERVER['PHP_SELF']; ?>' method='post'>
        <?php
            foreach ( $items as $ino => $item ) {
                echo "<p>$item[name]</p>";
                echo "<p>$item[desc]</p>";
                echo "<p>\$$item[name]</p>";

                // Check if an item is in the cart by checking for the existence of its ID:
                if (in_array($ino, $_SESSION['cart'])) { // The $ino would be 'a123' for your first product
                    echo "<p><button type='submit' name='delete' value='$ino'>Remove</button></p>";
                } else {
                    echo "<button type='submit' name='buy' value='$ino'>Buy</button> ";
                }
            }
        ?>
    </form>

    <?php if (isset ( $_SESSION ["cart"] )) { ?>

    <form action='(omitted link)' target='_blank' method='post'>
        <table>
            <tr>
                <th>Product</th>
                <th>Price</th>
                <th>Action</th>
            </tr>
            <?php
            // Set a default total
            $total = 0;
            foreach ( $_SESSION['cart'] as $ino ) {
                ?>
            <tr>
                <td>
                    Name: <?php echo $items[$ino]['name']; ?>
                </td>
                <td>
                    Price: <?php echo $items[$ino]["price"]; ?>
                </td>
                <td>
                    <button type='submit' name='delete' value='<?php echo $ino; ?>'>Remove</button>
                </td>
            </tr>
            <?php
                $total += $items[$ino]['price'];
            } // end foreach
            ?>

            Total: $<?php echo $total; ?>
            <tr>
                <td colspan="2">Total: $<?php echo($total); ?></td>
                <td><input type='submit' value='Checkout' /></td>
            </tr>
            <tr>
                <td><button type='submit' name='clear'>Clear cart</button></td>
            </tr>
        </table>
    </form>
</body>
</html>
<?php  }