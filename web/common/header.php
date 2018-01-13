<?php
$url = basename($_SERVER['REQUEST_URI']);

$parts = parse_url($url);

$str = $parts['scheme'].'://'.$parts['host'].$parts['path'];
?>

<header>
    <nav class="navigation">
        <ul>
            <li <?php if($str == "://index.php" || $str == "://") { echo "class='active'"; } ?> ><a href="index.php" title="Home Page">Home</a></li>
            <li <?php if($str == "://assignments.php") { echo "class='active'"; } ?> ><a href="assignments.php" title="Assignments Page">Class Assignments</a></li>
        </ul>
    </nav>
</header>