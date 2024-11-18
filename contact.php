<?php
// Database configuration
$servername = "database-100.czptxhzjxjrt.us-east-1.rds.amazonaws.com";
$username = "rejoice100";
$password = "rejoice10";
$dbname = "bowhotels";

// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data and sanitize it
    $name = $conn->real_escape_string($_POST['name']);
    $email = $conn->real_escape_string($_POST['email']);
    $comment = isset($_POST['age']) ? (int)$_POST['comment'] : NULL;

    // SQL query to insert data into the table
    $sql = "INSERT INTO `users` (`name`, `email`, `comment`) VALUES ('$name', '$email', '$comment')";

    // Execute the query
    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close the connection
$conn->close();
?>
