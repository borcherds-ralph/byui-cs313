<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Doctor Lookup and Reviews</title>
    <?php include 'common/head.php'; ?>
</head>
<body>
    <section class="content">
        <?php include 'common/header.php'; ?>
    </section>
    <main>
        <h1>List of Doctors</h1>
        <?php echo $doctors; ?>
    </main>
    <footer>
        <?php include 'common/footer.php'; ?>
    </footer>

</body>
</html>