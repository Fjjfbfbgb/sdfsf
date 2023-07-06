<?php
    function check_login(){
        if(isset($_COOKIE['Login']) && $_COOKIE['loign']!=''){
            header('Location: /konto');
        }else{
            header('Location: /login');
        }
    }


?>