<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="google-site-verification" content="ibvXFPL4-1tPBrvOyTVbEMNoN1GlQvHxWNccZEad55w" />
<title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/holshop/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/holshop/stylesheet/mysite2.css" rel="stylesheet">

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script type="text/javascript" src="catalog/view/javascript/jQueryRotate.js"); ?>"></script> 
<script type="text/javascript" src="catalog/view/javascript/condition.js"); ?>"></script>   
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<nav id="top">
  <div class="container">
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="row">  
  <! Первый столбец с лого>    
  <div class="col-sm-4 col-md-4 col-lg-3"> 
   <table class='logo'> 
    <tr>
      <td><img src="image/header/logo.png" class='shadow' width='310px' height='80px' alt='Logo'></td>
    </tr>    
    <tr>
        <td class='comfort'>COMFORT</td>
    </tr>    
    <tr>
        <td>Продажа Монтаж Сервис</td>
    </tr>
   </table>   
   </div> 
  <! Второй столбец с лого2>
  <div class="col-sm-2 col-md-2 col-lg-2 sec_block">
      <img src='image/header/10let_2.png' id='10let' class='blueshdw'>
  </div>    
  <! Третий столбец с контактами>    
  <div class="col-sm-4 col-md-4 col-lg-4 thrd_block">
        <table class='contacts'> 
            <tr>  
              <td class='font1'>Наши контакты:</td>    
            </tr>
            <tr>
              <td><a href ="tel:(048) 735-61-91"> <span class="glyphicon glyphicon-phone-alt"></span>(048) 735-61-91</a></td>
            </tr>
            <tr>
              <td><a href ="tel:(067) 687-91-69"> <img src="image/header/kvst.png"> (067) 687-91-69</a></td>
            </tr>
            <tr>
              <td><a href ="tel:(050) 111-11-11"> <img src="image/header/mts.png"> (050) 111-11-11</a></td>
            </tr>
            <tr>
              <td><a href ="tel:(063) 735-61-91"> <img src="image/header/life.png"> (063) 735-61-91</a></td>
            </tr>    
        </table>    
    </div>
    
  <! Блок регистрации\корзины>    
  <div class="col-sm-2 col-md-2 col-lg-3">
    <! Код прорисовки аноним\регестр-ый юзер>  
     <?php if (!$logged) { ?>
    <div class='anonim'>
        <a href="#modal" role="button" class="btn btn-log" data-toggle="modal" >Вход/Регистрация</a>
        <div id="modal" class="modal fade" role="dialog">
            <div class="modal-dialog  modcolor">
                <div class="modal-content">
                    <div class="modal-header">
                        <button class="close" type="button" data-dismiss="modal">x</button>
                        <h3>Вход на сайт.</h3>
                    </div>
                    <div class="modal-body modcolor">
                            <div class="form-group">
                                <label for="text">Логин</label>
                                <input type="text" class="form-control" name="username" placeholder="Введите логин" required="required" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{2,20}$">
                            </div>
                            <div class="form-group">
                                <label for="pass">Пароль</label>
                                <input type="password" class="form-control" name="password" placeholder="Пароль" required="required" pattern="^[A-Za-z0-9]{6,20}$">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="stayon"> Запомнить меня</label>
                            </div>
                            <button type="submit" class="btn btn-success">Войти</button>
                            <button type="button" class="btn btn-info" onclick="location.href = 'register'">Регистрация</button>
                            <button type="button" class="btn btn-danger posright" data-dismiss='modal'>Отмена</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php } else { ?>
    <! Блок для зарегистрированого юзера>  
    <div class='regin'>
        <table class='userinfo'>
            <tr class='tbl_tr'>
                <td><a class='usrname' href='#'><span class="glyphicon glyphicon-user"></span></td>
                <td class='logout'><a href='#'>/Выйти</a></td>
            </tr>
        </table>
    </div>  
    <div class='basket'>
        <a href="#mod1" role="button" class="btn" data-toggle="modal">
            <img src='img/shp-bskt.png' width='50px' ; height='50px'> Корзина
        </a>
    </div>
     <?php } ?>
  </div>
</div>
<div class="row">   <!--Колонка меню-->
<div class="col-sm-12 col-md-12">
    <ul class="nav nav-tabs nav-menu">
      <li class="active"><a href="#">Главная</a></li>
      <li><a href="index.php?route=catalog/catalog">Каталог оборудования</a></li>
      <li><a href="#">Новости</a></li>
      <li><a href="#">Монтаж/Сервис</a></li>
      <li><a href="#">О компании/Наше портфолио</a></li>
      <li><a href="#">Контакты</a></li>
      <div class="col-sm-3 search"><?php echo $search; ?>
      </div>
     </ul>  
     
  </div>
</div>   
 
</header>



