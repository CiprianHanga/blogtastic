<?php
    require ("config.php");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $config_sitename; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
</head>
<body>
    <div id="wrapper">
    <div id="header">
        <h1><?php echo $config_sitename; ?></h1>
    </div> <!-- closes "header" div -->

    <div id="menu">
        <a href="<?php echo $config_basedir; ?>">Home</a>
        &bull;
        <a href="<?php echo $config_basedir; ?>about.php">About</a>
        &bull;
        <a href="<?php echo $config_basedir; ?>faq.php">Faq</a>
        &bull;
        <a href="<?php echo $config_basedir; ?>tech.php">Technical Details</a>
    </div> <!-- closes "menu" div -->
    <div id="container">
        <div id="bar">
            <?php require ("bar.php"); ?>
        </div> <!-- closes "bar" div -->
        <div id="main">

