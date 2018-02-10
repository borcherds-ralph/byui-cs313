<?php

session_start();

include_once 'config/database.php';
include_once 'library/functions.php';
include_once 'model/model_lookup.php';



// Get the action to perform.
$action = filter_input(INPUT_POST, 'action');
if ($action == NULL){
 $action = filter_input(INPUT_GET, 'action');
}

// Check if the firstname cookie exists, get its value
if (isset($_SESSION['loggedin'])) {
    $clientData = getClient($_SESSION['clientData']['clientEmail']);
    array_pop($clientData);
}

switch ($action) {


    case 'anything':
    break;

    case 'logout':
        session_destroy();
        setcookie('firstname', $_SESSION['clientData']['clientFirstname'], time() - 3600, $basepath);
        header('location:' . $basepath);
    exit;

    default:
        $docs = getAllrecords();
        $doctors = getDoctors($docs);
        include 'view/home.php';
    exit;

}

