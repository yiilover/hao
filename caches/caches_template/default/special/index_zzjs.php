<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template('special', 'header'); ?>
<div class="zt_pos"><span class="left">当前位置：<a href="http://www.xueshuhao.com/" title="中华医护好网">首页</a> > <a href="zazhi/?id=50" title="《健康大视野》">《健康大视野》</a> > <a href="zazhi/page.php?navid=291" title="主办单位">主办单位</a></span><span class="right"><font color="red">温馨提示：请按“Ctrl+D”收藏本页</font></span></div>	
<div class="clear mt10"></div>
<?php include template('special', 'left'); ?>
<div class="zt_R_main">
<h3 class="zt_h3_1"><strong><a href="zazhi/page.php?navid=291" title="主办单位">《<?php echo $info[title]?>》主办单位</a></strong></h3>
<div class="m_intr"><p>
<table cellspacing="0" cellpadding="0" width="95%" border="0">
    <tbody>
        <tr>
            <td height="330" width="34%" align="center">
            <table class="boder" cellspacing="2" cellpadding="0" border="0">
                <tbody>
                    <tr>
                        <td><span id="Label3"><span style="font-size: 14px"><span style="font-family: 宋体"><img alt="" style="height: 239px; width: 196px" src="http://www.jkdsyzz.cn/uploadfile/2012102309395873499.jpg" /></span></span></span></td>
                    </tr>
                </tbody>
            </table>
            </td>
            <td width="66%" align="center"><span id="Label4">
            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                <tbody>
                    <tr>
                        <td height="22" colspan="2" align="left" style="font-size: 14px; color: #ff0000"><strong>名称：<?php echo $info[title]?></strong></td>
                    </tr>
                    <tr>
                        <td height="22" align="left">主管单位：<font size="3"><?php echo $info[zgdw]?></font></td>
                        <td height="22" align="left">主办单位：<font size="3"><?php echo $info[zbdw]?></font></td>
                    </tr>
                    <tr>
                        <td height="23" align="left">国内刊号：<font size="3"><?php echo $info[gnkh]?></font></td>
                        <td height="23" align="left">国际刊号：<font size="3"><?php echo $info[gjkh]?></font></td>
                    </tr>
                    <tr>
                        <td height="22" width="49%" align="left">邮发代号：<font size="3"><?php echo $info[yfdh]?></font></td>
                        <td height="22" width="51%" align="left">出版周期：<?php echo $info[cbzq]?></td>
                    </tr>
                    <tr>
                        <td height="22" align="left">语　　言：<?php echo $info[yuyan]?></td>
                        <td height="22" align="left">类　　别：<?php echo $info[leibie]?></td>
                    </tr>
                    <tr>
                        <td height="22" align="left">主　　编：<font face="Verdana"><?php echo $info[zhubian]?></font></td>
                        <td height="22" align="left">出 版 地：<?php echo $info[cbd]?></td>
                    </tr>
                    <tr>
                        <td height="22" align="left">创刊年份：<?php echo $info[cknf]?></td>
                        <td height="22" align="left">期刊级别：<?php echo $info[qkjb]?></td>
                    </tr>
                    <tr>
                        <td height="22" align="left">复合影响因子：<?php echo $info[fhyxyz]?></td>
                        <td height="22" align="left">综合影响因子：<?php echo $info[zhyxyz]?></td>
                    </tr>
                </tbody>
            </table>
            </span></td>
        </tr>
    </tbody>
</table>
</p></div>
<?php include template('special', 'tgbd'); ?>
</div>

<!--//zt_R_main-->
<div class="clear"></div>
<?php include template('special', 'footer'); ?>