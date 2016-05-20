<?php
// This file is part of the ProEthos Software.
//
// Copyright 2013, PAHO. All rights reserved. You can redistribute it and/or modify
// ProEthos under the terms of the ProEthos License as published by PAHO, which
// restricts commercial use of the Software.
//
// ProEthos is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
// PARTICULAR PURPOSE. See the ProEthos License for more details.
//
// You should have received a copy of the ProEthos License along with the ProEthos
// Software. If not, see
// https://raw.githubusercontent.com/bireme/proethos/master/LICENSE.txt

if (isset($_SESSION['name']))
	{
		$user = $_SESSION['name'];
	} else {
		$user = '';
	}
?>
<style>
	.navbar-nav-item:hover {
		background-color: #CCCCCC;
	}
</style>
<!-- Fixed navbar -->
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Proethos</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
		<li class="navbar-nav-item"><a href="#"><?php echo msg('home'); ?></a></li>
		<li class="navbar-nav-item"><a href="<?php echo base_url('index.php/main/research');?>"><?php echo msg("research_summary"); ?></a></li>
		<li class="navbar-nav-item"><a href="#"><?php echo msg("menu_faq"); ?></a></li>
		<li class="navbar-nav-item"><a href="<?php echo base_url('index.php/admin');?>"><?php echo msg("menu_admin"); ?></a></li>
      </ul>

      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $user;?><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="<?php echo base_url('index.php/main/myaccount');?>"><?php echo msg('myacount');?></a></li>
            <li role="separator" class="divider"></li>
            <li><a href="<?php echo base_url('index.php/main/logout');?>"><?php echo msg('logout');?></a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
 
<div style="margin-bottom: 10px;"></div>