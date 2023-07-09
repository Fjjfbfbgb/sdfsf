<?php
    function check_login(){
        if(isset($_COOKIE['Login']) && $_COOKIE['loign']!='')return $_COOKIE['Login'];
        else return "login";
    }

    //DB CREDS + func
    define('Login', 'www12243_baza');
    define('Haslo', 'afHWjdxdrss9dVXUramL');

    function read_db($q){
        $db = mysqli_connect('localhost', Login, Haslo, 'www12243_baza');
        if(!$db)return 1;
        else{
            $r = mysqli_query($db, $q);
            $arr = mysqli_fetch_array($r);
            return $arr;
        }
    }

    function write_db($q){
        $db = mysqli_connect('localhost', Login, Haslo, 'www12243_baza');
        if(!$db)return 1;
        else{
            if(mysqli_query($db, $q))return 0;
            else return 2;
        }
    }
?>