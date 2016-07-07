<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class='container'><?php echo $content_top; ?>
  <div class="breadcrumb">
 <?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
    <?php if($i+1<count($breadcrumbs)) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li><?php } else { ?><li><?php echo $breadcrumb['text']; ?></li><?php } ?>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>