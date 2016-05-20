<?php
//header ('Content-type: text/html; charset=ISO-8859-1');
?>
<head>
<title>:: Proethos ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="shortcut icon" type="image/x-icon" href="https://cip.pucpr.br/favicon.ico" />
<link rel="stylesheet" href="<?php echo base_url('css/jquery-ui.min.css');?>">
<link rel="stylesheet" href="<?php echo base_url('css/fonts_cicpg.css');?>">
<link rel="stylesheet" href="<?php echo base_url('css/style.css');?>">
<link rel="stylesheet" href="<?php echo base_url('css/style_form.css');?>">
<link rel="stylesheet" href="<?php echo base_url('css/style_font-awesome.css');?>">
<link rel="stylesheet" href="<?php echo base_url('css/style_table.css');?>">
<?php
		/* ESTILOS CSS 
		 */
		if (isset($css) > 0)
			{
				for ($r=0;$r < count($css);$r++)
					{
					echo '<link rel="stylesheet" href="'.base_url('css/'.$css[$r]).'">'.chr(13).chr(10);
					}
			}
?>
<script language="JavaScript" type="text/javascript" src="<?php echo base_url('js/jquery.js');?>"></script>
<script language="JavaScript" type="text/javascript" src="<?php echo base_url('js/jquery.mask.js');?>"></script>
<script language="JavaScript" type="text/javascript" src="<?php echo base_url('js/jquery-ui.min.js');?>"></script>
<script language="JavaScript" type="text/javascript" src="<?php echo base_url('js/sisdoc_form.js');?>"></script>

<?php
		/* BIBLIOTECAS JAVA SCRIPT
		 */
		if (isset($js) > 0)
			{
				for ($r=0;$r < count($js);$r++)
					{
					echo '<script language="JavaScript" type="text/javascript" src="'.base_url('js/'.$js[$r]).'"></script>'.chr(13).chr(10);
					}
			}			
?>
</head>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-70781638-1', 'auto');
  ga('send', 'pageview');

</script>
