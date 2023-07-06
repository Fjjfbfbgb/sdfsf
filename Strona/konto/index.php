<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../main.css">
    <title></title>
</head>
<body>
    <div id="nav">
        <a href="/"><div class="btn">Main</div></a>
        <a href="/"><div class="btn">b</div></a>
        <a href="/"><div class="btn">c</div></a>
        <a href="/"><div class="btn">d</div></a>
        <a href="/login"><div class="btn" id="login">login</div></a>
    </div>
    <div id="content">
        <?php 
            if(isset($_COOKIE['Login']) && $_COOKIE['loign']!=''){
                header('Location: /konto');
            }else{
                header('Location: /login');
            }
        ?>
    </div>
    <div id="footer">xyz</div>
</body>
</html>