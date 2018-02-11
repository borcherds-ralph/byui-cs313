<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <?php include 'common/head.php'; ?>

</head>
<body>
    <section class="header">
        <?php include_once 'common/header.php'; ?>
    </section>
    <main>
        <h1>Cities</h1>
        
        <label for="city">Select a City: </label>
        <input class="inputinvalid" id="city" name="city" autocomplete="off" list="cities" required tabindex="1" title="Select the city." >
         <?php echo $cityList; ?> 
    </main>
    <footer>
        <?php include 'common/footer.php'; ?>
    </footer>
</body>
</html>