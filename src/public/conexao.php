<?php
$conn = new mysqli('db', 'appuser', 'appsecret', 'codespaces_demo');
$conn->set_charset('utf8mb4');

if ($conn->connect_error) {
    die('Erro de ligação: ' . $conn->connect_error);
}