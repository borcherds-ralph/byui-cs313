<!DOCTYPE html>
<html lang="en-US">
    <head>
        <title>Home page for CS-313</title>
        <meta name="description" content="This is the homepage for my BYU-I CS-313 Class">
        <?php include('common/head.php'); ?>
    </head>
 
  <body>
  <content>
    <?php include('common/header.php'); ?>
    <main class="home">
    <h1>Welcome to my CS-313 Homepage</h1>
    <p>Some of the things I enjoy doing is riding horses, ham radio and spending time with the family.</p>
    <figure>
        <img src="images/day-1-0306.jpg" width="600">
        <figcaption>On horseback during a Pioneer Trek for 3 days</figcaption>
    </figure>

    <p>Since I live in sunny Southern California I thought I would share the current temp.</p>
    <p>Sorry if these temps make you jealous during the winter months.</p>
    <section id="forecast">
        <h2 id="hiddenitems">Weather forecast table.</h2>
        <div class="forecast">
            <div class="cityname" id="cityname"></div>
            <div class="flex-order">Weather Forecast Data</div>
            <div class="flex-order1 bolding" id="summary1">Currently</div>
            <div class="flex-order1" id="summary2"></div>
            <div class="flex-order2 bolding" id="high">Forecast High</div>
            <div class="flex-order2" id="hightemp"></div>
            <div class="flex-order3 bolding" id="low">Forecast Low</div>
            <div class="flex-order3" id="lowtemp"></div>
            <div class="flex-order4 bolding" id="chanceperc">Chance Precipitation</div>
            <div class="flex-order4" id="chancepercperc"></div>
            <div class="flex-order5 bolding" id="maxwind">Today's Max Wind</div>
            <div class="flex-order5" id="maxwindspeed"></div>
            <div class="flex-order9 bolding hiddenitems" id="windchill">Current Windchill</div>
            <div class="flex-order9 hiddenitems" id="windchillnow"></div>
            <div class="flex-order6 bolding" id="10day">10 Day Forecast</div>
            <div class="flex-order7" id="day0"></div>
            <div class="flex-order7" id="day1"></div>
            <div class="flex-order7" id="day2"></div>
            <div class="flex-order7" id="day3"></div>
            <div class="flex-order7" id="day4"></div>
            <div class="flex-order7" id="day5"></div>
            <div class="flex-order7" id="day6"></div>
            <div class="flex-order7" id="day7"></div>
            <div class="flex-order7" id="day8"></div>
            <div class="flex-order7" id="day9"></div>
            <div class="flex-order8" id="day0temp"></div>
            <div class="flex-order8" id="day1temp"></div>
            <div class="flex-order8" id="day2temp"></div>
            <div class="flex-order8" id="day3temp"></div>
            <div class="flex-order8" id="day4temp"></div>
            <div class="flex-order8" id="day5temp"></div>
            <div class="flex-order8" id="day6temp"></div>
            <div class="flex-order8" id="day7temp"></div>
            <div class="flex-order8" id="day8temp"></div>
            <div class="flex-order8" id="day9temp"></div>
        </div>
    </section>


    </main>
    </content>
    <?php include('common/footer.php'); ?>

    </body>


</html>
