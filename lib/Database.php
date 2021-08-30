<?php

class Database{

    private $host = 'localhost';
    private $user = 'root';
    private $password = '';
    private $dbName = 'books.app';
    

    public function openConnection(){
        try{
            $mysqli = new PDO("mysql:host=$this->host;dbname=$this->dbName", $this->user, $this->password);
            $mysqli->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            //echo 'Connection was successful!';
            return $mysqli;
        }catch(PDOException $e){
            echo 'Connection failed: ' . $e->getMessage();
        }
    }

    public function closeConnection(&$mysqli){
        $mysqli = NULL;
        //echo 'Connection closed successfully!';
    }
}