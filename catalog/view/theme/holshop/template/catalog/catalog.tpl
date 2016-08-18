<script type="text/javascript">
function Send(){
  alert ('!!');
  <?php
       $to = "ipavel@i.ua"; 
       $subject = "Test mail";
       $message = "Hello! This is a simple email message.";
       mail($to,$subject,$message);
       echo "Mail Send.";
?>
}

</script>

<?php echo $header; ?>

      <div id="content">
        <?php if ($categories) { ?>
        <?php if (count($categories) <= 5) { ?>
        <div class="row">
        <div class="col-sm-3 ">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?><img src="image/<?php echo $category['image'];?>"></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3 text-center">
          <ul>
            <?php foreach ($categories as $category) { ?>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
              <?php if ($category['image']) { ?>
                <li><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['image'];?>"></a></li>
              <?php }else{ ?>
                
              <?php } ?>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
    </div>
      <?php } ?>
     <div class='btn1'> 
      <button onclick='Send()'>Отправить почту</button>
     </div>
     
<?php echo $footer; ?>





