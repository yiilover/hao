<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template('special', 'header'); ?>
<div class="main">
	<div class="crumbs"><a href="">首页</a><span> &gt; </span> <a href="<?php echo APP_PATH;?>index.php?m=special&c=index&a=special">专题</a> <span> &gt; </span> <a href="<?php echo $url;?>"><?php echo $title;?></a> </div>
    <div class="box">
        <h5><?php echo $info['name'];?></h5>
        <div class="content">
		<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"special\" data=\"op=special&tag_md5=32031ea00a717aa081ebb42cc9231879&action=content_list&specialid=%24specialid&typeid=%24typeid&listorder=3&page=%24page&num=12\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$special_tag = pc_base::load_app_class("special_tag", "special");if (method_exists($special_tag, 'content_list')) {$pagesize = 12;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$special_total = $special_tag->count(array('specialid'=>$specialid,'typeid'=>$typeid,'listorder'=>'3','limit'=>$offset.",".$pagesize,'action'=>'content_list',));$pages = pages($special_total, $page, $pagesize, $urlrule);$data = $special_tag->content_list(array('specialid'=>$specialid,'typeid'=>$typeid,'listorder'=>'3','limit'=>$offset.",".$pagesize,'action'=>'content_list',));}?>
            <ul class="list f14 lh26 row-2">
			<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                <li>·<a href="<?php echo $r['url'];?>" target="_blank"><?php echo str_cut($r['title'], 40);?></a></li>
				<?php $n++;}unset($n); ?>
            </ul>
        </div>
		<div id="pages" class="text-c"><?php echo $pages;?></div>
		<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
    </div>
</div> 
<?php include template('content', 'footer'); ?>