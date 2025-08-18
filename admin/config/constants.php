<?php
session_start();
define("ROOT_URL", "http://subhakrpatra.page.gd/");
define('DB_HOST', 'sql100.infinityfree.com');
define('DB_USER', 'if0_39731206');
define('DB_PASS', 'Subhranshu29');
define('DB_NAME', 'if0_39731206_blog_db');
// if (!isset($_SESSION['user-id'])) {
//     header("location: " . ROOT_URL . "logout.php");
//     //destroy all sessions and redirect user to login page
//     session_destroy();
//     die();
//     header("location: " . ROOT_URL . "signin.php");
// }
if (!isset($_SESSION['user-id'])) {
    // destroy session
    session_unset();
    session_destroy();

    // redirect to signin page
    header("Location: " . ROOT_URL . "signin.php");
    exit();
}
?>