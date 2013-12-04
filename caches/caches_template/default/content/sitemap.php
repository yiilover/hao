<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>
<div class="w980 box1">
<div class="sitemap">
  <?php foreach($data as $r){?>
<h3><a href="<?php echo $r['url']?>"><?php echo $r['catname']?></a></h3>
<p>
  <?php foreach($r['sub_cat'] as $v){?>
<span style="width:100px"><a href="<?php echo $v['url']?>"><?php echo $v['catname']?></a></span>
    <?php }?>
</p>
    <?php }?>

</div>
</div>
<?php include template("content","footer"); ?>