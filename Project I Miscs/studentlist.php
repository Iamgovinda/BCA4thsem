<?php
    $host = "localhost";
    $username = "root";
    $password = "";
    $dbname = "spark";

    try{
        $pdo = new PDO("mysql:host = $host; dbname=$dbname", $username, $password);
        $data = $pdo->query("SELECT * FROM student")->fetchALL();

        foreach($data as $row){
            echo $row['fname']."<br/>\n";
        }


    }catch(PDOException $e)
    {
        echo "Connection failed: ".$e->getMessage();
    }
?>