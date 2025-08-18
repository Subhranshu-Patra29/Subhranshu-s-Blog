<?php
include 'partials/header.php'; 
require 'config/database.php'; // adjust path if needed

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = filter_var($_POST['name'], FILTER_SANITIZE_STRING);
    $email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
    $subject = filter_var($_POST['subject'], FILTER_SANITIZE_STRING);
    $message = filter_var($_POST['message'], FILTER_SANITIZE_STRING);

    if (!$name || !$email || !$subject || !$message) {
        echo "<script>alert('Please fill all fields'); window.history.back();</script>";
        exit;
    }

    /** OPTION 1: Save in Database **/
    $query = "INSERT INTO messages (name, email, subject, message) VALUES (?, ?, ?, ?)";
    $stmt = $connection->prepare($query);
    $stmt->bind_param("ssss", $name, $email, $subject, $message);
    
    if ($stmt->execute()) {
        echo "<script>alert('Your message has been sent successfully!'); window.location.href='contact.php';</script>";
    } else {
        echo "<script>alert('Error saving message. Try again.'); window.history.back();</script>";
    }
}
include 'partials/footer.php';
?>
